import 'package:get/get.dart';
import 'listellipsefifteen1_item_model.dart';
import 'listellipsetwentytwo_one_item_model.dart';

class MessagesModel {
  RxList<Listellipsefifteen1ItemModel> listellipsefifteen1ItemList =
      RxList.filled(6, Listellipsefifteen1ItemModel());

  RxList<ListellipsetwentytwoOneItemModel> listellipsetwentytwoOneItemList =
      RxList.filled(5, ListellipsetwentytwoOneItemModel());
}
