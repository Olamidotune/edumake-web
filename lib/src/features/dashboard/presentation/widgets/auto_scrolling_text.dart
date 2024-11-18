
import 'dart:async';

import 'package:flutter/material.dart';

class AutoScrollingText extends StatefulWidget {
  const AutoScrollingText({
    required this.text,
    required this.style,
    super.key,
    this.duration = const Duration(seconds: 20),
  });

  final String text;
  final TextStyle style;
  final Duration duration;

  @override
  State<AutoScrollingText> createState() => _AutoScrollingTextState();
}

class _AutoScrollingTextState extends State<AutoScrollingText> {
  late ScrollController _scrollController;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startScrolling();
    });
  }

  void _startScrolling() {
    _timer = Timer.periodic(const Duration(milliseconds: 50), (_) {
      if (_scrollController.hasClients) {
        final  maxExtent = _scrollController.position.maxScrollExtent;
        final currentPosition = _scrollController.offset;
        if (currentPosition >= maxExtent) {
          _scrollController.jumpTo(0);
        } else {
          _scrollController.animateTo(
            currentPosition + 1.0,
            duration: const Duration(milliseconds: 50),
            curve: Curves.linear,
          );
        }
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      controller: _scrollController,
      child: Text(
        widget.text,
        style: widget.style,
      ),
    );
  }
}
