import 'package:application_flutter/bindings/navigation_menu.dart';
import 'package:application_flutter/screens/errors_screen/not_found_screen.dart';
import 'package:application_flutter/screens/home/home_screen.dart';
import 'package:application_flutter/screens/login/login.dart';
import 'package:application_flutter/screens/onboarding/onboarding.dart';
import 'package:application_flutter/screens/post/create_post/create_post.dart';
import 'package:application_flutter/screens/post/post.dart';
import 'package:application_flutter/screens/post/post_detail/post_detail.dart';
import 'package:application_flutter/screens/signup/signup.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static const String splashScreen = '/';
  static const String loginScreen = '/provider';
  static const String signUpScreen = '/signup';
  static const String homeScreen = '/home';
  static const String navigationMenu = '/navigation-menu';
  static const String postScreen = '/post';
  static const String postDetailScreen = '/post-detail';
  static const String createPostScreen = '/create-post';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
          settings: settings,
        );
      case loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
          settings: settings,
        );
      case signUpScreen:
        return MaterialPageRoute(
          builder: (context) => const SignupScreen(),
          settings: settings,
        );

      case homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
          settings: settings,
        );

      case navigationMenu:
        return MaterialPageRoute(
          builder: (context) => const NavigationMenu(),
          settings: settings,
        );

      case postScreen:
        return MaterialPageRoute(
          builder: (context) => const PostScreen(),
          settings: settings,
        );
      case postDetailScreen:
        return MaterialPageRoute(
          builder: (context) => const PostDetailScreen(),
          settings: settings,
        );

      case createPostScreen:
        return MaterialPageRoute(
          builder: (context) => const CreatePostScreen(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundScreen(),
          settings: settings,
        );
    }
  }
}
