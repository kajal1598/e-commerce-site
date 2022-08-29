import 'package:get/get.dart';
import 'listellipsefifteen_item_model.dart';
import 'listnineteen_item_model.dart';

class StoriesModel {
  RxList<ListellipsefifteenItemModel> listellipsefifteenItemList =
      RxList.filled(5, ListellipsefifteenItemModel());

  RxList<ListnineteenItemModel> listnineteenItemList =
      RxList.filled(3, ListnineteenItemModel());
}
