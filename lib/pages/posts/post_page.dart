import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_dio/components/loading_overlay.dart';
import 'package:getx_dio/pages/posts/components/post_list_item.dart';
import 'package:getx_dio/pages/posts/post_controller.dart';

//class PostPage extends GetView<PostController>{
class PostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Page'),
      ),
      body: Container(
        child: GetBuilder<PostController>(
          builder: (controller) {
            return LoadingOverlay(
                isLoading: controller.isLoading,
                child: ListView.builder(
                  itemCount: controller.postsList.length,
                  itemBuilder: (context, index) =>
                      PostListItem(post: controller.postsList[index]),
                ));
          },
        ),
      ),
    );
  }
}
