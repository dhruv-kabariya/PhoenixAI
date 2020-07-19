import 'package:ai/detail/UI/widget/contributorpart.dart';
import 'package:ai/detail/UI/widget/detailtab.dart';
import 'package:flutter/material.dart';

class DetailTabScreen extends StatelessWidget {
  const DetailTabScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [DetailTab(), CotriButorPart()],
      ),
    );
  }
}
