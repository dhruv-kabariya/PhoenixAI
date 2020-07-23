import 'package:ai/models/answer.dart';
import 'package:ai/models/otheruser.dart';

class AnswerService {
  List<Answers> answerList = [];
  List<Answers> seeAnswerList = [];

  Future<List<Answers>> fetchAnswers(int start, int end) async {
    // print("yoo");
    await Future.delayed(Duration(seconds: 2));
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
        answer_time: DateTime(2020, 4, 15),
        title: "Note too much difficult",
        answer:
            "Sed malesuada cursus porta. Nam consequat finibus sem, ac ultricies nisi euismod sed. Nulla semper ultricies suscipit. Fusce ac gravida ex, a ullamcorper libero. Proin augue elit, pretium vel molestie at, vulputate sit amet tellus. Quisque non est lorem. Praesent sit amet interdum dolor. Sed in justo pulvinar, bibendum erat nec, pharetra metus. Praesent at ex libero. Phasellus eu pretium dui. Sed mollis eu arcu vitae placerat. Donec non dictum turpis, ac sagittis ipsum. Curabitur hendrerit libero accumsan dolor varius laoreet. Donec quis tincidunt est. Vivamus fermentum neque malesuada, feugiat nunc sit amet, aliquam magna. Sed gravida et est quis laoreet.",
        tags: ["CNN", "Deel Nural Network"],
        photos: [],
      ),
      Answers(
        ans_id: 1,
        question_id: 2,
        creators_id: OtherUser(
          id: 1,
          first_name: "Darshan",
          last_name: "Patel",
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
      Answers(
        ans_id: 1,
        question_id: 2,
        creators_id: OtherUser(
          id: 3,
          first_name: "Abhishek",
          last_name: "Something",
          followers: 345,
          following: 45456,
          photo_link: "google.com",
          tags: ["AI Expert", "GAN", "NLP"],
        ),
        post_id: 2,
        answer_time: DateTime(2020, 5, 15),
        title: "Note too much difficult",
        answer:
            "n tortor nibh, sagittis ultrices dui non, vehicula posuere sem. Quisque vulputate in enim ac elementum. Cras bibendum metus nibh, eu auctor lectus dapibus tincidunt. Sed maximus blandit justo, sit amet aliquet ipsum. Praesent viverra, augue sagittis consectetur tincidunt, mi nulla elementum augue, et cursus velit massa sed turpis. Nulla eu nunc ac urna convallis interdum. Sed sit amet ex ut diam semper rutrum. Proin vulputate arcu eget sapien malesuada bibendum. Cras tincidunt mauris non ex tempus, in eleifend elit auctor. Etiam id tortor at mi tristique rhoncus.",
        tags: ["CNN", "Deel Nural Network"],
        photos: [],
      ),
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
        answer:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        tags: ["CNN", "Deel Nural Network"],
        photos: [],
      ),
    ];

    this.answerList.addAll(templist);
    this.seeAnswerList.addAll(templist);
    // print(this.seeAnswerList.length);
    return this.seeAnswerList;
  }

  fetchMoreAnswers() {}
  sortAnswers() {}
  filterAnswrs() {}
}
