import 'package:data_transfer/bloc/data_bloc.dart';
import 'package:data_transfer/bloc/data_event.dart';
import 'package:data_transfer/bloc/data_state.dart';
import 'package:data_transfer/screen/view_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatelessWidget {
  TextEditingController fNameController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('This is masrafi'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          child: ListView(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: [
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: fNameController,
                onChanged: (val) {},
                decoration: const InputDecoration(hintText: 'First Name'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: emailController,
                onChanged: (val) {},
                decoration: const InputDecoration(hintText: 'Email'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: cityController,
                onChanged: (val) {
                  // BlocProvider.of<SignUpBloc>(context).add(
                  //   SignUpTextChangeEvent(
                  //     fNameController.text,
                  //     lNameController.text,
                  //     emailController.text,
                  //     passwordController.text,
                  //   ),
                  // );
                },
                decoration: const InputDecoration(hintText: 'City'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: countryController,
                onChanged: (val) {
                  // BlocProvider.of<SignUpBloc>(context).add(
                  //   SignUpTextChangeEvent(
                  //     fNameController.text,
                  //     lNameController.text,
                  //     emailController.text,
                  //     passwordController.text,
                  //   ),
                  // );
                },
                decoration: const InputDecoration(hintText: 'Country'),
              ),
              const SizedBox(
                height: 10,
              ),
              CupertinoButton(
                child: const Text("Sign In"),
                onPressed: () {
                  BlocProvider.of<DataBloc>(context).add(DataInitialEvent(
                    name: fNameController.text,
                    email: emailController.text,
                    city: cityController.text,
                    country: countryController.text,
                  ));
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ViewData()));
                },
                color: Colors.blue,
              ),
            ],
          ),
        ));
  }
}
