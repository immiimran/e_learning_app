import 'package:flutter/material.dart';


PreferredSizeWidget customAppbar({
  required BuildContext context,
  required String tittle,
}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back_ios),
    ),
    title: Text(
      tittle,
      style: const TextStyle(fontWeight: FontWeight.w500),
    ),
    centerTitle: true,
  );
}
