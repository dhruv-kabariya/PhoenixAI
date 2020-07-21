import 'package:ai/models/otheruser.dart';
import 'package:ai/models/post.dart';

class PostServices {
  List<Post> posts;
  List<Post> seePost;

  Future<List<Post>> fetchPost() async {
    await Future.delayed(Duration(seconds: 3));

    List<Post> tempPosts = [
      Post(
        id: 1,
        creators_id: OtherUser(
          id: 2,
          first_name: "Dhruv",
          last_name: "Kabariya",
          followers: 345,
          following: 45456,
          photo_link: "google.com",
          tags: ["AI Expert", "GAN", "NLP"],
        ),
        contributors_list: [
          OtherUser(
            id: 2,
            first_name: "Dhruv",
            last_name: "Kabariya",
            followers: 345,
            following: 45456,
            photo_link: "google.com",
            tags: ["AI Expert", "GAN", "NLP"],
          ),
          OtherUser(
            id: 2,
            first_name: "Darshan",
            last_name: "Patel",
            followers: 365,
            following: 42456,
            photo_link: "google.com",
            tags: ["AI Expert", "GAN", "NLP"],
          ),
          OtherUser(
            id: 2,
            first_name: "Abhishek",
            last_name: "",
            followers: 342,
            following: 4556,
            photo_link: "google.com",
            tags: ["AI Expert", "GAN", "NLP"],
          ),
        ],
        timecreated: DateTime(2020, 03, 12),
        title: "Test Title",
        about:
            "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham",
        explanation:
            "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
        expected_use: [
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
          "Etiam faucibus tortor vitae sem congue, quis hendrerit nisl cursus",
          "Mauris vitae lacus in ex pretium elementum",
          "Mauris gravida mauris vel nibh bibendum, et lobortis lacus suscipit"
        ],
        github_repo_link: "www.github.com",
        no_of_question: 20,
        no_of_star: 15,
        no_of_try: 50,
        tags: [
          "CNN",
          "General Adversial Network",
          "deel learning",
          "test tags",
          "tags"
        ],
      ),
      Post(
        id: 1,
        creators_id: OtherUser(
          id: 2,
          first_name: "Abhishek",
          last_name: "",
          followers: 342,
          following: 4556,
          photo_link: "google.com",
          tags: ["AI Expert", "GAN", "NLP"],
        ),
        contributors_list: [
          OtherUser(
            id: 2,
            first_name: "Dhruv",
            last_name: "Kabariya",
            followers: 345,
            following: 45456,
            photo_link: "google.com",
            tags: ["AI Expert", "GAN", "NLP"],
          ),
          OtherUser(
            id: 2,
            first_name: "Darshan",
            last_name: "Patel",
            followers: 365,
            following: 42456,
            photo_link: "google.com",
            tags: ["AI Expert", "GAN", "NLP"],
          ),
          OtherUser(
            id: 2,
            first_name: "Abhishek",
            last_name: "",
            followers: 342,
            following: 4556,
            photo_link: "google.com",
            tags: ["AI Expert", "GAN", "NLP"],
          ),
        ],
        timecreated: DateTime(2020, 03, 12),
        title: "Test Title",
        about:
            "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham",
        explanation:
            "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
        expected_use: [
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
          "Etiam faucibus tortor vitae sem congue, quis hendrerit nisl cursus",
          "Mauris vitae lacus in ex pretium elementum",
          "Mauris gravida mauris vel nibh bibendum, et lobortis lacus suscipit"
        ],
        github_repo_link: "www.github.com",
        no_of_question: 20,
        no_of_star: 15,
        no_of_try: 50,
        tags: [
          "CNN",
          "General Adversial Network",
          "deel learning",
          "test tags",
          "tags"
        ],
      ),
      Post(
        id: 1,
        creators_id: OtherUser(
          id: 2,
          first_name: "Darshan",
          last_name: "Patel",
          followers: 365,
          following: 42456,
          photo_link: "google.com",
          tags: ["AI Expert", "GAN", "NLP"],
        ),
        contributors_list: [
          OtherUser(
            id: 2,
            first_name: "Dhruv",
            last_name: "Kabariya",
            followers: 345,
            following: 45456,
            photo_link: "google.com",
            tags: ["AI Expert", "GAN", "NLP"],
          ),
          OtherUser(
            id: 2,
            first_name: "Darshan",
            last_name: "Patel",
            followers: 365,
            following: 42456,
            photo_link: "google.com",
            tags: ["AI Expert", "GAN", "NLP"],
          ),
          OtherUser(
            id: 2,
            first_name: "Abhishek",
            last_name: "",
            followers: 342,
            following: 4556,
            photo_link: "google.com",
            tags: ["AI Expert", "GAN", "NLP"],
          ),
        ],
        timecreated: DateTime(2020, 03, 12),
        title: "Test Title",
        about:
            "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham",
        explanation:
            "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
        expected_use: [
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
          "Etiam faucibus tortor vitae sem congue, quis hendrerit nisl cursus",
          "Mauris vitae lacus in ex pretium elementum",
          "Mauris gravida mauris vel nibh bibendum, et lobortis lacus suscipit"
        ],
        github_repo_link: "www.github.com",
        no_of_question: 20,
        no_of_star: 15,
        no_of_try: 50,
        tags: [
          "CNN",
          "General Adversial Network",
          "deel learning",
          "test tags",
          "tags"
        ],
      ),
      Post(
        id: 1,
        creators_id: OtherUser(
          id: 2,
          first_name: "Darshan",
          last_name: "Patel",
          followers: 365,
          following: 42456,
          photo_link: "google.com",
          tags: ["AI Expert", "GAN", "NLP"],
        ),
        contributors_list: [
          OtherUser(
            id: 2,
            first_name: "Dhruv",
            last_name: "Kabariya",
            followers: 345,
            following: 45456,
            photo_link: "google.com",
            tags: ["AI Expert", "GAN", "NLP"],
          ),
          OtherUser(
            id: 2,
            first_name: "Darshan",
            last_name: "Patel",
            followers: 365,
            following: 42456,
            photo_link: "google.com",
            tags: ["AI Expert", "GAN", "NLP"],
          ),
          OtherUser(
            id: 2,
            first_name: "Abhishek",
            last_name: "",
            followers: 342,
            following: 4556,
            photo_link: "google.com",
            tags: ["AI Expert", "GAN", "NLP"],
          ),
        ],
        timecreated: DateTime(2020, 03, 12),
        title: "Test Title",
        about:
            "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham",
        explanation:
            "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
        expected_use: [
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
          "Etiam faucibus tortor vitae sem congue, quis hendrerit nisl cursus",
          "Mauris vitae lacus in ex pretium elementum",
          "Mauris gravida mauris vel nibh bibendum, et lobortis lacus suscipit"
        ],
        github_repo_link: "www.github.com",
        no_of_question: 20,
        no_of_star: 15,
        no_of_try: 50,
        tags: [
          "CNN",
          "General Adversial Network",
          "deel learning",
          "test tags",
          "tags"
        ],
      ),
    ];

    this.posts = tempPosts;
    this.seePost = tempPosts;

    return tempPosts;
  }

  Future<List<Post>> fetchMorePost() async {
    await Future.delayed(Duration(seconds: 3));

    List<Post> tempPosts = [
      Post(
        id: 1,
        creators_id: OtherUser(
          id: 2,
          first_name: "Dhruv",
          last_name: "Kabariya",
          followers: 345,
          following: 45456,
          photo_link: "google.com",
          tags: ["AI Expert", "GAN", "NLP"],
        ),
        contributors_list: [
          OtherUser(
            id: 2,
            first_name: "Dhruv",
            last_name: "Kabariya",
            followers: 345,
            following: 45456,
            photo_link: "google.com",
            tags: ["AI Expert", "GAN", "NLP"],
          ),
          OtherUser(
            id: 2,
            first_name: "Darshan",
            last_name: "Patel",
            followers: 365,
            following: 42456,
            photo_link: "google.com",
            tags: ["AI Expert", "GAN", "NLP"],
          ),
        ],
        timecreated: DateTime(2020, 03, 12),
        title: "Test Title",
        about:
            "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham",
        explanation:
            "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
        expected_use: [
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
          "Etiam faucibus tortor vitae sem congue, quis hendrerit nisl cursus",
          "Mauris vitae lacus in ex pretium elementum",
          "Mauris gravida mauris vel nibh bibendum, et lobortis lacus suscipit"
        ],
        github_repo_link: "www.github.com",
        no_of_question: 20,
        no_of_star: 15,
        no_of_try: 50,
        tags: [
          "CNN",
          "General Adversial Network",
          "deel learning",
          "test tags",
          "tags"
        ],
      ),
      Post(
        id: 1,
        creators_id: OtherUser(
          id: 2,
          first_name: "Dhruv",
          last_name: "Kabariya",
          followers: 345,
          following: 45456,
          photo_link: "google.com",
          tags: ["AI Expert", "GAN", "NLP"],
        ),
        contributors_list: [],
        timecreated: DateTime(2020, 03, 12),
        title: "Test Title",
        about:
            "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham",
        explanation:
            "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
        expected_use: [
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
          "Etiam faucibus tortor vitae sem congue, quis hendrerit nisl cursus",
          "Mauris vitae lacus in ex pretium elementum",
          "Mauris gravida mauris vel nibh bibendum, et lobortis lacus suscipit"
        ],
        github_repo_link: "www.github.com",
        no_of_question: 20,
        no_of_star: 15,
        no_of_try: 50,
        tags: [
          "CNN",
          "General Adversial Network",
          "deel learning",
          "test tags",
          "tags"
        ],
      ),
      Post(
        id: 1,
        creators_id: OtherUser(
          id: 2,
          first_name: "Dhruv",
          last_name: "Kabariya",
          followers: 345,
          following: 45456,
          photo_link: "google.com",
          tags: ["AI Expert", "GAN", "NLP"],
        ),
        contributors_list: [
          OtherUser(
            id: 2,
            first_name: "Dhruv",
            last_name: "Kabariya",
            followers: 345,
            following: 45456,
            photo_link: "google.com",
            tags: ["AI Expert", "GAN", "NLP"],
          ),
          // OtherUser(
          //   id: 2,
          //   first_name: "Darshan",
          //   last_name: "Patel",
          //   followers: 365,
          //   following: 42456,
          //   photo_link: "google.com",
          //   tags: ["AI Expert", "GAN", "NLP"],
          // ),
        ],
        timecreated: DateTime(2020, 03, 12),
        title: "Test Title",
        about:
            "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham",
        explanation:
            "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
        expected_use: [
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
          "Etiam faucibus tortor vitae sem congue, quis hendrerit nisl cursus",
          "Mauris vitae lacus in ex pretium elementum",
          "Mauris gravida mauris vel nibh bibendum, et lobortis lacus suscipit"
        ],
        github_repo_link: "www.github.com",
        no_of_question: 20,
        no_of_star: 15,
        no_of_try: 50,
        tags: [
          "CNN",
          "General Adversial Network",
          "deel learning",
          "test tags",
          "tags"
        ],
      ),
      Post(
        id: 1,
        creators_id: OtherUser(
          id: 2,
          first_name: "Darshan",
          last_name: "Patel",
          followers: 365,
          following: 42456,
          photo_link: "google.com",
          tags: ["AI Expert", "GAN", "NLP"],
        ),
        contributors_list: [
          OtherUser(
            id: 2,
            first_name: "Dhruv",
            last_name: "Kabariya",
            followers: 345,
            following: 45456,
            photo_link: "google.com",
            tags: ["AI Expert", "GAN", "NLP"],
          ),
          OtherUser(
            id: 2,
            first_name: "Darshan",
            last_name: "Patel",
            followers: 365,
            following: 42456,
            photo_link: "google.com",
            tags: ["AI Expert", "GAN", "NLP"],
          ),
        ],
        timecreated: DateTime(2020, 03, 12),
        title: "Test Title",
        about:
            "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham",
        explanation:
            "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
        expected_use: [
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
          "Etiam faucibus tortor vitae sem congue, quis hendrerit nisl cursus",
          "Mauris vitae lacus in ex pretium elementum",
          "Mauris gravida mauris vel nibh bibendum, et lobortis lacus suscipit"
        ],
        github_repo_link: "www.github.com",
        no_of_question: 20,
        no_of_star: 15,
        no_of_try: 50,
        tags: [
          "CNN",
          "General Adversial Network",
          "deel learning",
          "test tags",
          "tags"
        ],
      ),
    ];

    this.posts.addAll(tempPosts);
    this.seePost = this.posts;

    return tempPosts;
  }

  sortPost() {}

  filterPost() {}

  bookmarkPost() {}

  fetchAllDetail() {}
}
