import 'package:flutter/material.dart';

class AnswerScreen extends StatelessWidget {
  const AnswerScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 25, left: 20, right: 20),
        child: Container(
          child: ListView(
            children: [
              QuestionBar(),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.amberAccent,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class QuestionBar extends StatelessWidget {
  const QuestionBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            "5 day ago",
            style: TextStyle(color: Colors.white60, fontSize: 12),
          ),
        )
      ],
    );
  }
}
