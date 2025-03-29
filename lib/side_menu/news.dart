import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<dynamic> newsList = [];

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  Future<void> fetchNews() async {
    final response = await http.get(Uri.parse('https://flask-newsapi-render.onrender.com/'));

    if (response.statusCode == 200) {
      List<dynamic> allNews = json.decode(response.body);

      // Filter articles: urlToImage should not be null or empty, and image must be valid
      List<dynamic> filteredNews = [];
      for (var news in allNews) {
        if (news['urlToImage'] != null && news['urlToImage'].isNotEmpty) {
          bool isValid = await isValidImage(news['urlToImage']);
          if (isValid) {
            filteredNews.add(news);
          }
        }
      }

      setState(() {
        newsList = filteredNews;
      });
    } else {
      print("Error fetching news: ${response.statusCode}");
    }
  }

  // Function to check if an image URL is valid by making a HEAD request
  Future<bool> isValidImage(String url) async {
    try {
      final response = await http.head(Uri.parse(url));
      return response.statusCode == 200 && response.headers['content-type']?.startsWith('image') == true;
    } catch (e) {
      print("Invalid image: $url");
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Latest News")),
      body: newsList.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          final news = newsList[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.network(
                news['urlToImage'],
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              title: Text(news['title'] ?? "No Title", style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(news['description'] ?? "No Description"),
              onTap: () async {
                final url = news['url'];
                if (url != null && await canLaunch(url)) {
                  await launch(url);
                } else {
                  print("Could not open $url");
                }
              },
            ),
          );
        },
      ),
    );
  }
}
