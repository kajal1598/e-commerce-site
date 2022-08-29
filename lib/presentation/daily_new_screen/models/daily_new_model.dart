import 'package:get/get.dart';
import 'listnineteen1_item_model.dart';
import 'listone_item_model.dart';

class DailyNewModel {
  RxList<Listnineteen1ItemModel> listnineteen1ItemList =
      RxList.filled(2, Listnineteen1ItemModel());

  RxList<ListoneItemModel> listoneItemList =
      RxList.filled(2, ListoneItemModel());
}
