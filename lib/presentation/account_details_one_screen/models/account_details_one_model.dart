import 'package:get/get.dart';
import 'listsix_item_model.dart';
import 'listellipsefifteen3_item_model.dart';

class AccountDetailsOneModel {
  RxList<ListsixItemModel> listsixItemList =
      RxList.filled(3, ListsixItemModel());

  RxList<Listellipsefifteen3ItemModel> listellipsefifteen3ItemList =
      RxList.filled(5, Listellipsefifteen3ItemModel());
}
