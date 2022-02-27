import 'package:flutter/material.dart';

class EditProfileIconWidget extends StatelessWidget {
  const EditProfileIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(color: Colors.grey[100]),
          child: const Icon(
            Icons.edit,
            color: Colors.grey,
          )),
    );
  }
}
