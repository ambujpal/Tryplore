import 'package:flutter/material.dart';
import 'package:tryplore_shop/pages/OnboardingScreen/forgot_password_screen.dart';
import 'package:tryplore_shop/pages/OnboardingScreen/log_in_screen.dart';
import 'package:tryplore_shop/pages/OnboardingScreen/on_boarding_screen1.dart';
import 'package:tryplore_shop/pages/OnboardingScreen/onboarding_screen.dart';
import 'package:tryplore_shop/pages/OnboardingScreen/sign_up_screen.dart';
import 'package:tryplore_shop/pages/home_page/home_page.dart';
// import 'package:tryplore_shop/pages/home_page/main_page.dart';
import 'package:tryplore_shop/pages/logo_page/logo_page.dart';
import 'package:tryplore_shop/pages/onboarding_page/views/onboarding_page.dart';
import 'package:tryplore_shop/pages/product_details/product_details.dart';
import 'package:tryplore_shop/pages/product_page/product_page.dart';
import 'package:tryplore_shop/pages/profile_page/profile_page.dart';
import 'package:tryplore_shop/pages/wish_list/wish_list.dart';
import 'package:tryplore_shop/utils/routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (context) => LogoPage());
      case RouteName.loginScreen:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case RouteName.signUp:
        return MaterialPageRoute(builder: (context) => SignUp());
      case RouteName.forgotPassword:
        return MaterialPageRoute(builder: (context) => ForgotPassword());
      case RouteName.onBoarding1:
        return MaterialPageRoute(builder: (context) => OnBoarding_1());
      case RouteName.onBoarding:
        return MaterialPageRoute(builder: (context) => Onbording());
      // case RouteName.mainPage:
      //   return MaterialPageRoute(builder: (context) => MainPage());
      case RouteName.homePage:
        return MaterialPageRoute(builder: (context) => HomePage());
      case RouteName.productPage:
        return MaterialPageRoute(builder: (context) => ProductPage());
      case RouteName.profilePage:
        return MaterialPageRoute(builder: (context) => ProfilePage());
      case RouteName.onboardPage:
        return MaterialPageRoute(builder: (context) => OnboardingPage());
      case RouteName.wishList:
        return MaterialPageRoute(builder: (context) => WishList());
      case RouteName.productDetails:
        return MaterialPageRoute(builder: (context) => ProductDetails());

      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}
