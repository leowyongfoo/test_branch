import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List img = [
    "welcome-one.jpg",
    "welcome-two.jpg",
    "welcome-three.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: img.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(
                    // ignore: prefer_interpolation_to_compose_strings
                    "images/" + img[index]), fit: BoxFit.cover),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 100, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: 'Lexus'),
                        AppText(
                          text: 'LC500',
                          size: 30,
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 250,
                          child: AppText(
                            text:
                                'LC means Luxury coupe, comfort seat, long trip journey, sport mode with 0-100 only 3 sec',
                            size: 14,
                          ),
                        ),
                        const SizedBox(height: 20),
                        ResponsiveButton()
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 5,
                          height: index == indexDots ? 25:8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexDots ? Colors.blue : Colors.blue.withOpacity(0.3)
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
