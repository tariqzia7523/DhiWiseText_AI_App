import 'package:flutter/material.dart';
import 'package:tariq_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SeeAllDialog extends StatelessWidget {
  const SeeAllDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 262.h,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 28.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Delete?",
            style: TextStyle(
              color: theme.colorScheme.primary,
              fontSize: 14.fSize,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 9.v),
          SizedBox(
            width: 222.h,
            child: Text(
              "Are you sure to want to delete? You’ll not\nbe able to access this chat if you proceed",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: appTheme.whiteA700,
                fontSize: 12.fSize,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 18.v),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Cancel",
                  style: TextStyle(
                    color: appTheme.whiteA700.withOpacity(0.33),
                    fontSize: 12.fSize,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "Delete",
                    style: TextStyle(
                      color: theme.colorScheme.primary,
                      fontSize: 12.fSize,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
