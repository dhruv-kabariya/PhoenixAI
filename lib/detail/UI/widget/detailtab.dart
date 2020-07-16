import 'package:ai/detail/UI/widget/reflinks.dart';
import 'package:flutter/material.dart';

class DetailTab extends StatelessWidget {
  const DetailTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        child: ListView(
          children: [
            RefLinks(),
            Container(
              padding: EdgeInsets.only(left: 10, top: 20),
              child: Text(
                "Explanation",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 10,
                left: 20,
              ),
              child: Text(
                "https://google.com  Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of 'de Finibus Bonorum et Malorum' (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, 'Lorem ipsum dolor sit amet..', comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from 'de Finibus Bonorum et Malorum' by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
                style: TextStyle(color: Colors.white70),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 10),
              alignment: Alignment.topCenter,
              child: Image.asset("dum1.png"),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, top: 20, bottom: 30),
              child: Text(
                "Expected Use",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 10,
                left: 20,
              ),
              child: Text(
                "https://google.com  Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of 'de Finibus Bonorum et Malorum' (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, 'Lorem ipsum dolor sit amet..', comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from 'de Finibus Bonorum et Malorum' by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
                style: TextStyle(color: Colors.white70),
              ),
            ),
          ],
        ),
      ),
    );
  }
}