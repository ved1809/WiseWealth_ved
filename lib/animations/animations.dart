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
