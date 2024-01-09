import '../see_all_two_screen/widgets/chatlistcomponent_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:tariq_s_application1/core/app_export.dart';
import 'package:tariq_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:tariq_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:tariq_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:tariq_s_application1/widgets/app_bar/custom_app_bar.dart';

class SeeAllTwoScreen extends StatelessWidget {
  const SeeAllTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(
            left: 22.h,
            top: 22.v,
            right: 22.h,
          ),
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 14.v,
              );
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return ChatlistcomponentItemWidget();
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 37.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 22.h,
          top: 19.v,
          bottom: 21.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "History",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgThumbsUpPrimary,
          margin: EdgeInsets.fromLTRB(23.h, 16.v, 23.h, 19.v),
        ),
      ],
    );
  }
}
