import 'package:flutter/material.dart';

class RefLinks extends StatelessWidget {
  const RefLinks({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 10, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    child: Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Image.asset(
                        "github-light.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "http://github.com",
                      style: TextStyle(color: Colors.white70),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
