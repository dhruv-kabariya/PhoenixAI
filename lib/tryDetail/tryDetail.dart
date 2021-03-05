import 'package:ai/AppBar/UI/webappbar.dart';
import 'package:ai/Universals/chipsShow.dart';
import 'package:ai/models/try.dart';
import 'package:flutter/material.dart';

class TryDetailScreen extends StatelessWidget {
  final Try tryElement;
  const TryDetailScreen({@required this.tryElement, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WebAppBar(size: Size(MediaQuery.of(context).size.width, 60)),
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              child: ListView(
                children: [
                  // Container(

                  //   margin: EdgeInsets.only(top: 10, left: 10, right: 10),

                  //   child: Text("New Try",
                  //   style: TextStyle(
                  //     fontSize: 22
                  //     ,fontWeight: FontWeight.bold
                  //   ),),
                  // ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Text(
                      tryElement.what_new_short,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Text(
                      "Details",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Text(tryElement.what_new_indetail),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Text(
                      "Detail",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Text(
                      tryElement.what_new_found_short,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Text(tryElement.what_new_found_detail),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Text(
                      "Explaination",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Text(tryElement.explanation),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ContributorsContainer(tryElement: tryElement),
                  Divider(),
                  Tags(tags: tryElement.tags),
                  Divider(),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(top: 8),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/github-dark.png"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Divider(),
                  Container(
                    margin: EdgeInsets.only(
                      top: 5,
                      left: 5,
                    ),
                    child: Text("Licence BSD 13"),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

class ContributorsContainer extends StatelessWidget {
  const ContributorsContainer({
    Key key,
    @required this.tryElement,
  }) : super(key: key);

  final Try tryElement;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ExpansionTile(
      title: Column(
        children: [
          Text(tryElement.creator_id.first_name +
              " " +
              tryElement.creator_id.last_name),
          Text(
            "3 more",
            style: TextStyle(fontSize: 8),
          )
        ],
      ),
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundImage: AssetImage(
            "assets/profile.jpg",
          ),
          radius: 15,
          // maxRadius: 15,
        ),
      ),
      trailing: Card(),
      children: [
        ListTile(
          title: Text(tryElement.creator_id.first_name +
              " " +
              tryElement.creator_id.last_name),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 15,

              backgroundImage: AssetImage(
                "assets/profile.jpg",
              ),
              // maxRadius: 15,
            ),
          ),
        )
      ],
    ));
  }
}

// Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.center,
//                                       children: [
//                                         Container(
//                                           width: 30,
//                                           height: 30,
//                                           decoration: BoxDecoration(
//                                               shape: BoxShape.circle,
//                                               // borderRadius: BorderRadius.circular(radius)
//                                               image: DecorationImage(
//                                                   image: AssetImage(
//                                                       "assets/profile.jpg"),
//                                                   fit: BoxFit.cover)),
//                                         ),
//                                         SizedBox(
//                                           width: 5,
//                                         ),
//                                         Text(tryElement.creator_id.first_name +
//                                             " " +
//                                             tryElement.creator_id.last_name)
//                                       ],
//                                     ),
