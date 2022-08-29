import 'package:get/get.dart';
import 'listthree_item_model.dart';
import 'listellipsefifteen2_item_model.dart';

class AccountDetailsModel {
  RxList<ListthreeItemModel> listthreeItemList =
      RxList.filled(3, ListthreeItemModel());

  RxList<Listellipsefifteen2ItemModel> listellipsefifteen2ItemList =
      RxList.filled(5, Listellipsefifteen2ItemModel());
}
