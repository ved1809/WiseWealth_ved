import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

/// Fade-in animation for widgets.
Widget fadeIn({required Widget child, Duration duration = const Duration(milliseconds: 800)}) {
  return child.animate().fadeIn(duration: duration);
}

/// Slide-in animation from the bottom.
Widget slideInFromBottom({required Widget child, Duration duration = const Duration(milliseconds: 800)}) {
  return child.animate().slide(begin: const Offset(0, 1), duration: duration);
}

/// Scale-in animation for elements (used for logos, buttons, etc.).
Widget scaleIn({required Widget child, Duration duration = const Duration(milliseconds: 700)}) {
  return child.animate().scale(duration: duration);
}

/// Rotate-in animation for a subtle entrance effect.
Widget rotateIn({required Widget child, Duration duration = const Duration(milliseconds: 800)}) {
  return child.animate().rotate(begin: -0.5, end: 0, duration: duration);
}

/// Fade-in with upward slide animation.
Widget fadeInUp({required Widget child, Duration duration = const Duration(milliseconds: 800)}) {
  return child.animate().fadeIn(duration: duration).slide(begin: const Offset(0, 0.2), end: Offset.zero, duration: duration);
}

/// Slide-in animation from the left.
Widget slideInFromLeft({required Widget child, Duration duration = const Duration(milliseconds: 800)}) {
  return child.animate().slide(begin: const Offset(-1, 0), end: Offset.zero, duration: duration);
}
