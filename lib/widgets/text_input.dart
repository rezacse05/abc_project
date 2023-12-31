import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../palatte.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    super.key,
    required this.icon,
    required this.hint,
    this.inputType,
    this.inputAction,
  });

  final IconData icon;
  final String hint;
  final TextInputType? inputType;
  final TextInputAction? inputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(

        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[600]?.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 20),
                        border: InputBorder.none,
                        hintText: hint,
                        hintStyle: kBodyText,
                        prefixIcon: Icon(
                          icon,
                          color: Colors.white,
                          size: 30,
                        ),
                        filled: true,
                      ),
                      style: kBodyText,
                      keyboardType: inputType,
                      textInputAction: inputAction,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}