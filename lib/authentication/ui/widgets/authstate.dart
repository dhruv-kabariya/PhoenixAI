import 'package:ai/authentication/bloc/authentication_bloc.dart';
import 'package:ai/login/ui/widget/loginform.dart';
import 'package:ai/signup/ui/signupform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    AuthenticationBloc authbloc = BlocProvider.of<AuthenticationBloc>(context);

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
                height: height - 150,
                width: width,
                alignment: Alignment.topLeft,
                margin:
                    EdgeInsets.only(left: 50, top: 50, bottom: 20, right: 20),
                child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
                  bloc: authbloc,
                  builder: (context, state) {
                    if (state is AuthenticationLogin) {
                      return LoginForm(
                        authBloc: authbloc,
                        userServices: authbloc.userServices,
                      );
                    } else if (state is AuthenticationSignUp) {
                      return SignUpForm(
                        authbloc: authbloc,
                        userServices: authbloc.userServices,
                      );
                    }
                    return LoginForm(
                      authBloc: authbloc,
                      userServices: authbloc.userServices,
                    );
                  },
                )
                // child: LoginForm(),
                ),
          ],
        ),
      ),
    );
  }
}
