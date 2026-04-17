import 'package:flutter/material.dart';

class LoginField extends StatefulWidget {
  final String label;
  final IconData icon;
  final bool isObscure;
  final TextEditingController controller;

  const LoginField({
    super.key,
    required this.label,
    required this.icon,
    required this.isObscure,
    required this.controller,
  });

  @override
  State<LoginField> createState() => _LoginFieldState();
}

class _LoginFieldState extends State<LoginField> {
  late bool isHidding;

  @override
  void initState() {
    super.initState();
    isHidding = widget.isObscure;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        Row(
          spacing: 8,
          children: [
            Icon(
              widget.icon,
              size: 22,
            ),
            Text(widget.label),
          ],
        ),
        TextField(
          controller: widget.controller,
          obscureText: widget.isObscure && isHidding,
          decoration: InputDecoration(
            suffixIcon: Visibility(
              visible: isHidding,
              replacement: Visibility(
                visible: widget.isObscure && !isHidding,
                child: IconButton(
                  onPressed: () => setState(() => isHidding = !isHidding),
                  icon: Icon(Icons.visibility_off_outlined),
                ),
              ),
              child: IconButton(
                onPressed: () => setState(() => isHidding = !isHidding),
                icon: Icon(Icons.visibility_outlined),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
