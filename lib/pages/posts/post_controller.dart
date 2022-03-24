import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_dio/models/post.dart';
import 'package:getx_dio/pages/posts/post_provider.dart';

class PostController extends GetxController {
  List<Post> postsList = [];
  bool isLoading = false;
  @override
  void onInit() {
    PostProvider().getPostsList(
      //! no need here
      /* beforeSend: () {
        debugPrint('beforeSend');
      }, */
      onSuccess: (posts) {
        debugPrint('Success');
        postsList.addAll(posts);
        //! if onSuccess called and data loaded then set isLoading to true
        isLoading = true;
        //! then update the state
        update();
        debugPrint(posts.length.toString());
      },
      onError: (error) {
        //! if onError called and data loaded then set isLoading to false
        isLoading = false;
        update();
        debugPrint('Error');
      },
    );
    // TODO: implement onInit
    super.onInit();
  }
}
