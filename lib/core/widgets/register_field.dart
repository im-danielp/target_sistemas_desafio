import 'package:flutter/material.dart';

class RegisterField extends StatefulWidget {
  final String label;
  final IconData icon;
  final bool isObscure;
  final TextEditingController controller;
  final TextCapitalization textCapitalization;
  final String? Function(String?)? valiador;

  const RegisterField({
    super.key,
    required this.label,
    required this.icon,
    required this.isObscure,
    required this.controller,
    this.textCapitalization = TextCapitalization.none,
    this.valiador,
  });

  @override
  State<RegisterField> createState() => _RegisterFieldState();
}

class _RegisterFieldState extends State<RegisterField> {
  late bool isHidding;

  @override
  void initState() {
    super.initState();
    isHidding = widget.isObscure;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 5,
      children: [
        Row(
          spacing: 8,
          children: [
            Icon(widget.icon, size: 22),
            Text(widget.label),
          ],
        ),
        TextFormField(
          controller: widget.controller,
          textCapitalization: widget.textCapitalization,
          obscureText: widget.isObscure && isHidding,
          validator: widget.valiador,
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
