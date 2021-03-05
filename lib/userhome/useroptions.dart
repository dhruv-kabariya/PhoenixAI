import 'package:flutter/material.dart';

class UserOptions extends StatelessWidget {
  const UserOptions({
    Key key,
  }) : super(key: key);

  static const List<String> titles = [
    "GAN",
    "GAN With parametes",
    "Tensorflow",
    "PyTorch",
  ];

  static const List<String> questions = [
    "What is GAN",
    "Why you set learing rate 0.2 than normal 0.3"
  ];

  List<Widget> createdlist() {
    // Show more click option left
    List<Widget> list = [];
    list.addAll(titles
        .map(
          (element) => Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Icon(
                  Icons.flag,
                  size: 20,
                  color: Colors.amber[800],
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                element,
                style: TextStyle(color: Colors.black87),
              )
            ],
          ),
        )
        .toList());

    return list;
  }

  List<Widget> createQuestionList() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(color: Colors.grey, width: 0.7),
        ),
        color: Colors.grey[100],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "Your Posts",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                          decoration: BoxDecoration(
                            color: Color(0xfffc3147),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          margin:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                          child: Text(
                            "New Post",
                            style: Theme.of(context).textTheme.button,
                          )),
                    )
                  ],
                ),
                Container(
                  // height: (MediaQuery.of(context).size.height / 100) * 30,
                  margin: EdgeInsets.only(left: 10, top: 5, bottom: 20),
                  child: Column(
                    children: createdlist(),
                  ),
                ),
                Divider(),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Your Questions",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                        child: Icon(
                          Icons.error_outline,
                          color: Colors.white,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: (MediaQuery.of(context).size.height / 100) * 30,
                  margin: EdgeInsets.only(left: 10, top: 5),
                  child: Column(
                    children: createdlist(),
                  ),
                ),
              ],
            ),
          ),
          Container()
        ],
      ),
    );
  }
}
