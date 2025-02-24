import 'package:flutter/material.dart';

/// Fade transition (e.g., Login → Home)
PageRouteBuilder fadeTransition(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
    transitionDuration: const Duration(milliseconds: 500),
  );
}

/// Slide transition (e.g., Login ↔ Signup)
PageRouteBuilder slideTransition(Widget page, {bool fromRight = true}) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final begin = fromRight ? const Offset(1.0, 0.0) : const Offset(-1.0, 0.0);
      final end = Offset.zero;
      final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: Curves.easeInOut));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
    transitionDuration: const Duration(milliseconds: 500),
  );
}

/// Slide-up transition for screen navigation.
PageRouteBuilder slideUpTransition(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: Curves.easeInOut));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
    transitionDuration: const Duration(milliseconds: 500),
  );
}

/// Slide-down transition for screen navigation.
PageRouteBuilder slideDownTransition(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, -1.0); // Start from the top
      const end = Offset.zero;
      final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: Curves.easeInOut));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
    transitionDuration: const Duration(milliseconds: 500),
  );
}


/// **New:** Slide transition for tab switching (Left/Right based on position)
PageRouteBuilder slideTabTransition(Widget page, {bool fromRight = true}) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final begin = fromRight ? const Offset(1.0, 0.0) : const Offset(-1.0, 0.0);
      final end = Offset.zero;
      final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: Curves.easeInOut));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
    transitionDuration: const Duration(milliseconds: 400), // Slightly faster for smooth UX
  );
}
