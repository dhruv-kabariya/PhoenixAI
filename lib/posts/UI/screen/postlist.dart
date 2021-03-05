import 'package:ai/posts/UI/widgets/PostCard.dart';
import 'package:ai/posts/bloc/post_bloc.dart';
import 'package:ai/services/postServices.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostList extends StatelessWidget {
  const PostList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PostServices postServices = PostServices();
    PostBloc bloc = PostBloc(postServices: postServices)..add(GetPost());

    double boxHeight = MediaQuery.of(context).size.height / 100;
    double boxWidth = MediaQuery.of(context).size.width / 100;
    return
        // BlocListener<PostBloc, PostState>(
        //   listener: (context, state) {
        //     if (state is FailMorePostLoading) {
        //       final snackbar = SnackBar(
        //         content: Text("No More Post"),
        //       );

        //       // Scaffold.of(context).showSnackBar(snackbar);
        //     }
        //   },
        //   bloc: bloc,
        //   child:
        BlocBuilder<PostBloc, PostState>(
      cubit: bloc,
      builder: (context, state) {
        if (state is PostLoading || state is PostInitial) {
          return Container(
              alignment: Alignment.center, child: CircularProgressIndicator());
        } else if (state is PostLoaded) {
          return CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return PostCard(
                    boxHeight: boxHeight,
                    post: state.postList[index],
                  );
                }, childCount: state.postList.length),
              ),
            ],
          );
        }
      },
      // ),
    );
  }
}

// ListView.builder(
//   itemCount: 3,
//   itemBuilder: (BuildContext context, int index) {
//     return PostCard(boxHeight: boxHeight);
//   },
// );
