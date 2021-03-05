import 'package:ai/AppBar/UI/webappbar.dart';
import 'package:ai/Universals/chipsShow.dart';
import 'package:ai/answer/bloc/answer_bloc.dart';
import 'package:ai/models/question.dart';
import 'package:ai/services/AnswerService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnswerScreen extends StatefulWidget {
  final Question question;

  AnswerScreen({@required this.question, key}) : super(key: key);

  @override
  _AnswerScreenState createState() => _AnswerScreenState();
}

class _AnswerScreenState extends State<AnswerScreen> {
  ScrollController scrollController;
  AnswerBloc bloc;
  AnswerService answerService;

  @override
  void initState() {
    scrollController = ScrollController()..addListener(_onscrollDown);
    super.initState();
    answerService = AnswerService();
    bloc = AnswerBloc(answerService: answerService)..add(GetAnswer());
  }

  void _onscrollDown() {
    final maxScroll = scrollController.position.maxScrollExtent;
    final currentScroll = scrollController.position.pixels;
    if (maxScroll - currentScroll <= 100) {
      bloc.add(GetAnswer());
    }
  }

  @override
  Widget build(BuildContext context) {
    double boxHeight = MediaQuery.of(context).size.height / 100;
    double boxWidth = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: WebAppBar(size: Size(MediaQuery.of(context).size.width, 60)),
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
              decoration: BoxDecoration(
                  border: BorderDirectional(
                      bottom: BorderSide(color: Colors.white))),
              alignment: Alignment.centerLeft,
              padding:
                  EdgeInsets.only(left: 10, top: 10, bottom: 10, right: 10),
              // color: Color(0xff121212),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 13,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            widget.question.question,
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ),
                        Container(
                          child: Text(
                            DateTime.now()
                                .difference(widget.question.time)
                                .inDays
                                .toString(),
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ),
                        Container(
                          child: Tags(tags: widget.question.tags),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xfffc3741),
                      ),
                      child: Text(
                        "New Question",
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          BlocListener<AnswerBloc, AnswerState>(
            cubit: bloc,
            listener: (context, state) {
              if (state is FailAnswerLoading) {
                Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text("No Data")));
              }
            },
            child: BlocBuilder<AnswerBloc, AnswerState>(
              cubit: bloc,
              builder: (context, state) {
                if (state is AnswerLoading || state is AnswerInitial) {
                  return SliverFillRemaining(
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
                if (state is AnswerLoaded) {
                  return Container(
                    child: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          if (index >= state.answer.length) {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          return Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: boxWidth * 2,
                                  width: boxWidth * 2,
                                  margin: EdgeInsets.only(left: 10, right: 10),
                                  decoration: BoxDecoration(
                                    // shape: BoxShape.circle,
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage("assets/profile.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                ClipPath(
                                  clipper: TalkShapeContainer(),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    width: boxWidth * 95,
                                    // padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                topLeft: Radius.circular(10)),
                                            color: Colors.grey,
                                          ),
                                          constraints: BoxConstraints.expand(
                                              width: boxWidth * 95,
                                              height: boxHeight * 5),
                                          padding: EdgeInsets.only(
                                              left: 15,
                                              top: 5,
                                              bottom: 5,
                                              right: 5),
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            state.answer[index].creators_id
                                                .first_name,
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10)),
                                          ),
                                          padding: EdgeInsets.only(
                                              left: 15,
                                              top: 5,
                                              bottom: 5,
                                              right: 5),
                                          child: Text(
                                            state.answer[index].answer,

                                            overflow: TextOverflow.clip,
                                            // maxLines: 5,
                                            softWrap: true,
                                            // style: TextStyle(color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        childCount: state.answer.length,
                      ),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // scrollController.dispose();

    super.dispose();
  }
}

class TalkShapeContainer extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(10, 0);
    path.lineTo(10, 10);
    path.lineTo(0, 15);
    path.lineTo(10, 20);
    path.lineTo(10, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
