import 'package:flutter/material.dart';

/// Criado de forma manual pois o IconButton tem uma margem invisivel.
class InfoButtonAction extends StatelessWidget {
  final IconData icon;
  final Function() onTap;

  const InfoButtonAction({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      child: Padding(
        padding: const EdgeInsets.all(2.5),
        child: Icon(icon),
      ),
      onTap: () => onTap(),
    );
  }
}
