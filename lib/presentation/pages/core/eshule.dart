import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student/core/util/constant.dart';
import 'package:student/di/injection.dart';
import 'package:student/presentation/bloc/battery/battery_bloc.dart';
import 'package:student/presentation/bloc/clear_prefs/clear_prefs_bloc.dart';
import 'package:student/presentation/bloc/network/ntwork_bloc.dart';
import 'package:student/presentation/bloc/splash_bloc/splash_bloc.dart';
import 'package:student/core/routes/app_router.gr.dart';
import 'package:student/presentation/components/network_dialog.dart';

//!coreWidget the root widget
//* this is the root widget of the app...first widget to run
class Eshule extends StatefulWidget {
  const Eshule({Key? key}) : super(key: key);

  @override
  _EshuleState createState() => _EshuleState();
}

final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
    new GlobalKey<ScaffoldMessengerState>();
final _navigatorKey = GlobalKey<NavigatorState>();
bool _isOpen = false;
final _appRouter = AppRouter(_navigatorKey);

class _EshuleState extends State<Eshule> {
  final _ntworkBloc = getIt<NtworkBloc>();
  final _splashBloc = getIt<SplashBloc>();
  final _batteryBloc = getIt<BatteryBloc>();
  final _prefsBloc = getIt<ClearPrefsBloc>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _prefsBloc.close();
    _ntworkBloc.close();
    _splashBloc.close();
    _batteryBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => _ntworkBloc),
        BlocProvider(create: (context) => _splashBloc),
        BlocProvider(create: (context) => _batteryBloc),
        BlocProvider(create: (context) => _prefsBloc),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<BatteryBloc, BatteryState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                loadSuccess: (value) {
                  if (value.batteryStatus == DISCHARGING) {
                    print("Dishcharge");
                  } else if (value.batteryStatus == CHARGING) {
                    print("Charging");
                  } else if (value.batteryStatus == CHARGED) {
                    print("Fully Charged");
                  }
                },
              );
            },
          ),
          BlocListener<NtworkBloc, NtworkState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                loadSuccess: (state) {
                  if (!state.connection) {
                    final _context =
                        _navigatorKey.currentState?.overlay?.context;
                    _isOpen = true;
                    showDialog(
                      context: _context ?? context,
                      builder: (context) => NetworkDialogue(),
                    ).then(
                      (value) => _isOpen = false,
                    );
                  } else {
                    if (_isOpen) {
                      _navigatorKey.currentState?.pop();
                    }
                  }
                },
              );
            },
          )
        ],
        child: Platform.isIOS ? buildCupertinoApp() : buildMaterialApp(context),
      ),
    );
  }
}

//*IOS App
Widget buildCupertinoApp() => CupertinoApp.router(
      title: "Student",
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      theme: CupertinoThemeData(
        scaffoldBackgroundColor: CupertinoColors.systemGrey6,
        primaryColor: kYellowColor,
        primaryContrastingColor: kPrimarySwatch,
        brightness: Brightness.light,
      ),
    );

//* Android App
Widget buildMaterialApp(BuildContext context) => MaterialApp.router(
      scaffoldMessengerKey: _scaffoldKey,
      title: "Student",
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[300],
        primaryColor: kYellowColor,
        primaryColorDark: kBlackColor,
        primarySwatch: kPrimarySwatch,
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme),
        appBarTheme: AppBarTheme(
          color: kBlackColor,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
      darkTheme: ThemeData(
          scaffoldBackgroundColor: kBlackColor,
          primaryColor: kYellowColor,
          primarySwatch: kPrimarySwatch,
          brightness: Brightness.dark,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: AppBarTheme(
            color: Colors.black,
            titleTextStyle: TextStyle(color: Colors.white),
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
          )),
    );
