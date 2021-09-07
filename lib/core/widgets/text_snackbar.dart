import 'package:flutter/material.dart';

class TextSnackbar extends SnackBar {
  TextSnackbar(String message, {Key? key})
      : super(content: Text(message), key: key);
}
