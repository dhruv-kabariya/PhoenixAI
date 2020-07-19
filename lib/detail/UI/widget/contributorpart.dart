import 'package:ai/detail/UI/widget/contributor.dart';
import 'package:flutter/material.dart';

class CotriButorPart extends StatelessWidget {
  const CotriButorPart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Contributors(),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Tags",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Wrap(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.pink[50],
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            "Nural ",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.pink[50],
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            "Nural Network",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.pink[50],
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            "Nural Network",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.pink[50],
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            "Artificial Nural Network",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.pink[50],
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            "Nural Network",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.pink[50],
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            "Nural Network",
                            style: TextStyle(fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
