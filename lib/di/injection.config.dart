// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:battery/battery.dart' as _i3;
import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import '../core/util/handle_call.dart' as _i6;
import '../data/datasourse/api/student_api.dart' as _i8;
import '../data/datasourse/local/local_data_source.dart' as _i9;
import '../data/datasourse/network/connectivity_checker.dart' as _i5;
import '../data/datasourse/remote/remote_data_sorce.dart' as _i10;
import '../data/repository/eshule_repository_impl.dart' as _i12;
import '../domain/repository/eshule_repository.dart' as _i11;
import '../domain/usecase/common/check_auth.dart' as _i19;
import '../domain/usecase/common/check_battery.dart' as _i20;
import '../domain/usecase/common/check_connection.dart' as _i21;
import '../domain/usecase/common/clear_prefs.dart' as _i22;
import '../domain/usecase/common/get_assignment.dart' as _i24;
import '../domain/usecase/common/get_choice.dart' as _i26;
import '../domain/usecase/common/get_course.dart' as _i28;
import '../domain/usecase/common/get_pdf.dart' as _i29;
import '../domain/usecase/common/get_question.dart' as _i31;
import '../domain/usecase/common/get_user.dart' as _i33;
import '../domain/usecase/common/login.dart' as _i34;
import '../domain/usecase/common/logout.dart' as _i35;
import '../domain/usecase/common/refresh_token.dart' as _i37;
import '../domain/usecase/common/register.dart' as _i38;
import '../domain/usecase/student/answer_question.dart' as _i16;
import '../domain/usecase/student/apply_course.dart' as _i17;
import '../domain/usecase/student/start_assignment.dart' as _i13;
import '../domain/usecase/student/submit_assignment.dart' as _i14;
import '../domain/usecase/student/unnaply_course.dart' as _i15;
import '../presentation/bloc/apply_course/application_bloc.dart' as _i40;
import '../presentation/bloc/attempt/attempt_bloc.dart' as _i18;
import '../presentation/bloc/auth/auth_bloc.dart' as _i41;
import '../presentation/bloc/battery/battery_bloc.dart' as _i42;
import '../presentation/bloc/clear_prefs/clear_prefs_bloc.dart' as _i23;
import '../presentation/bloc/dashboard/dashboard_bloc.dart' as _i43;
import '../presentation/bloc/get_assignment/get_assignment_bloc.dart' as _i25;
import '../presentation/bloc/get_choice/get_choice_bloc.dart' as _i27;
import '../presentation/bloc/get_pdf/get_pdf_bloc.dart' as _i30;
import '../presentation/bloc/get_question/get_question_bloc.dart' as _i32;
import '../presentation/bloc/network/ntwork_bloc.dart' as _i36;
import '../presentation/bloc/splash_bloc/splash_bloc.dart' as _i39;
import 'module_injection.dart' as _i44; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectionModules = _$InjectionModules();
  gh.lazySingleton<_i3.Battery>(() => injectionModules.battery);
  gh.lazySingleton<_i4.Connectivity>(() => injectionModules.connectivity);
  gh.lazySingleton<_i5.ConnectivityChecker>(() => _i5.ConnectivityCheckerImp());
  gh.lazySingleton<_i6.HandleNetworkCall>(() => _i6.HandleNetworkCall());
  await gh.factoryAsync<_i7.SharedPreferences>(() => injectionModules.prefs,
      preResolve: true);
  gh.lazySingleton<_i8.StudentService>(() => _i8.StudentServiceImpl());
  gh.lazySingleton<_i9.LocalDataSource>(
      () => _i9.LocalDataSourceImpl(get<_i7.SharedPreferences>()));
  gh.lazySingleton<_i10.RemoteDataSource>(() => _i10.RemoteDataSourceImpl(
      get<_i8.StudentService>(), get<_i6.HandleNetworkCall>()));
  gh.lazySingleton<_i11.Repository>(() => _i12.RepositoryImpl(
      get<_i9.LocalDataSource>(),
      get<_i10.RemoteDataSource>(),
      get<_i4.Connectivity>(),
      get<_i3.Battery>()));
  gh.lazySingleton<_i13.StartAssignment>(
      () => _i13.StartAssignment(get<_i11.Repository>()));
  gh.lazySingleton<_i14.SubmitAssignment>(
      () => _i14.SubmitAssignment(get<_i11.Repository>()));
  gh.lazySingleton<_i15.UnapplyCourse>(
      () => _i15.UnapplyCourse(get<_i11.Repository>()));
  gh.lazySingleton<_i16.AnswerQuestion>(
      () => _i16.AnswerQuestion(get<_i11.Repository>()));
  gh.lazySingleton<_i17.ApplyCourse>(
      () => _i17.ApplyCourse(get<_i11.Repository>()));
  gh.factory<_i18.AttemptBloc>(() => _i18.AttemptBloc(
      get<_i16.AnswerQuestion>(),
      get<_i13.StartAssignment>(),
      get<_i14.SubmitAssignment>()));
  gh.lazySingleton<_i19.CheckAuth>(
      () => _i19.CheckAuth(get<_i11.Repository>()));
  gh.lazySingleton<_i20.CheckBattery>(
      () => _i20.CheckBattery(get<_i11.Repository>()));
  gh.lazySingleton<_i21.CheckConnection>(
      () => _i21.CheckConnection(get<_i11.Repository>()));
  gh.lazySingleton<_i22.ClearPrefs>(
      () => _i22.ClearPrefs(get<_i11.Repository>()));
  gh.factory<_i23.ClearPrefsBloc>(
      () => _i23.ClearPrefsBloc(get<_i22.ClearPrefs>()));
  gh.lazySingleton<_i24.GetAssignment>(
      () => _i24.GetAssignment(get<_i11.Repository>()));
  gh.factory<_i25.GetAssignmentBloc>(
      () => _i25.GetAssignmentBloc(get<_i24.GetAssignment>()));
  gh.lazySingleton<_i26.GetChoice>(
      () => _i26.GetChoice(get<_i11.Repository>()));
  gh.factory<_i27.GetChoiceBloc>(
      () => _i27.GetChoiceBloc(get<_i26.GetChoice>()));
  gh.lazySingleton<_i28.GetCourse>(
      () => _i28.GetCourse(get<_i11.Repository>()));
  gh.lazySingleton<_i29.GetPdf>(() => _i29.GetPdf(get<_i11.Repository>()));
  gh.factory<_i30.GetPdfBloc>(() => _i30.GetPdfBloc(get<_i29.GetPdf>()));
  gh.lazySingleton<_i31.GetQuestion>(
      () => _i31.GetQuestion(get<_i11.Repository>()));
  gh.factory<_i32.GetQuestionBloc>(
      () => _i32.GetQuestionBloc(get<_i31.GetQuestion>()));
  gh.lazySingleton<_i33.GetUser>(() => _i33.GetUser(get<_i11.Repository>()));
  gh.lazySingleton<_i34.Login>(() => _i34.Login(get<_i11.Repository>()));
  gh.lazySingleton<_i35.Logout>(() => _i35.Logout(get<_i11.Repository>()));
  gh.factory<_i36.NtworkBloc>(
      () => _i36.NtworkBloc(get<_i21.CheckConnection>()));
  gh.lazySingleton<_i37.RefreshToken>(
      () => _i37.RefreshToken(get<_i11.Repository>()));
  gh.lazySingleton<_i38.Register>(() => _i38.Register(get<_i11.Repository>()));
  gh.factory<_i39.SplashBloc>(() => _i39.SplashBloc(
      get<_i19.CheckAuth>(), get<_i35.Logout>(), get<_i37.RefreshToken>()));
  gh.factory<_i40.ApplicationBloc>(() =>
      _i40.ApplicationBloc(get<_i17.ApplyCourse>(), get<_i15.UnapplyCourse>()));
  gh.factory<_i41.AuthBloc>(
      () => _i41.AuthBloc(get<_i34.Login>(), get<_i38.Register>()));
  gh.factory<_i42.BatteryBloc>(
      () => _i42.BatteryBloc(get<_i20.CheckBattery>()));
  gh.factory<_i43.DashboardBloc>(
      () => _i43.DashboardBloc(get<_i28.GetCourse>()));
  return get;
}

class _$InjectionModules extends _i44.InjectionModules {}
