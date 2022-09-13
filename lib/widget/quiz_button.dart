// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class QuizButton extends StatelessWidget {
  const QuizButton({
    Key? key,
    required Null Function(dynamic maani) baskanda,
    required this.tuuraButtonbu,
    required this.baskanda,
  }) : super(key: key);
  final bool tuuraButtonbu;
  final void Function(bool) baskanda;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        onPressed: () => baskanda(tuuraButtonbu),
        style: ElevatedButton.styleFrom(
          primary:
              tuuraButtonbu ? const Color(0xff4CAF52) : const Color(0xffF54335),
        ),
        child: Text(
          tuuraButtonbu ? 'Туура' : 'Туура эмес',
          style: const TextStyle(fontSize: 26),
        ),
      ),
    );
  }
}
