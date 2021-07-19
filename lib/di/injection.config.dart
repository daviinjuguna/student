// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../core/util/handle_call.dart' as _i5;
import '../features/data/datasourse/api/student_api.dart' as _i7;
import '../features/data/datasourse/local/local_data_source.dart' as _i8;
import '../features/data/datasourse/network/connectivity_checker.dart' as _i4;
import '../features/data/datasourse/remote/remote_data_sorce.dart' as _i9;
import '../features/data/repository/eshule_repository_impl.dart' as _i11;
import '../features/domain/repository/eshule_repository.dart' as _i10;
import '../features/domain/usecase/common/check_auth.dart' as _i18;
import '../features/domain/usecase/common/check_connection.dart' as _i19;
import '../features/domain/usecase/common/clear_prefs.dart' as _i20;
import '../features/domain/usecase/common/get_assignment.dart' as _i22;
import '../features/domain/usecase/common/get_choice.dart' as _i24;
import '../features/domain/usecase/common/get_course.dart' as _i26;
import '../features/domain/usecase/common/get_pdf.dart' as _i27;
import '../features/domain/usecase/common/get_question.dart' as _i29;
import '../features/domain/usecase/common/get_user.dart' as _i31;
import '../features/domain/usecase/common/login.dart' as _i32;
import '../features/domain/usecase/common/logout.dart' as _i33;
import '../features/domain/usecase/common/refresh_token.dart' as _i35;
import '../features/domain/usecase/common/register.dart' as _i36;
import '../features/domain/usecase/student/answer_question.dart' as _i15;
import '../features/domain/usecase/student/apply_course.dart' as _i16;
import '../features/domain/usecase/student/start_assignment.dart' as _i12;
import '../features/domain/usecase/student/submit_assignment.dart' as _i13;
import '../features/domain/usecase/student/unnaply_course.dart' as _i14;
import '../features/presentation/bloc/apply_course/application_bloc.dart'
    as _i38;
import '../features/presentation/bloc/attempt/attempt_bloc.dart' as _i17;
import '../features/presentation/bloc/auth/auth_bloc.dart' as _i39;
import '../features/presentation/bloc/clear_prefs/clear_prefs_bloc.dart'
    as _i21;
import '../features/presentation/bloc/dashboard/dashboard_bloc.dart' as _i40;
import '../features/presentation/bloc/get_assignment/get_assignment_bloc.dart'
    as _i23;
import '../features/presentation/bloc/get_choice/get_choice_bloc.dart' as _i25;
import '../features/presentation/bloc/get_pdf/get_pdf_bloc.dart' as _i28;
import '../features/presentation/bloc/get_question/get_question_bloc.dart'
    as _i30;
import '../features/presentation/bloc/network/ntwork_bloc.dart' as _i34;
import '../features/presentation/bloc/splash_bloc/splash_bloc.dart' as _i37;
import 'module_injection.dart' as _i41; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectionModules = _$InjectionModules();
  gh.lazySingleton<_i3.Connectivity>(() => injectionModules.connectivity);
  gh.lazySingleton<_i4.ConnectivityChecker>(() => _i4.ConnectivityCheckerImp());
  gh.lazySingleton<_i5.HandleNetworkCall>(() => _i5.HandleNetworkCall());
  await gh.factoryAsync<_i6.SharedPreferences>(() => injectionModules.prefs,
      preResolve: true);
  gh.lazySingleton<_i7.StudentService>(() => _i7.StudentServiceImpl());
  gh.lazySingleton<_i8.LocalDataSource>(
      () => _i8.LocalDataSourceImpl(get<_i6.SharedPreferences>()));
  gh.lazySingleton<_i9.RemoteDataSource>(() => _i9.RemoteDataSourceImpl(
      get<_i7.StudentService>(), get<_i5.HandleNetworkCall>()));
  gh.lazySingleton<_i10.Repository>(() => _i11.RepositoryImpl(
      get<_i8.LocalDataSource>(),
      get<_i9.RemoteDataSource>(),
      get<_i3.Connectivity>()));
  gh.lazySingleton<_i12.StartAssignment>(
      () => _i12.StartAssignment(get<_i10.Repository>()));
  gh.lazySingleton<_i13.SubmitAssignment>(
      () => _i13.SubmitAssignment(get<_i10.Repository>()));
  gh.lazySingleton<_i14.UnapplyCourse>(
      () => _i14.UnapplyCourse(get<_i10.Repository>()));
  gh.lazySingleton<_i15.AnswerQuestion>(
      () => _i15.AnswerQuestion(get<_i10.Repository>()));
  gh.lazySingleton<_i16.ApplyCourse>(
      () => _i16.ApplyCourse(get<_i10.Repository>()));
  gh.factory<_i17.AttemptBloc>(() => _i17.AttemptBloc(
      get<_i15.AnswerQuestion>(),
      get<_i12.StartAssignment>(),
      get<_i13.SubmitAssignment>()));
  gh.lazySingleton<_i18.CheckAuth>(
      () => _i18.CheckAuth(get<_i10.Repository>()));
  gh.lazySingleton<_i19.CheckConnection>(
      () => _i19.CheckConnection(get<_i10.Repository>()));
  gh.lazySingleton<_i20.ClearPrefs>(
      () => _i20.ClearPrefs(get<_i10.Repository>()));
  gh.factory<_i21.ClearPrefsBloc>(
      () => _i21.ClearPrefsBloc(get<_i20.ClearPrefs>()));
  gh.lazySingleton<_i22.GetAssignment>(
      () => _i22.GetAssignment(get<_i10.Repository>()));
  gh.factory<_i23.GetAssignmentBloc>(
      () => _i23.GetAssignmentBloc(get<_i22.GetAssignment>()));
  gh.lazySingleton<_i24.GetChoice>(
      () => _i24.GetChoice(get<_i10.Repository>()));
  gh.factory<_i25.GetChoiceBloc>(
      () => _i25.GetChoiceBloc(get<_i24.GetChoice>()));
  gh.lazySingleton<_i26.GetCourse>(
      () => _i26.GetCourse(get<_i10.Repository>()));
  gh.lazySingleton<_i27.GetPdf>(() => _i27.GetPdf(get<_i10.Repository>()));
  gh.factory<_i28.GetPdfBloc>(() => _i28.GetPdfBloc(get<_i27.GetPdf>()));
  gh.lazySingleton<_i29.GetQuestion>(
      () => _i29.GetQuestion(get<_i10.Repository>()));
  gh.factory<_i30.GetQuestionBloc>(
      () => _i30.GetQuestionBloc(get<_i29.GetQuestion>()));
  gh.lazySingleton<_i31.GetUser>(() => _i31.GetUser(get<_i10.Repository>()));
  gh.lazySingleton<_i32.Login>(() => _i32.Login(get<_i10.Repository>()));
  gh.lazySingleton<_i33.Logout>(() => _i33.Logout(get<_i10.Repository>()));
  gh.factory<_i34.NtworkBloc>(
      () => _i34.NtworkBloc(get<_i19.CheckConnection>()));
  gh.lazySingleton<_i35.RefreshToken>(
      () => _i35.RefreshToken(get<_i10.Repository>()));
  gh.lazySingleton<_i36.Register>(() => _i36.Register(get<_i10.Repository>()));
  gh.factory<_i37.SplashBloc>(() => _i37.SplashBloc(
      get<_i18.CheckAuth>(), get<_i33.Logout>(), get<_i35.RefreshToken>()));
  gh.factory<_i38.ApplicationBloc>(() =>
      _i38.ApplicationBloc(get<_i16.ApplyCourse>(), get<_i14.UnapplyCourse>()));
  gh.factory<_i39.AuthBloc>(
      () => _i39.AuthBloc(get<_i32.Login>(), get<_i36.Register>()));
  gh.factory<_i40.DashboardBloc>(
      () => _i40.DashboardBloc(get<_i26.GetCourse>()));
  return get;
}

class _$InjectionModules extends _i41.InjectionModules {}
