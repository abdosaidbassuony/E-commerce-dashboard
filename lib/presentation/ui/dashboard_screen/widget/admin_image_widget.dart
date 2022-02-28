import 'package:flutter/material.dart';

class AdminImageWidget extends StatelessWidget {
  const AdminImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Container(
          width: 60,
          height: 60,
          decoration:  BoxDecoration(color: Colors.grey[200]),
        ));
  }
}
