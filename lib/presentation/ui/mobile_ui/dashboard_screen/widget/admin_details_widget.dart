import 'package:flutter/material.dart';

import 'package:admin_panel/presentation/ui/mobile_ui/dashboard_screen/widget/admin_details_information_widget.dart';
import 'package:admin_panel/presentation/ui/mobile_ui/dashboard_screen/widget/admin_image_widget.dart';
import 'package:admin_panel/presentation/ui/mobile_ui/dashboard_screen/widget/edit_profile_icon_widget.dart';

class AdminDetailsWidget extends StatelessWidget {
  const AdminDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            AdminImageWidget(),
            SizedBox(width: 16),
            AdminDetailsInformationWidget(),
          ],
        ),
        const EditProfileIconWidget()
      ],
    );
  }
}
