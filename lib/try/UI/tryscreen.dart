import 'package:ai/Universals/chipsShow.dart';
import 'package:ai/posts/UI/widgets/PostCard.dart';
import 'package:ai/services/tryServices.dart';
import 'package:ai/try/UI/widgets/header.dart';
import 'package:ai/try/bloc/trycode_bloc.dart';
import 'package:ai/tryDetail/tryDetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TryScreen extends StatelessWidget {
  static final TryServices tryServices = TryServices();
  final TrycodeBloc bloc = TrycodeBloc(tryServices: tryServices)
    ..add(FetchTry());

  TryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<TrycodeBloc, TrycodeState>(
      bloc: bloc,
      listener: (context, state) {
        if (state is FailListLoading) {
          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text("No More Data")));
        }
      },
      child: BlocBuilder<TrycodeBloc, TrycodeState>(
        bloc: bloc,
        builder: (context, state) {
          if (state is TrycodeInitial || state is TryListLoading) {
            return Container(
              child: Center(child: CircularProgressIndicator()),
            );
          }
          if (state is TryListLoaded) {
            return Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: CustomScrollView(
                slivers: [
                  SliverPersistentHeader(
                    delegate: TrycodeHeader(
                        details: "Total People Try code",
                        total: state.list.length),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => TryDetailScreen(
                                tryElement: state.list[index],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          // padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: EdgeInsets.only(top: 5),
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, left: 10, right: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // margin:
                                        // EdgeInsets.only(left: 10, right: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 30,
                                              margin: EdgeInsets.only(right: 8),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "profile.jpg"),
                                                    fit: BoxFit.cover),
                                              ),
                                            ),
                                            Text(
                                              state.list[index].creator_id
                                                      .first_name +
                                                  " " +
                                                  state.list[index].creator_id
                                                      .last_name,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black),
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                          icon: Icon(Icons.bookmark_border),
                                          onPressed: () {}),
                                    ],
                                  ),
                                  Container(
                                    // margin: EdgeInsets.only(
                                    //     top: 5, left: 10, right: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                              state.list[index].what_new_short),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          child: Text(state.list[index]
                                              .what_new_found_short),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Tags(tags: state.list[index].tags),
                                  ),
                                  Container(
                                    // margin: EdgeInsets.only(top: 5),
                                    child: Row(
                                      // mainAxisAlignment: ,
                                      children: [
                                        Icon(
                                          Icons.remove_red_eye,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text("5")
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }, childCount: state.list.length),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
