import '../controller/account_details_one_controller.dart';
import '../models/listellipsefifteen3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app/core/app_export.dart';

// ignore: must_be_immutable
class Listellipsefifteen3ItemWidget extends StatelessWidget {
  Listellipsefifteen3ItemWidget(this.listellipsefifteen3ItemModelObj);

  Listellipsefifteen3ItemModel listellipsefifteen3ItemModelObj;

  var controller = Get.find<AccountDetailsOneController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          height: getSize(
            64.00,
          ),
          width: getSize(
            64.00,
          ),
          margin: getMargin(),
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: ColorConstant.deepPurpleA200,
                width: getHorizontalSize(
                  2.00,
                ),
              ),
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  32.00,
                ),
              ),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 6,
                      top: 5,
                      right: 6,
                      bottom: 5,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          27.00,
                        ),
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgEllipse15,
                        height: getVerticalSize(
                          54.00,
                        ),
                        width: getHorizontalSize(
                          52.00,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
