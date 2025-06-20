import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const ColorChange());
}

class ColorChange extends StatelessWidget {
  const ColorChange({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ColorChangerScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ColorChangerScreen extends StatefulWidget {
  const ColorChangerScreen({super.key});

  @override
  State<ColorChangerScreen> createState() => _ColorChangerScreenState();
}

class _ColorChangerScreenState extends State<ColorChangerScreen> {
  Color _backgroundColor = Colors.white;
  int _tapCount = 0;
  Timer? _timer;

  void _handleTap() {
    _tapCount++;

    _timer?.cancel();
    _timer = Timer(const Duration(milliseconds: 300), () {
      setState(() {
        if (_tapCount == 1) {
          _backgroundColor = Colors.yellow;
        } else if (_tapCount == 2) {
          _backgroundColor = Colors.blue;
        } else if (_tapCount == 3) {
          _backgroundColor = Colors.red;
        }
      });
      _tapCount = 0;
    });
  }

  void _handleLongPress() {
    _timer?.cancel();
    setState(() {
      _backgroundColor = Colors.black;
      _tapCount = 0;
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: _handleTap,
        onLongPress: _handleLongPress,
        child: Container(
          color: _backgroundColor,
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: Text(
            '.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: _backgroundColor == Colors.black
                  ? Colors.white
                  : Colors.black,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
