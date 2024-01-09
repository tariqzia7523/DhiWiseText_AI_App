import '../home_screen_one_page/widgets/chatcomponent_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:tariq_s_application1/core/app_export.dart';
import 'package:tariq_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:tariq_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:tariq_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:tariq_s_application1/widgets/custom_floating_button.dart';

// ignore_for_file: must_be_immutable
class HomeScreenOnePage extends StatelessWidget {
  const HomeScreenOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 40.v),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSettings,
                height: 74.adaptSize,
                width: 74.adaptSize,
              ),
              SizedBox(height: 16.v),
              SizedBox(
                width: 140.h,
                child: Text(
                  "Hello Rameen!\nWhat’s on your mind?",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: appTheme.whiteA700,
                    fontSize: 14.fSize,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 25.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 22.h,
                  vertical: 34.v,
                ),
                decoration: AppDecoration.outlineWhiteA.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder37,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildHistory(context),
                    SizedBox(height: 27.v),
                    _buildChatComponent(context),
                    SizedBox(height: 53.v),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "Chat AI: AI Chatbot",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSettingsOnprimarycontainer,
          margin: EdgeInsets.fromLTRB(22.h, 18.v, 22.h, 17.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHistory(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "History",
          style: TextStyle(
            color: appTheme.whiteA700,
            fontSize: 16.fSize,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w600,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 2.v),
          child: Text(
            "See All",
            style: TextStyle(
              color: theme.colorScheme.primary,
              fontSize: 12.fSize,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildChatComponent(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 12.v,
        );
      },
      itemCount: 2,
      itemBuilder: (context, index) {
        return ChatcomponentItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 48,
      width: 48,
      backgroundColor: theme.colorScheme.secondaryContainer,
      child: CustomImageView(
        imagePath: ImageConstant.imgMegaphone,
        height: 24.0.v,
        width: 24.0.h,
      ),
    );
  }
}
