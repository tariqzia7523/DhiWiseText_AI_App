import '../premium_screen/widgets/premiumscreen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:tariq_s_application1/core/app_export.dart';
import 'package:tariq_s_application1/widgets/custom_checkbox_button.dart';
import 'package:tariq_s_application1/widgets/custom_elevated_button.dart';

class PremiumScreen extends StatelessWidget {
  PremiumScreen({Key? key})
      : super(
          key: key,
        );

  bool vipExclusiveChannel = false;

  bool unlimitedMessages = false;

  bool unlimitedVoiceChat = false;

  bool exportChatHistory = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 58.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "Chat AI: AI Chatbot",
                        style: TextStyle(
                          color: appTheme.whiteA700,
                          fontSize: 18.fSize,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 55.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 423.v,
                          width: 353.h,
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.img512x512bbRemovebgPreview,
                                height: 268.v,
                                width: 229.h,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(top: 1.v),
                              ),
                              _buildPremiumScreen(context),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  margin: EdgeInsets.only(left: 250.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 19.h,
                                    vertical: 26.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlinePrimary.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder20,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Yearly",
                                        style: TextStyle(
                                          color: theme.colorScheme.primary,
                                          fontSize: 16.fSize,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(height: 11.v),
                                      Text(
                                        "Rs.7000.00",
                                        style: TextStyle(
                                          color: appTheme.whiteA700,
                                          fontSize: 12.fSize,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 201.h,
                                    top: 92.v,
                                    right: 9.h,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildVipExclusiveChannel(context),
                                      SizedBox(height: 11.v),
                                      _buildUnlimitedMessages(context),
                                      SizedBox(height: 8.v),
                                      _buildUnlimitedVoiceChat(context),
                                      SizedBox(height: 11.v),
                                      _buildExportChatHistory(context),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 13.v),
                      Container(
                        width: 329.h,
                        margin: EdgeInsets.only(
                          left: 22.h,
                          right: 24.h,
                        ),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor inci\ndidunt ut labore et dolore magna aliqua. Ut enim ad minim venia quis nostrud exerc\nitation.",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: appTheme.blue50,
                            fontSize: 9.fSize,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      SizedBox(height: 64.v),
                      CustomElevatedButton(
                        text: "Continue",
                        margin: EdgeInsets.only(
                          left: 22.h,
                          right: 21.h,
                        ),
                        rightIcon: Container(
                          margin: EdgeInsets.only(left: 9.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgForward,
                            height: 12.v,
                            width: 16.h,
                          ),
                        ),
                        buttonStyle: CustomButtonStyles.fillPrimary,
                      ),
                      SizedBox(height: 103.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 51.h,
                            right: 174.h,
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
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPremiumScreen(BuildContext context) {
    return StaggeredGridView.countBuilder(
      shrinkWrap: true,
      primary: false,
      crossAxisCount: 2,
      crossAxisSpacing: 167.h,
      mainAxisSpacing: 167.h,
      staggeredTileBuilder: (index) {
        return StaggeredTile.fit(2);
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        return PremiumscreenItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildVipExclusiveChannel(BuildContext context) {
    return CustomCheckboxButton(
      text: "VIP Exclusive Channel",
      value: vipExclusiveChannel,
      textStyle: TextStyle(
        color: appTheme.blue50,
        fontSize: 12.fSize,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.w600,
      ),
      onChange: (value) {
        vipExclusiveChannel = value;
      },
    );
  }

  /// Section Widget
  Widget _buildUnlimitedMessages(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 11.h),
      child: CustomCheckboxButton(
        text: "Unlimited Messages",
        value: unlimitedMessages,
        textStyle: TextStyle(
          color: appTheme.blue50,
          fontSize: 12.fSize,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w600,
        ),
        onChange: (value) {
          unlimitedMessages = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUnlimitedVoiceChat(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: CustomCheckboxButton(
        text: "Unlimited Voice Chat",
        value: unlimitedVoiceChat,
        textStyle: TextStyle(
          color: appTheme.blue50,
          fontSize: 12.fSize,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w600,
        ),
        onChange: (value) {
          unlimitedVoiceChat = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildExportChatHistory(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 11.h),
      child: CustomCheckboxButton(
        text: "Export Chat History",
        value: exportChatHistory,
        textStyle: TextStyle(
          color: appTheme.blue50,
          fontSize: 12.fSize,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w600,
        ),
        onChange: (value) {
          exportChatHistory = value;
        },
      ),
    );
  }
}
