import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:student/core/util/constant.dart';
import 'package:student/presentation/bloc/battery/battery_bloc.dart';
import 'package:student/presentation/bloc/network/ntwork_bloc.dart';
import 'package:student/presentation/bloc/splash_bloc/splash_bloc.dart';
import 'package:student/core/routes/app_router.gr.dart';

//*this is the first page route
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      context.read<NtworkBloc>().add(NtworkEvent.startet());
      context.read<BatteryBloc>().add(BatteryEvent.started());
      context.read<SplashBloc>().add(SplashEvent.refresh());
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            //dev
            loggedOut: (e) => WidgetsBinding.instance?.addPostFrameCallback(
                (_) => context.router.replace(LoginRoute())),

            //*if auth success go home{nyumbani}
            success: (e) => WidgetsBinding.instance?.addPostFrameCallback(
              (_) => context.router.replace(StudentHomeRoute()),
            ),
          ); //path to home
        },
        child: Platform.isIOS
            ? _buildSplashCupertinoScaffold(context: context)
            : _buildSplashMaterialScaffold(context: context));
  }
}

Widget _buildSplashCupertinoScaffold({
  required BuildContext context,
}) =>
    CupertinoPageScaffold(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(),
            ),
            SizedBox(
              height: 20,
            ),
            BlocBuilder<SplashBloc, SplashState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () => Center(
                    child: Text(
                      "Welcome to School",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  loading: (state) => CupertinoActivityIndicator(),
                );
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
            )
          ],
        ),
      ),
    );

Widget _buildSplashMaterialScaffold({
  required BuildContext context,
}) =>
    Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(80),
                child: SvgPicture.asset(
                  "assets/icons/cap_yellow.svg",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: BlocBuilder<SplashBloc, SplashState>(
                builder: (context, state) {
                  return state.map(
                    initial: (_) => Center(
                      child: CircularProgressIndicator.adaptive(
                        valueColor:
                            new AlwaysStoppedAnimation<Color>(kBlackColor),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    loading: (_) => Center(
                      child: CircularProgressIndicator.adaptive(
                        valueColor:
                            new AlwaysStoppedAnimation<Color>(kBlackColor),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    success: (_) => Center(
                      child: Text(
                        "Welcome to School",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    loggedOut: (_) => Center(
                      child: Text(
                        "Welcome to School",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    //TODO implment error container
                    error: (_) => Container(),
                  );
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
            )
          ],
        ),
      ),
    );
