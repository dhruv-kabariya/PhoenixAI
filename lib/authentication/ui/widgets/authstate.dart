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
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Text(
              "Welcome to AI Community",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Container(
              height: height - 150,
              width: width,
              margin: EdgeInsets.only(top: 50),
              child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
                cubit: BlocProvider.of<AuthenticationBloc>(context),
                builder: (context, state) {
                  if (state is AuthenticationLogin) {
                    return LoginForm(
                      authBloc: BlocProvider.of<AuthenticationBloc>(context),
                      userServices: BlocProvider.of<AuthenticationBloc>(context)
                          .userServices,
                    );
                  } else if (state is AuthenticationSignUp) {
                    return SignUpForm(
                      authbloc: BlocProvider.of<AuthenticationBloc>(context),
                      userServices: BlocProvider.of<AuthenticationBloc>(context)
                          .userServices,
                    );
                  }
                  return LoginForm(
                    authBloc: BlocProvider.of<AuthenticationBloc>(context),
                    userServices: BlocProvider.of<AuthenticationBloc>(context)
                        .userServices,
                  );
                },
              )
              // child: LoginForm(),
              ),
        ],
      ),
    );
  }
}
