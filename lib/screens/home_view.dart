import 'package:blocvalidation/bloc/sign_bloc.dart';

import 'package:blocvalidation/screens/sign_email_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sıgn in with Email'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(CupertinoPageRoute(
                builder: (context) => BlocProvider(
                  create: (context) => SignBloc(),
                  child: SignEmailView(),
                ),
              ));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent),
              child: const Center(
                  child: Text(
                'Sign with Email',
                style: TextStyle(fontSize: 18),
              )),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(8),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Sign with Google',
                    style: TextStyle(fontSize: 18),
                  ),
                  Icon(Icons.flutter_dash)
                ],
              )),
            ),
          ),
        ]),
      ),
    );
  }
}
