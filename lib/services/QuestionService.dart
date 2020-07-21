import 'package:ai/models/otheruser.dart';
import 'package:ai/models/question.dart';

class QuestionService {
  List<Question> questionList;
  List<Question> seeQuestionList;

  Future<List<Question>> fetchQuestionList() async {
    await Future.delayed(Duration(seconds: 3));
    List<Question> tempList = [
      Question(
        q_id: 2,
        post_id: 2,
        creators_id: OtherUser(
          id: 2,
          first_name: "Dhruv",
          last_name: "Kabariya",
          followers: 345,
          following: 45456,
          photo_link: "google.com",
          tags: ["AI Expert", "GAN", "NLP"],
        ),
        time: DateTime(2020, 5, 28),
        no_of_answer: 200,
        question: "What is Question",
        photos: [],
        tags: ["Learning Rate", "Nodes", "Layers"],
      ),
    ];

    this.questionList = tempList;
    this.seeQuestionList = tempList;

    return tempList;
  }

  fechMoreQuestionList() {}
  sortQuestionList() {}
  filterQuestionList() {}
}
