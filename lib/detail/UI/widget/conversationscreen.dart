import 'package:ai/answer/UI/Screens/answerscreen.dart';
import 'package:flutter/material.dart';

class ConversationScreen extends StatelessWidget {
  const ConversationScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Discussion();
  }
}

class Discussion extends StatelessWidget {
  static const List<String> question = [
    "This is sample Question",
    "I think user might ask this type of questions",
    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
  ];

  List<Widget> createList(context) {
    List<Widget> widget = [];

    widget.addAll(question
        .map(
          (e) => InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AnswerScreen()));
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
                      e,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Wrap(
                    children: [
                      CustomChips(
                        color: Colors.pink[50],
                        text: "Artificial Nural Net",
                        size: 8,
                        textcolor: Colors.black,
                      ),
                      CustomChips(
                        color: Colors.deepPurple[100],
                        text: "Nural Net",
                        size: 8,
                        textcolor: Colors.black,
                      ),
                      CustomChips(
                        color: Colors.red,
                        text: "CNN",
                        size: 8,
                        textcolor: Colors.white,
                      ),
                      CustomChips(
                        color: Colors.amber[100],
                        text: "Deep Nural Net",
                        size: 8,
                        textcolor: Colors.black,
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5, top: 3),
                    child: Text(
                      "5 day ago",
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
                                "200",
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 12),
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
          ),
        )
        .toList());

    return widget;
  }

  const Discussion({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
      child: ListView(
        children: [
          ToolBar(),
          Container(
            child: Column(
              children: createList(context),
            ),
          )
        ],
      ),
    );
  }
}

class CustomChips extends StatelessWidget {
  const CustomChips({
    @required this.text,
    @required this.size,
    @required this.color,
    @required this.textcolor,
    Key key,
  }) : super(key: key);
  final String text;
  final double size;
  final Color color;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: color,
          border: Border.all(),
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        text,
        style: TextStyle(
            fontSize: size, color: textcolor, fontWeight: FontWeight.bold),
      ),
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
                  Icons.info_outline,
                  size: 20,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "50",
                  style: TextStyle(
                      letterSpacing: 0.2, color: Colors.white70, fontSize: 16),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Unanswered",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.done_outline,
                  size: 20,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "250",
                  style: TextStyle(
                      letterSpacing: 0.2, color: Colors.white70, fontSize: 16),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Answered",
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
