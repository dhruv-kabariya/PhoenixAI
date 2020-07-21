import 'package:ai/Universals/customchips.dart';
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
  List<Widget> _chips(List<String> tags) {
    return tags.map((e) {
      return CustomChip(
          text: e, backColor: Colors.purple[100], textColors: Colors.purple);
    }).toList();
  }

  List<Widget> createList(context, List<Question> list) {
    return list.map((question) {
      return InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AnswerScreen()));
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
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Wrap(
                children: _chips(question.tags),
              ),
              Container(
                margin: EdgeInsets.only(left: 5, top: 3),
                child: Text(
                  (DateTime.now().difference(question.time).inDays).toString() +
                      " day ago",
                  style: TextStyle(color: Colors.white70, fontSize: 10),
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
                            style:
                                TextStyle(color: Colors.white70, fontSize: 12),
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
      bloc: bloc,
      builder: (context, state) {
        if (state is QuestionLoading || state is QuestionInitial) {
          return Container(
            child: CircularProgressIndicator(),
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

class ToolBar extends StatelessWidget {
  const ToolBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[800],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  Icons.question_answer,
                  size: 20,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "200",
                  style: TextStyle(
                      letterSpacing: 0.2, color: Colors.white70, fontSize: 16),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Questions",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                FilterButton(
                  icon: Icons.arrow_drop_down,
                  title: "Tag",
                  onpressed: () {},
                ),
                FilterButton(
                  icon: Icons.arrow_drop_down,
                  title: "User",
                  onpressed: () {},
                ),
                FilterButton(
                  icon: Icons.arrow_drop_down,
                  title: "Sort",
                  onpressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  const FilterButton({
    @required this.onpressed,
    @required this.icon,
    @required this.title,
    Key key,
  }) : super(key: key);
  final Function onpressed;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onpressed,
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.white70),
          ),
          Icon(
            icon,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
