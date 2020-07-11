import 'package:ai/login/login_bloc/bloc/login_bloc.dart';
import 'package:ai/signup/bloc/signupbloc_bloc.dart';
import 'package:ai/signup/ui/confirmSignUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double boxheight = MediaQuery.of(context).size.height / 100;
    double boxwidth = MediaQuery.of(context).size.width / 100;

    return Container(
      child: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Colors.indigoAccent[200],
              Colors.indigoAccent[100],
            ],
          ),
        ),
        child: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 20,
            child: Container(
              height: boxheight * 80,
              width: boxwidth * 70,
              alignment: Alignment.center,
              child: Row(
                children: [
                  CardPhoto(),
                  CardOptions(
                    height: boxheight * 80,
                    width: boxwidth * 70,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CardOptions extends StatelessWidget {
  const CardOptions({
    this.height,
    this.width,
    Key key,
  }) : super(key: key);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        color: Colors.white60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                "Welcome to AI Community",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 50, top: 50, bottom: 20, right: 20),
              height: height - 150,
              width: width,
              // child: MaterialApp(
              //     debugShowCheckedModeBanner: false,
              //     initialRoute: '/signup',
              //     routes: {
              //       '/signup': (_) => SignUpForm(),
              //       '/confirm': (_) => ConfirmSignUp(),
              //     }),
              child: BlocBuilder<SignupblocBloc, SignupblocState>(
                builder: (context, state) {
                  if (state is SingupblocSecondPage) {
                    return ConfirmSignUp();
                  }
                  return SignUpForm();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardPhoto extends StatelessWidget {
  const CardPhoto({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/ai.jpg"), fit: BoxFit.cover),
        ),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  SignUpForm({Key key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _showPas = true;

  TextEditingController _userId = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // singupbloc.add(SingupblocInitialEvent());
    return BlocBuilder<SignupblocBloc, SignupblocState>(
      builder: (context, state) {
        if (state is SingupblocSecondPage) {
          return ConfirmSignUp();
        }

        return Container(
          child: Form(
            key: _formKey,
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin:
                        EdgeInsets.only(top: 2, left: 3, right: 3, bottom: 2),
                    padding:
                        EdgeInsets.only(top: 2, left: 10, right: 3, bottom: 2),
                    child: TextFormField(
                      controller: _userId,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail_outline),
                          fillColor: Colors.grey,
                          border: InputBorder.none,
                          hintText: "Enter UserID or Phone"),
                    ),
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin:
                        EdgeInsets.only(top: 8, left: 3, right: 3, bottom: 5),
                    padding:
                        EdgeInsets.only(top: 2, left: 10, right: 3, bottom: 5),
                    child: TextFormField(
                      controller: _password,
                      obscureText: _showPas,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.vpn_key),
                        suffixIcon: IconButton(
                            icon: Icon(Icons.remove_red_eye),
                            onPressed: () {
                              setState(() {
                                _showPas = (!_showPas);
                              });
                            }),
                        fillColor: Colors.grey,
                        border: InputBorder.none,
                        hintText: "Password",
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin:
                        EdgeInsets.only(top: 8, left: 3, right: 3, bottom: 5),
                    padding:
                        EdgeInsets.only(top: 2, left: 10, right: 3, bottom: 5),
                    child: TextFormField(
                      controller: _confirmPassword,
                      obscureText: _showPas,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.vpn_key),
                        suffixIcon: IconButton(
                            icon: Icon(Icons.remove_red_eye),
                            onPressed: () {
                              setState(() {
                                _showPas = (!_showPas);
                              });
                            }),
                        fillColor: Colors.grey,
                        border: InputBorder.none,
                        hintText: "Confirm Password",
                      ),
                      validator: (value) {
                        if (value != _password.text) {
                          return "Enter same password";
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(top: 8, bottom: 8),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Colors.indigo,
                      onPressed: () {
                        // Navigator.pushNamed(context, '/confirm');
                        // widget.bloc.add(SingupblocNextEvent());
                        BlocProvider.of<SignupblocBloc>(context)
                            .add(SingupblocNextEvent());
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Next",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  //  Container(
                  //   height: 50,
                  //   margin: EdgeInsets.only(top: 12, bottom: 8),
                  //   child: Row(
                  //     crossAxisAlignment: CrossAxisAlignment.center,
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Card(
                  //         shape: CircleBorder(),
                  //         margin: EdgeInsets.only(right: 10),
                  //         elevation: 5,
                  //         child: InkWell(
                  //           onTap: () {},
                  //           child: Image.asset("google.png"),
                  //         ),
                  //       ),
                  //       Card(
                  //         shape: CircleBorder(),
                  //         margin: EdgeInsets.only(left: 10, right: 10),
                  //         elevation: 5,
                  //         child: Container(
                  //           padding: EdgeInsets.all(8),
                  //           child: InkWell(
                  //             onTap: () {},
                  //             child: Image.asset(
                  //               "github-dark.png",
                  //               fit: BoxFit.cover,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       Card(
                  //         shape: CircleBorder(),
                  //         margin: EdgeInsets.only(left: 10),
                  //         elevation: 5,
                  //         child: Container(
                  //           padding: EdgeInsets.all(12),
                  //           child: InkWell(
                  //             onTap: () {},
                  //             child: Image.asset(
                  //               "linkedin.png",
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(left: 50, top: 100, right: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have account "),
                        InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, RoutePaths.Register);
                            // BlocProvider.of<SignupblocBloc>(context)
                            //     .add(SingupblocInitialEvent());
                            BlocProvider.of<LoginBloc>(context)
                                .add(LoginPage());
                          },
                          child: Text(
                            "Log In",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
