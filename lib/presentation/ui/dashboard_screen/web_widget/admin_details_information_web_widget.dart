import 'package:flutter/material.dart';

class AdminDetailsInformationWebWidget extends StatelessWidget {
  const AdminDetailsInformationWebWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          "Shop Name",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 8,
        ),
        Text("11K followers",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ))
      ],
    );
  }
}
