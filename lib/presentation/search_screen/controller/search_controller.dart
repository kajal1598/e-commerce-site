import '/core/app_export.dart';
import 'package:social_media_app/presentation/search_screen/models/search_model.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app/data/models/character/get_character_resp.dart';
import 'package:social_media_app/data/apiClient/api_client.dart';
import '../models/search_item_model.dart';

class SearchController extends GetxController {
  TextEditingController group9116Controller = TextEditingController();

  Rx<SearchModel> searchModelObj = SearchModel().obs;

  GetCharacterResp getCharacterResp = GetCharacterResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetchCharacter(
      successCall: _onFetchCharacterSuccess,
      errCall: _onFetchCharacterError,
    );
  }

  @override
  void onClose() {
    super.onClose();
    group9116Controller.dispose();
  }

  void callFetchCharacter(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchCharacter(onSuccess: (resp) {
      onFetchCharacterSuccess(resp);
      if (successCall != null) {
        successCall();
      }
    }, onError: (err) {
      onFetchCharacterError(err);
      if (errCall != null) {
        errCall();
      }
    });
  }

  void onFetchCharacterSuccess(var response) {
    getCharacterResp = GetCharacterResp.fromJson(response);
  }

  void onFetchCharacterError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  void _onFetchCharacterSuccess() {
    List<SearchItemModel> searchItemModelList = [];
    if (getCharacterResp!.results! != null &&
        getCharacterResp!.results!.isNotEmpty) {
      for (var element in getCharacterResp!.results!) {
        var searchItemModel = SearchItemModel();
        searchItemModel.kevinAllsrubTxt.value = element.name!.toString();
        searchItemModel.ellipseFiveImg.value = element.image!.toString();
        searchItemModelList.add(searchItemModel);
      }
    }
    searchModelObj.value.searchItemList.value = searchItemModelList;
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Alert ",
        middleText: "SuccessFully fetched data");
  }

  void _onFetchCharacterError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(), title: "Alert", middleText: "failed");
  }
}
