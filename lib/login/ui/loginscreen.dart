import 'package:ai/home/UI/screens/home.dart';
import 'package:ai/login/bloc/authentication_bloc.dart';
import 'package:ai/login/login_bloc/bloc/login_bloc.dart';

import 'package:ai/signup/ui/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double boxheight = MediaQuery.of(context).size.height / 100;
    double boxwidth = MediaQuery.of(context).size.width / 100;
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        if (state is AuthenticationNotAuthenticated) {
          return Container(
            child: Container(
              decoration: BoxDecoration(
                  gradient: RadialGradient(colors: [
                Colors.indigoAccent[200],
                Colors.indigoAccent[100]
              ])),
              child: Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 20,
                  child: Container(
                    color: Colors.white,
                    height: boxheight * 80,
                    width: boxwidth * 70,
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        CardPhoto(),
                        CardOptions(
                          height: boxheight * 80,
                          width: boxwidth * 70,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }
        if (state is AuthenticationAuthenticated) {
          return HomeScreen();
        }
        if (state is AuthenticationFailure) {
          Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is AuthenticationLoading) {
          Center(
            child: CircularProgressIndicator(),
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
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
              color: Colors.white,
              margin: EdgeInsets.only(top: 50),
              child: Text(
                "Welcome to AI Community",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Container(
              height: height - 150,
              width: width,
              color: Colors.white,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 50, top: 50, bottom: 20, right: 20),
              // child: MaterialApp(
              //     debugShowCheckedModeBanner: false,
              //     initialRoute: '/loginform',
              //     routes: {
              //       RoutePaths.LoginForm: (context) => LoginForm(),
              //       RoutePaths.Register: (context) => SignUpForm(),
              //       RoutePaths.ConfirmSignup: (context) => ConfirmSignUp(),
              //     }),
              child: BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  if (state is LoginToSignUpState) {
                    return SignUpForm();
                  }
                  return LoginForm();
                },
              ),
              // child: LoginForm(),
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
            image: AssetImage("assets/ai.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _showPas = true;
  TextEditingController _userId;
  TextEditingController _password;

  @override
  void initState() {
    _userId = TextEditingController();
    _password = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.only(top: 2, left: 3, right: 3, bottom: 2),
              padding: EdgeInsets.only(top: 2, left: 10, right: 3, bottom: 2),
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
              margin: EdgeInsets.only(top: 8, left: 3, right: 3, bottom: 5),
              padding: EdgeInsets.only(top: 2, left: 10, right: 3, bottom: 5),
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
              margin: EdgeInsets.only(top: 8, bottom: 8),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                color: Colors.indigo,
                onPressed: () {},
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: Colors.black38,
                      endIndent: 6,
                      indent: 10,
                    ),
                  ),
                  Text(
                    "OR",
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: Colors.black38,
                      endIndent: 10,
                      indent: 6,
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   height: 40,
            //   margin: EdgeInsets.only(top: 8, bottom: 8),
            //   child: FlatButton(
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(50)),
            //     color: Colors.indigo,
            //     onPressed: () {
            //       Navigator.of(context).pushNamed("/home");
            //     },
            //     child: Container(
            //       alignment: Alignment.center,
            //       child: Text(
            //         "Login",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 18,
            //             fontWeight: FontWeight.bold),
            //       ),
            //     ),
            //   ),
            // ),
            // Container(
            //   margin: EdgeInsets.only(top: 8),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Expanded(
            //         child: Divider(
            //           thickness: 2,
            //           color: Colors.black38,
            //           endIndent: 6,
            //           indent: 10,
            //         ),
            //       ),
            //       Text(
            //         "OR",
            //       ),
            //       Expanded(
            //         child: Divider(
            //           thickness: 2,
            //           color: Colors.black38,
            //           endIndent: 10,
            //           indent: 6,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // Row(
            //   children: [
            //     Card(
            //       shape: CircleBorder(),
            //       margin: EdgeInsets.only(left: 10, right: 10),
            //       elevation: 5,
            //       child: Container(
            //         padding: EdgeInsets.all(8),
            //         child: InkWell(
            //           onTap: () {},
            //           child: Image.asset(
            //             "github-dark.png",
            //             fit: BoxFit.cover,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            Container(
              height: 50,
              margin: EdgeInsets.only(top: 12, bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    shape: CircleBorder(),
                    margin: EdgeInsets.only(right: 10),
                    elevation: 5,
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset("google.png"),
                    ),
                  ),
                  Card(
                    shape: CircleBorder(),
                    margin: EdgeInsets.only(left: 10, right: 10),
                    elevation: 5,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Image.asset(
                            "github-logo.png",
                            // fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Card(
                      shape: CircleBorder(),
                      margin: EdgeInsets.only(left: 10),
                      elevation: 5,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Image.asset(
                              "linkedin.png",
                              color: Color(0xff0A66C2),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(left: 50, top: 60, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have account? "),
                  InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, RoutePaths.Register);
                      BlocProvider.of<LoginBloc>(context)
                          .add(LoginToSignUpEvent());
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   alignment: Alignment.bottomCenter,
            //   margin: EdgeInsets.only(left: 50, top: 60, right: 50),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text("Don't have account "),
            //       InkWell(
            //         onTap: () {
            //           // Navigator.pushNamed(context, RoutePaths.Register);
            //           BlocProvider.of<SignupblocBloc>(context)
            //               .add(SingupblocInitialEvent());
            //           BlocProvider.of<LoginBloc>(context)
            //               .add(LoginToSignUpEvent());
            //         },
            //         child: Text(
            //           "Sign Up",
            //           style: TextStyle(fontWeight: FontWeight.bold),
            //         ),
            //       )
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
