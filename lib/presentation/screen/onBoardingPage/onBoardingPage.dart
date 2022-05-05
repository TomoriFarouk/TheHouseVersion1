import 'package:flutter/material.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'package:furniture_ui/presentation/resources/resource.dart';
import 'package:furniture_ui/presentation/screen/onBoardingPage/widget/onBoardingContent.dart';

class IntroPage extends StatefulWidget {
  final List<Splash> introModelList;
  const IntroPage({required this.introModelList});
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    double WIDTH = MediaQuery.of(context).size.width;
    double HEIGHT = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorManager.appbarwithBodyColor,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.779,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: widget.introModelList.length,
                itemBuilder: (context, index) => SplashContent(introModel: widget.introModelList[index])),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.221,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(widget.introModelList.length, (index) => buildDot(index: index)),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, Routes.loginRoute);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: ColorManager.appbarwithBodyColor,
                            elevation: 0,
                            side: BorderSide(
                              width: 1.0,
                              color: ColorManager.primaryColor,
                            ),
                            minimumSize: Size(WIDTH * 0.422, HEIGHT * 0.063), //////// HERE
                          ),
                          child: Text(
                            'Login',
                            style: Theme.of(context).textTheme.bodyText2!.copyWith(color: ColorManager.primaryColor),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            //    shadowColor: Colors.greenAccent,
                            //   elevation: 3,
                            side: BorderSide(
                              width: 1.0,
                              color: ColorManager.primaryColor,
                            ),
                            minimumSize: Size(WIDTH * 0.422, HEIGHT * 0.063), //////// HERE
                          ),
                          child: Text(
                            'Get Started',
                            style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Text('Continue as guest'),
                ],
              )),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      margin: EdgeInsets.only(right: 10),
      width: currentPage == index ? 20 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: currentPage == index ? ColorManager.primaryColor : Color(0xFFD4D4D4),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
