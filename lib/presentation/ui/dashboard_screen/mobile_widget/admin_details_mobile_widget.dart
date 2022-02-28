import 'package:admin_panel/presentation/ui/dashboard_screen/widget/admin_image_widget.dart';
import 'package:admin_panel/presentation/ui/dashboard_screen/widget/edit_profile_icon_widget.dart';
import 'package:flutter/material.dart';

import 'admin_details_information_mobile_widget.dart';

class AdminDetailsMobileWidget extends StatelessWidget {
  const AdminDetailsMobileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            AdminImageWidget(),
            SizedBox(width: 16),
            AdminDetailsInformationMobileWidget(),
          ],
        ),
        const EditProfileIconWidget()
      ],
    );
  }
}
