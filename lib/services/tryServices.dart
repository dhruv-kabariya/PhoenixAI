import 'dart:math';

import 'package:ai/models/otheruser.dart';
import 'package:ai/models/try.dart';

class TryServices {
  List<Try> tryList;
  List<Try> seeTry;

  Future<List<Try>> fetchTry() async {
    await Future.delayed(Duration(seconds: Random().nextInt(5)));
    List<Try> temptryList = [
      Try(
          id: 2,
          creator_id: OtherUser(
            id: 2,
            first_name: "Dhruv",
            last_name: "Kabariya",
            followers: 345,
            following: 45456,
            photo_link: "google.com",
            tags: ["AI Expert", "GAN", "NLP"],
          ),
          post_id: 2,
          time: DateTime(2020, 07, 18),
          what_new_short: "Learning Rate",
          what_new_indetail: "Changed Rate from 0.5 to 0.3",
          what_new_found_detail: "More Accuracy",
          what_new_found_short: "More Accuracy",
          explanation: "More Accuracy",
          github_link: "github.com",
          photos: [],
          videos: [],
          tags: ["GAN", "CNN"])
    ];

    this.tryList = temptryList;
    this.seeTry = temptryList;

    return temptryList;
  }

  fetchMoreTry() {}
  sorttry() {}
  filterTry() {}
}
