import 'dart:io';

import 'package:auto_route/auto_route.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student/core/util/constant.dart';
import 'package:student/di/injection.dart';
import 'package:student/presentation/bloc/auth/auth_bloc.dart';

import 'widgets/already_have_account.dart';
import 'package:student/core/routes/app_router.gr.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //*controllers
  final _nameController = new TextEditingController();
  final _emailController = new TextEditingController();
  final _passwordController = new TextEditingController();
  final _confirmController = new TextEditingController();

  //*initializing bloc
  AuthBloc? _bloc;

  //* hiding showing pass
  bool _isHidden = true;

  @override
  void initState() {
    super.initState();
    _bloc = getIt<AuthBloc>();
  }

  @override
  void dispose() {
    super.dispose();
    _bloc!.close();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _confirmController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc!,
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            success: (e) {
              //*Route to hompage..for student and teacher
              print("logged In mama f");
              WidgetsBinding.instance!.addPostFrameCallback(
                (_) => context.router.replace(StudentHomeRoute()),
              );
            },
            error: (e) {
              //*display error message whe login failure
              //*show snackbar toast
              ScaffoldMessenger.maybeOf(context)
                ?..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.red,
                    behavior: SnackBarBehavior.fixed,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    )),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "REGISTER ERROR",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        // SizedBox(height: 3),
                        Text(e.message)
                      ],
                    ),
                  ),
                );
            },
          );
        },
        //TODO fix cupertinos
        child: Platform.isIOS
            ? CupertinoPageScaffold(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "STUDENT REGISTER",
                          style: TextStyle(
                            color: kBlackColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CupertinoFormSection(
                          header: Text("Register"),
                          children: [
                            CupertinoFormRow(
                              child: CupertinoTextFormFieldRow(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: _nameController,
                                keyboardType: TextInputType.name,
                                placeholder: "Enter your name",
                                validator: (value) {
                                  if (RegExp(nameRegex)
                                      .hasMatch(value!.trim().toLowerCase())) {
                                    // email = value;
                                    return null;
                                  } else {
                                    return "Enter a valid name";
                                  }
                                },
                                // decoration: BoxDecoration(),
                              ),
                            ),
                            CupertinoFormRow(
                              child: CupertinoTextFormFieldRow(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                placeholder: "Enter your email",
                                validator: (value) {
                                  if (RegExp(emailRegex)
                                      .hasMatch(value!.trim().toLowerCase())) {
                                    return null;
                                  } else {
                                    return "email must be valid";
                                  }
                                },
                                // decoration: BoxDecoration(),
                              ),
                            ),
                            CupertinoFormRow(
                              child: CupertinoTextFormFieldRow(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: _passwordController,
                                keyboardType: TextInputType.visiblePassword,
                                placeholder: "Enter your password",
                                validator: (value) {
                                  if (RegExp(passRegex)
                                      .hasMatch(value!.trim().toLowerCase())) {
                                    // email = value;
                                    return null;
                                  } else {
                                    return "Enter a valid password";
                                  }
                                },
                                // decoration: BoxDecoration(),
                              ),
                            ),
                            CupertinoFormRow(
                              child: CupertinoTextFormFieldRow(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: _confirmController,
                                keyboardType: TextInputType.visiblePassword,
                                placeholder: "Confirm your password",
                                validator: (value) {
                                  if (value!.trim() ==
                                      _passwordController.text.trim()) {
                                    return null;
                                  } else {
                                    return "passwords must match";
                                  }
                                },
                                // decoration: BoxDecoration(),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            : Scaffold(
                body: Container(
                  height: MediaQuery.of(context).size.height,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "STUDENT REGISTER",
                          style: TextStyle(
                            color: kBlackColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Name",
                          style: TextStyle(
                            color: kGreyColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: _nameController,
                          keyboardType: TextInputType.name,
                          validator: (value) {
                            if (RegExp(nameRegex)
                                .hasMatch(value!.trim().toLowerCase())) {
                              // email = value;
                              return null;
                            } else {
                              return "name must be valid";
                            }
                          },
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: "enter your name",
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Email",
                          style: TextStyle(
                            color: kGreyColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (RegExp(emailRegex)
                                .hasMatch(value!.trim().toLowerCase())) {
                              return null;
                            } else {
                              return "email must be valid";
                            }
                          },
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: "email@example.com",
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Password",
                          style: TextStyle(
                            color: kGreyColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: _passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: "enter your password",
                          ),
                          validator: (value) {
                            if (RegExp(passRegex).hasMatch(value!.trim())) {
                              return null;
                            } else {
                              return "password must be minimum of 6 alphanumerical";
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Confirm Password",
                          style: TextStyle(
                            color: kGreyColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          onChanged: (value) {},
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: _confirmController,
                          keyboardType: TextInputType.visiblePassword,
                          onFieldSubmitted: (value) {
                            _bloc!.add(
                              AuthEvent.register(
                                email:
                                    _emailController.text.trim().toLowerCase(),
                                password: _passwordController.text.trim(),
                                confirmPassword: _confirmController.text.trim(),
                                name: _nameController.text.trim(),
                              ),
                            );
                          },
                          validator: (value) {
                            if (value!.trim() ==
                                _passwordController.text.trim()) {
                              return null;
                            } else {
                              return "passwords must match";
                            }
                          },
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            hintText: "confirm your password",
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            String? text;
                            state.maybeMap(orElse: () {
                              text = "Register";
                            }, loading: (e) {
                              text = "Please Wait";
                            });
                            return MaterialButton(
                              elevation: 0,
                              color: kYellowColor,
                              child: Container(
                                width: double.infinity,
                                alignment: Alignment.center,
                                height: 50,
                                child: Text(
                                  text!,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                // if (_key.currentState!.validate()) {
                                print("is valid");

                                //*call register bloc
                                _bloc!.add(
                                  AuthEvent.register(
                                    email: _emailController.text
                                        .trim()
                                        .toLowerCase(),
                                    password: _passwordController.text.trim(),
                                    confirmPassword:
                                        _confirmController.text.trim(),
                                    name: _nameController.text.trim(),
                                  ),
                                );
                                // }
                              },
                            );
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AlreadyHaveAnAccountCheck(
                          color: kYellowColor,
                          press: () =>
                              AutoRouter.of(context).popAndPush(LoginRoute()),
                          login: false,
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
