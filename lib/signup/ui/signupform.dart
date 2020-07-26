import 'package:ai/authentication/bloc/authentication_bloc.dart';
import 'package:ai/services/userServices.dart';
import 'package:ai/signup/bloc/signupbloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            return _linkForm(context, bloc, state);
          } else {
            return _credentialForm(bloc, state, context);
          }
        });
  }

  Container _linkForm(BuildContext context, SignupblocBloc bloc, state) {
    return Container(
      child: Form(
        child: Column(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.only(top: 8, left: 3, right: 3, bottom: 5),
              padding: EdgeInsets.only(top: 2, left: 10, right: 3, bottom: 5),
              child: TextFormField(
                // controller: _confirmPassword,
                // obscureText: _showPas,
                decoration: InputDecoration(
                  prefixIcon: Icon(FontAwesomeIcons.github),
                  fillColor: Colors.grey,
                  border: InputBorder.none,
                  hintText: "GitHub",
                ),
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
                // controller: _confirmPassword,
                // obscureText: _showPas,
                decoration: InputDecoration(
                  prefixIcon: Icon(FontAwesomeIcons.linkedin),
                  fillColor: Colors.grey,
                  border: InputBorder.none,
                  hintText: "LinkedIn",
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
                onPressed: () {
                  bloc.add(SignUpLinkCardUpdateEvent());
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "All Set",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
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
                onPressed: () {
                  bloc.add(SingupblocSkipEvent());
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _credentialForm(SignupblocBloc bloc, state, BuildContext context) {
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
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.only(top: 8, left: 3, right: 3, bottom: 5),
                padding: EdgeInsets.only(top: 2, left: 10, right: 3, bottom: 5),
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
              Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have account ! "),
                    InkWell(
                      onTap: () {
                        BlocProvider.of<AuthenticationBloc>(context)
                            .add(AuthenticationLoginCard());
                      },
                      child: Text(
                        "LogIn",
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
  }
}
