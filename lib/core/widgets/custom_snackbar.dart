import 'package:flutter/material.dart';
import 'package:target/core/constants/keys_constants.dart';

class CustomSnackbars {
  CustomSnackbars._();

  static SnackBar success({required String message}) {
    KeysConstants.scaffolMainKey.currentState?.clearSnackBars();

    return SnackBar(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            message,
            style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const Icon(Icons.check_circle, color: Colors.white),
        ],
      ),
      backgroundColor: Colors.green,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    );
  }

  static SnackBar error({required String message}) {
    KeysConstants.scaffolMainKey.currentState?.clearSnackBars();

    return SnackBar(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              message,
              style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          const Icon(Icons.error_outline, color: Colors.white),
        ],
      ),
      backgroundColor: Colors.redAccent,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    );
  }
}
