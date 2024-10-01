part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const LOGIN = '/login';
  static const SIGNUP = '/signup';
  static const PROFILE = '/profile';
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
}
