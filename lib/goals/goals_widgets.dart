import 'package:flutter/material.dart';

/// Summary section showing overall goals data.
class GoalsSummarySection extends StatelessWidget {
  const GoalsSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          // First row: Total Goals and Completed
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Total Goals: 3",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "2 Completed",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Second row: Progress and Remaining
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Progress: 75%",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "Remaining: \$4,500",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Section displaying active goals.
class ActiveGoalsSection extends StatelessWidget {
  const ActiveGoalsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Active Goals",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        ActiveGoalItem(
          title: "Vacation Fund",
          targetAmount: "\$5,000",
          savedAmount: "\$2,000",
          completion: "40% Complete",
          targetDate: "December 2025",
        ),
        const SizedBox(height: 8),
        ActiveGoalItem(
          title: "Emergency Fund",
          targetAmount: "\$3,000",
          savedAmount: "\$1,200",
          completion: "40% Complete",
          targetDate: "October 2025",
        ),
      ],
    );
  }
}

/// Widget for an individual active goal.
class ActiveGoalItem extends StatelessWidget {
  final String title;
  final String targetAmount;
  final String savedAmount;
  final String completion;
  final String targetDate;

  const ActiveGoalItem({
    super.key,
    required this.title,
    required this.targetAmount,
    required this.savedAmount,
    required this.completion,
    required this.targetDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title and target amount with overflow handling
          Row(
            children: [
              Expanded(
                child: Text(
                  "$title ($targetAmount)",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          // Saved amount and completion percentage
          Text(
            "Saved: $savedAmount ($completion)",
            style: const TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 4),
          // Target date information
          Text(
            "Target Date: $targetDate",
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

/// Section displaying completed goals.
class CompletedGoalsSection extends StatelessWidget {
  const CompletedGoalsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Completed Goals",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        CompletedGoalItem(
          title: "Vacation Fund",
          targetAmount: "\$5,000",
        ),
        const SizedBox(height: 8),
        CompletedGoalItem(
          title: "Emergency Fund",
          targetAmount: "\$3,000",
        ),
      ],
    );
  }
}

/// Widget for an individual completed goal.
class CompletedGoalItem extends StatelessWidget {
  final String title;
  final String targetAmount;

  const CompletedGoalItem({
    super.key,
    required this.title,
    required this.targetAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Title with overflow handling
          Expanded(
            child: Text(
              "$title: Completed",
              style: const TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            "Goal: $targetAmount",
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
