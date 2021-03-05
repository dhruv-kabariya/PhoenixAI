import 'package:ai/Universals/chipsShow.dart';
import 'package:ai/Universals/customchips.dart';
import 'package:ai/Universals/tabscreenToolBar.dart';
import 'package:ai/answer/UI/Screens/answerscreen.dart';
import 'package:ai/detail/UI/question/bloc/question_bloc.dart';
import 'package:ai/models/question.dart';
import 'package:ai/services/QuestionService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuestionList();
  }
}

class QuestionList extends StatelessWidget {
  List<Widget> createList(context, List<Question> list) {
    return list.map((question) {
      return InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => AnswerScreen(
                    question: question,
                  )));
        },
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.grey[600],
            style: BorderStyle.solid,
          )),
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  question.question,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Tags(tags: question.tags),
              Container(
                margin: EdgeInsets.only(left: 5, top: 3),
                child: Text(
                  (DateTime.now().difference(question.time).inDays).toString() +
                      " day ago",
                  style: TextStyle(color: Colors.grey[400], fontSize: 10),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                padding: EdgeInsets.all(3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.question_answer,
                            color: Colors.blue[800],
                            size: 18,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            question.no_of_answer.toString(),
                            style: TextStyle(
                                color: Colors.grey[400], fontSize: 10),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }).toList();
  }

  const QuestionList({
    Key key,
  }) : super(key: key);

  static final QuestionService questionService = QuestionService();

  static final QuestionBloc bloc =
      QuestionBloc(questionService: questionService)..add(GetQuestions());

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionBloc, QuestionState>(
      cubit: bloc,
      builder: (context, state) {
        if (state is QuestionLoading || state is QuestionInitial) {
          return Container(
            child: Center(child: CircularProgressIndicator()),
          );
        } else if (state is QuestionLoaded) {
          return Container(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
            child: ListView(
              children: [
                ToolBar(),
                Container(
                  child: Column(
                    children: createList(context, state.list),
                  ),
                )
              ],
            ),
          );
        }
      },
    );
  }
}
