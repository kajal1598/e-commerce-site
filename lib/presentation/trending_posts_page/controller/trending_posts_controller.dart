import '/core/app_export.dart';
import 'package:social_media_app/presentation/trending_posts_page/models/trending_posts_model.dart';

class TrendingPostsController extends GetxController {
  TrendingPostsController(this.trendingPostsModelObj);

  Rx<TrendingPostsModel> trendingPostsModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
