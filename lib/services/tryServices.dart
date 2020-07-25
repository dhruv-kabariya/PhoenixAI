import 'dart:math';

import 'package:ai/models/otheruser.dart';
import 'package:ai/models/try.dart';

class TryServices {
  List<Try> tryList = [];
  List<Try> seeTry = [];

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
          what_new_indetail:
              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
          what_new_found_detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce mattis fringilla dui, id varius elit sollicitudin eget. Praesent vitae nibh at ex porta varius. Quisque convallis orci ac dui aliquet, ac cursus nunc consequat. Nulla libero diam, lacinia efficitur lacus luctus, pellentesque aliquam ex. Praesent efficitur sem quis maximus tincidunt. Phasellus aliquam molestie ante id tempor. Aenean augue nisi, tristique ac finibus nec, vulputate ut mi. Quisque a est lectus. Integer id ultrices quam, id molestie lorem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce sapien odio, facilisis ut tellus ut, egestas tempus purus. Sed egestas quis diam nec viverra.",
          what_new_found_short: "More Accuracy",
          explanation: "Mauris eleifend eu dolor vel iaculis. Praesent ullamcorper vehicula risus quis rhoncus. Morbi nec sapien leo. Phasellus auctor metus in congue vehicula. Maecenas et risus et arcu tincidunt gravida ut quis augue. Vestibulum luctus ut ex eget volutpat. Donec maximus vestibulum arcu, ut rhoncus arcu maximus eu. Nam sapien est, scelerisque quis ex quis, molestie iaculis augue. Integer ornare nulla et orci auctor vulputate. Ut id ultrices odio. \n Suspendisse nulla lectus, euismod id egestas vitae, faucibus at sapien. Vivamus dapibus ex sed imperdiet finibus. Ut ornare condimentum semper. In tempus magna augue, ut lobortis velit rhoncus lacinia. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis malesuada dignissim nisl, vel euismod tortor tempor sit amet. Duis posuere justo quis porttitor vulputate. Aenean et velit ut nisl tempor eleifend. Integer ultrices, libero eu aliquam elementum, mi est varius urna, in ullamcorper nunc massa non tellus. Etiam convallis, mi eget fringilla imperdiet, diam diam malesuada purus, non pharetra mi quam sed nisi. Vivamus aliquam consectetur tempor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus tempus, dolor non tincidunt rutrum, arcu nunc mattis libero, sed semper lacus nisi vitae libero. \n In hac habitasse platea dictumst. Sed ut odio feugiat, cursus erat egestas, suscipit ex. Fusce ac elementum neque. Fusce et dui consectetur, accumsan sapien id, dapibus risus. Quisque orci ex, auctor sit amet eleifend a, eleifend et ligula. Mauris enim enim, dapibus ut scelerisque non, efficitur ut leo. Quisque tristique enim condimentum, placerat enim ut, efficitur justo. Mauris mauris mi, placerat nec magna nec, consequat eleifend eros. Curabitur fermentum facilisis vulputate. Duis tristique dui et lacinia convallis.",
          github_link: "github.com",
          photos: [],
          videos: [],
          tags: ["GAN", "CNN"])
    ];

    this.tryList.addAll(temptryList);
    this.seeTry = temptryList;

    return this.tryList;
  }

  fetchMoreTry() {}
  sorttry() {}
  filterTry() {}
}
