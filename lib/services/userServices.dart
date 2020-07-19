import 'package:ai/models/user.dart';

class UserServices {
  User user;

  Future<String> signInWithCredentials(String username, String passWord) async {
    await Future.delayed(Duration(milliseconds: 3000));
    user = User(
      email: "dhruvKabariya1@gmail.com",
      github: "github.com",
      linkedin: "linkedin.com",
      name: "Dhruv Kabaiya",
      password: "Dhruv",
    );

    return "u2iufiynxy8xy28duji1nj";
  }

  Future<String> signUpWithCredentials(String username, String passWord) async {
    await Future.delayed(Duration(milliseconds: 3000));
    user = User(
      email: "dhruvKabariya1@gmail.com",
      github: "github.com",
      linkedin: "linkedin.com",
      name: "Dhruv Kabaiya",
      password: "Dhruv",
    );

    return "u2iufiynxy8xy28duji1nj";
  }

  Future<String> signInWith3RDPart() async {
    await Future.delayed(Duration(milliseconds: 300));
    user = User(
      email: "dhruvKabariya1@gmail.com",
      github: "github.com",
      linkedin: "linkedin.com",
      name: "Dhruv Kabaiya",
      password: "Dhruv",
    );
    return "u2iufiynxy8xy28duji1nj";
  }

  Future<String> signUpWith3RDPart() async {
    await Future.delayed(Duration(milliseconds: 300));
    user = User(
      email: "dhruvKabariya1@gmail.com",
      github: "github.com",
      linkedin: "linkedin.com",
      name: "Dhruv Kabaiya",
      password: "Dhruv",
    );
    return "u2iufiynxy8xy28duji1nj";
  }

  Future<void> signOut() async {
    await Future.delayed(Duration(milliseconds: 300));
  }

  Future<User> getUser() async {
    await Future.delayed(Duration(milliseconds: 300));
    user = User(
      email: "dhruvKabariya1@gmail.com",
      github: "github.com",
      linkedin: "linkedin.com",
      name: "Dhruv Kabaiya",
      password: "Dhruv",
    );
    return user;
  }

  Future<bool> isSignedin() async {
    try {
      await Future.delayed(Duration(milliseconds: 300));
      return user.name != null;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<User> getInfomation() async {
    return User(
      email: "dhruvKabariya1@gmail.com",
      github: "github.com",
      linkedin: "linkedin.com",
      name: "Dhruv Kabaiya",
      password: "Dhruv",
    );
  }
}
