import '../topics_screen_page/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:tariq_s_application1/core/app_export.dart';
import 'package:tariq_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:tariq_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:tariq_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class TopicsScreenPage extends StatelessWidget {
  const TopicsScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 27.v),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 22.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildUserProfile(context),
                  SizedBox(height: 88.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 29.h,
                      right: 152.h,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVectorGray90001,
                          height: 1.v,
                          width: 2.h,
                          margin: EdgeInsets.only(
                            top: 10.v,
                            bottom: 13.v,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgVector,
                          height: 1.v,
                          width: 2.h,
                          margin: EdgeInsets.only(
                            left: 11.h,
                            top: 10.v,
                            bottom: 13.v,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgTelevision,
                          height: 25.v,
                          width: 67.h,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "Topics",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSettingsOnprimarycontainer,
          margin: EdgeInsets.fromLTRB(22.h, 16.v, 22.h, 19.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 16.v,
        );
      },
      itemCount: 5,
      itemBuilder: (context, index) {
        return UserprofileItemWidget();
      },
    );
  }
}
