import 'package:flutter/material.dart';

import '../../../models/post.dart';

class PostListItem extends StatelessWidget {
  final Post post;
  const PostListItem({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          /* ClipOval(
            child: Image.network(
              'https://picsum.photos/50/50?random=${post.id}',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ), */
          Text(post.title ?? 'No title'),
        ],
      ),
    );
  }
}
