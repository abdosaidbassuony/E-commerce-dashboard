import 'package:flutter/material.dart';

class StatusCardWebWidget extends StatelessWidget {
  final String? statusTitle;
  final String? statusValue;
  final double? titleTextSize;
  final double? valueTextSize;
  final double? height;
  final double? width;
  final bool? isIcon;
  final Function? onTap;

  const StatusCardWebWidget(
      {Key? key,
      this.statusTitle,
      this.statusValue,
      this.titleTextSize = 24,
      this.valueTextSize = 16,
      this.onTap,
      this.isIcon = false,
      this.height,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap!(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        height: height,
        width: width,
        child: Card(
          elevation: 20,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  statusTitle!,
                  style: TextStyle(
                      fontSize: titleTextSize!, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Spacer(),
                isIcon!
                    ? const Icon(
                        Icons.arrow_forward_outlined,
                        size: 24,
                      )
                    : Text(
                        statusValue!,
                        style: TextStyle(
                            fontSize: valueTextSize!,
                            fontWeight: FontWeight.normal),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
