import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_ui/data/generated/l10n.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/screen/Listing/listing_screen.dart';
import 'package:furniture_ui/presentation/screen/Listing/widget/active_listing.dart';

import 'package:furniture_ui/presentation/screen/vendor/vendor-Auth/vendor_signup_screen.dart';
import 'presentation/resources/resource.dart';
import 'presentation/screen/checkout/payment/payment_screen.dart';
import 'presentation/screen/checkout/shipping/add_shipping_details.dart';
import 'presentation/screen/screen.dart';
import 'package:flutter_portal/flutter_portal.dart';

import 'presentation/screen/vendor/account/account_screen.dart';
import 'presentation/screen/vendor/review/review_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Portal(
      child: ScreenUtilInit(
        designSize: Size(414, 896),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_) {
          return MaterialApp(
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              S.delegate
            ],
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            onGenerateRoute: RoutesGenerator.getRoute,
            theme: getApplicationTheme(),
            home:
                //VendorAccount(),
                //ReviewsScreen(),
                //VendorSignupScreen(),
                // ListingScreen()
                //FinanceScreen(),
                // ReviewScreen(),
                //PaymentScreen(),
                //AddShippingScreen(),,
                IntroPage(
              introModelList: Splash.splash.toList(),
            ),
            //CartScreen(),
            //ProductDetails(review: ProductReview.reviews.toList(),),
            //MyHomePage(title: "false"),
          );
        },
      ),
    );
  }
}
