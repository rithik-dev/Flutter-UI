import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/UI-1/screens/add_new_payment_method_screen.dart';
import 'package:flutter_ui/UI/UI-1/screens/forgot_password_screen.dart';
import 'package:flutter_ui/UI/UI-1/screens/home_bottom_navigation_screen.dart';
import 'package:flutter_ui/UI/UI-1/screens/intro_screen.dart';
import 'package:flutter_ui/UI/UI-1/screens/login_screen.dart';
import 'package:flutter_ui/UI/UI-1/screens/manage_profile_screen.dart';
import 'package:flutter_ui/UI/UI-1/screens/order_details_screen.dart';
import 'package:flutter_ui/UI/UI-1/screens/otp_screen.dart';
import 'package:flutter_ui/UI/UI-1/screens/payment_methods_screen.dart';
import 'package:flutter_ui/UI/UI-1/screens/register_screen.dart';
import 'package:flutter_ui/UI/UI-1/screens/restaurant_screen.dart';
import 'package:flutter_ui/UI/UI-1/screens/search_screen.dart';
import 'package:flutter_ui/UI/UI-1/screens/verification_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    print("PUSHED ${settings.name} WITH ARGS: $args");
    switch (settings.name) {
      case RegisterScreen.id:
        return MaterialPageRoute(builder: (context) => RegisterScreen());
      case LoginScreen.id:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case RestaurantScreen.id:
        return MaterialPageRoute(builder: (context) => RestaurantScreen());
      case OrderDetailsScreen.id:
        return MaterialPageRoute(builder: (context) => OrderDetailsScreen());
      case IntroScreen.id:
        return MaterialPageRoute(builder: (context) => IntroScreen());
      case VerificationScreen.id:
        return MaterialPageRoute(builder: (context) => VerificationScreen());
      case OTPScreen.id:
        return MaterialPageRoute(builder: (context) => OTPScreen());
      case ManageProfileScreen.id:
        return MaterialPageRoute(builder: (context) => ManageProfileScreen());
      case PaymentMethodsScreen.id:
        return MaterialPageRoute(builder: (context) => PaymentMethodsScreen());
      case SearchScreen.id:
        return MaterialPageRoute(builder: (context) => SearchScreen());
      case HomeBottomNavigationScreen.id:
        return MaterialPageRoute(
          builder: (context) => HomeBottomNavigationScreen(),
        );
      case AddNewPaymentMethodScreen.id:
        return MaterialPageRoute(
          builder: (context) => AddNewPaymentMethodScreen(),
        );
      case ForgotPasswordScreen.id:
        return MaterialPageRoute(
          builder: (context) => ForgotPasswordScreen(),
        );
      default:
        return _errorRoute(settings.name);
    }
  }

  static Route<dynamic> _errorRoute(String? name) {
    return MaterialPageRoute(builder: (_) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Error'),
          ),
          body: Center(
            child: Text('ROUTE \n\n$name\n\nNOT FOUND'),
          ),
        ),
      );
    });
  }
}
