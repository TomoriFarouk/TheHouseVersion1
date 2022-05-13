import 'package:flutter/material.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/screen/log_in/login.dart';
import 'package:furniture_ui/presentation/screen/product/product_details.dart';
import 'package:furniture_ui/presentation/screen/screen.dart';
import 'package:furniture_ui/presentation/screen/sign_up/widget/confirmEmail_page.dart';
import 'package:furniture_ui/presentation/widget/widget.dart';

class Routes {
  static const String splashRoute = "/";
  static const String filterRoute = "/filter";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String tabRoute = "/tab";
  static const String mainRoute = "/main";
  static const String signUpRoute = "/signup";
  static const String confirmEmailRoute = "/cemail";
  static const String productPageRoute = "/productPage";
  static const String cartRoute = "/cart";
  static const String productDetailRoute = "/details";
  static const String shippingScreenRoute = "/shippingScreen";
  static const String addShippingScreenRoute = "/addShippingScreen";
  static const String paymentScreenRoute = "/paymentScreen";
  static const String reviewScreenRoute = "/reviewScreen";
  static const String listingDraftScreen = "/listingDraft";
  static const String lisitngClosedScreen = "/listingClosed";
  static const String lisitngScreen = "/listing";
}

class RoutesGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      // case Routes.splashRoute:
      //   return MaterialPageRoute(builder: (_) => SplashView());
      // case Routes.loginRoute:
      //   return MaterialPageRoute(builder: (_) => LoginView());
      case Routes.filterRoute:
        return MaterialPageRoute(
            builder: (_) => FilterPage(
                  pricing: Pricing.pricing.toList(),
                  discount: Discount.discount.toList(),
                ));
      case Routes.productPageRoute:
        return ProductPage.getRoute(subcategory: routeSettings.arguments as SubCategory);
      case Routes.productDetailRoute:
        return ProductDetails.getRoute(product: routeSettings.arguments as Product);
      case Routes.tabRoute:
        return MaterialPageRoute(builder: (_) => TabWidget());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case Routes.signUpRoute:
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case Routes.confirmEmailRoute:
        return MaterialPageRoute(builder: (_) => ConfirmEmail());
      case Routes.cartRoute:
        return MaterialPageRoute(builder: (_) => CartScreen());
      case Routes.shippingScreenRoute:
        return MaterialPageRoute(builder: (_) => ShippingScreen());
      case Routes.paymentScreenRoute:
        return MaterialPageRoute(builder: (_) => PaymentScreen());
      case Routes.addShippingScreenRoute:
        return MaterialPageRoute(builder: (_) => AddShippingScreen());
      case Routes.reviewScreenRoute:
        return MaterialPageRoute(builder: (_) => ReviewScreen());
      case Routes.listingDraftScreen:
        return MaterialPageRoute(builder: (_) => DraftScreen());
      case Routes.lisitngClosedScreen:
        return MaterialPageRoute(builder: (_) => ClosedScreen());
      case Routes.lisitngScreen:
        return MaterialPageRoute(builder: (_) => ListingScreen());
      default:
        return UnDefinedRoute();
    }
  }

  static Route<dynamic> UnDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text(
                    //AppStrings.noRouteFound
                    "error"),
              ),
              body: Center(
                child: Text(
                    //  AppStrings.
                    "noRouteFound"),
              ),
            ));
  }
}
