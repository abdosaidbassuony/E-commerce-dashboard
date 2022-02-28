import 'package:admin_panel/presentation/ui/dashboard_screen/widget/admin_image_widget.dart';
import 'package:admin_panel/presentation/ui/dashboard_screen/widget/edit_profile_icon_widget.dart';
import 'package:flutter/material.dart';

import 'admin_details_information_web_widget.dart';

class AdminDetailsWebWidget extends StatelessWidget {
  const AdminDetailsWebWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: const [
            AdminImageWidget(),
            SizedBox(width: 16),
            AdminDetailsInformationWebWidget(),
          ],
        ),
        const SizedBox(width: 100),
        const EditProfileIconWidget()
      ],
    );
  }
}
