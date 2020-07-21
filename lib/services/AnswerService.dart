import 'package:ai/models/answer.dart';
import 'package:ai/models/otheruser.dart';

class AnswerService {
  List<Answers> answerList;
  List<Answers> seeAnswerList;

  Future<List<Answers>> fetchAnswers() async {
    List<Answers> templist = [
      Answers(
        ans_id: 1,
        question_id: 2,
        creators_id: OtherUser(
          id: 2,
          first_name: "Dhruv",
          last_name: "Kabariya",
          followers: 345,
          following: 45456,
          photo_link: "google.com",
          tags: ["AI Expert", "GAN", "NLP"],
        ),
        post_id: 2,
        answer_time: DateTime(2020, 5, 15),
        title: "Note too much difficult",
        answer: "Note good question,so simple it was",
        tags: ["CNN", "Deel Nural Network"],
        photos: [],
      ),
    ];

    this.answerList = templist;
    this.seeAnswerList = templist;

    return templist;
  }

  fetchMoreAnswers() {}
  sortAnswers() {}
  filterAnswrs() {}
}
