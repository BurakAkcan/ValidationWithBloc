import 'package:blocvalidation/bloc/sign_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignEmailView extends StatelessWidget {
  SignEmailView({Key? key}) : super(key: key);
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            BlocBuilder<SignBloc, SignState>(builder: (context, state) {
              if (state is SignInErrorState) {
                return Center(
                  child: Text(state.message),
                );
              } else {
                return Container();
              }
            }),
            Card(
              color: Colors.white54,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: controllerEmail,
                    onChanged: (value) {
                      BlocProvider.of<SignBloc>(context).add(SignInChangedEvent(
                          emailValue: controllerEmail.text,
                          passwordValue: controllerPassword.text));
                    },
                    decoration: InputDecoration(
                      hintText: 'E mail girin',
                    ),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: controllerPassword,
                  decoration: InputDecoration(
                    hintText: 'E mail girin',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            BlocBuilder<SignBloc, SignState>(
              builder: (context, state) {
                if (state is SignInLoadingState) {
                  return CircularProgressIndicator();
                }
                return CupertinoButton(
                  color: (state is SignInValided) ? Colors.green : Colors.red,
                  child: Text('Sign In'),
                  onPressed: () {
                    if (state is SignInValided) {
                      BlocProvider.of<SignBloc>(context).add(
                          SignInSubmittedEvent(
                              email: controllerEmail.text,
                              password: controllerPassword.text));
                    }
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
