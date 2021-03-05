import 'package:ai/authentication/bloc/authentication_bloc.dart';
import 'package:ai/services/userServices.dart';
import 'package:ai/signup/bloc/signupbloc_bloc.dart';
import 'package:ai/signup/ui/confirmSignUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatefulWidget {
  final AuthenticationBloc authbloc;
  final UserServices userServices;

  SignUpForm({@required this.authbloc, @required this.userServices, Key key})
      : assert(userServices != null),
        assert(authbloc != null),
        super(key: key);

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
    SignupblocBloc bloc = SignupblocBloc(
        authbloc: widget.authbloc, userServices: widget.userServices);
    return BlocBuilder(
        cubit: bloc,
        builder: (context, state) {
          if (state is SingupLinkCardState) {
            return linkForm(context, bloc, state);
          } else {
            return credentialForm(bloc, state, context);
          }
        });
  }

  Container credentialForm(SignupblocBloc bloc, state, BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5),
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
                  margin: EdgeInsets.symmetric(vertical: 5),
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
                  margin: EdgeInsets.symmetric(vertical: 5),
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
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Color(0xfffc3147),
                    onPressed: () {
                      bloc.add(SignUpWithCredentials(
                          username: _userId.text, password: _password.text));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: state == SignUpInProgress()
                          ? CircularProgressIndicator()
                          : Text(
                              "Sign Up",
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
                        child: Divider(),
                      ),
                      Text(
                        "OR",
                      ),
                      Expanded(
                        child: Divider(),
                      ),
                    ],
                  ),
                ),
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
                          onTap: () {
                            bloc.add(SignUpWithGoogle());
                          },
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
              ],
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have account ! ",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  InkWell(
                    onTap: () {
                      BlocProvider.of<AuthenticationBloc>(context)
                          .add(AuthenticationLoginCard());
                    },
                    child: Text("LogIn",
                        style: Theme.of(context).textTheme.caption),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
