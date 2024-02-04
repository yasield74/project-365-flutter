import 'package:flutter/material.dart';

class CustomListTileaWidget extends StatelessWidget {
  const CustomListTileaWidget(
      {super.key,
      required this.title,
      required this.onTab,
      required this.icon,
      required this.isSelected});

  final String title;
  final void Function() onTab;
  final IconData icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListTile(
            leading: Icon(icon),
            title: Text(title),
            onTap: onTab,
          ),
        ),
        isSelected
            ? Container(
                color: const Color.fromARGB(255, 27, 155, 176),
                width: 4,
                height: 48,
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
