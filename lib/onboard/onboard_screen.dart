import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../home.dart';
import '../main.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController();

  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: onBoardData.length,
                controller: controller,
                onPageChanged: (index) {
                  setState(() {
                    isLastPage = index == 2;
                  });
                },
                itemBuilder: (context, index) => OnBoardContent(
                  image: onBoardData[index].image,
                  title: onBoardData[index].title,
                  desc: onBoardData[index].desc,
                ),
              ),
            ),
            isLastPage
                ? MyElevatedButton(
                    width: double.infinity,
                    onPressed: () async {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const HomePage()));
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: const Text('Get Started'),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {
                            controller.animateToPage(
                              2,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: const Text("Skip")),
                      Center(
                        child: SmoothPageIndicator(
                          controller: controller,
                          count: onBoardData.length,
                          effect: const ExpandingDotsEffect(
                              spacing: 16,
                              dotColor: Colors.black26,
                              activeDotColor: Colors.purple,
                              dotWidth: 8,
                              dotHeight: 8),
                          onDotClicked: (index) => controller.animateToPage(
                              index,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            controller.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut);
                          },
                          child: const Text("Next")),
                    ],
                  )
          ],
        ),
      )),
    );
  }
}

class OnBoard {
  final String image, title, desc;

  OnBoard({required this.image, required this.title, required this.desc});
}

final List<OnBoard> onBoardData = [
  OnBoard(
      image: "assets/images/onboard-3.png",
      title: "Splitbill",
      desc: "Manage your expense \neasily."),
  OnBoard(
      image: "assets/images/onboard-2.png",
      title: "",
      desc: "Manage your expense \neasily."),
  OnBoard(
      image: "assets/images/onboard-1.png",
      title: "",
      desc: "Manage your expense \neasily."),
];

class OnBoardContent extends StatelessWidget {
  const OnBoardContent({
    super.key,
    required this.image,
    required this.title,
    required this.desc,
  });

  final String image, title, desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        MyGradientText(
          title,
          style: const TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w600,
          ),
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 238, 73, 253),
                Color.fromARGB(255, 91, 85, 203)
              ]),
        ),
        const SizedBox(
          height: 48,
        ),
        Image.asset(
          image,
          height: 250,
        ),
        const Spacer(),
        const SizedBox(
          height: 24,
        ),
        Text(
          desc,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.w400),
        ),
        const Spacer(),
      ],
    );
  }
}

class MyGradientText extends StatelessWidget {
  const MyGradientText(
    this.text, {
    super.key,
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}

class MyElevatedButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget child;

  const MyElevatedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.borderRadius,
    this.width,
    this.height = 44.0,
    this.gradient = const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color.fromARGB(255, 238, 73, 253),
          Color.fromARGB(255, 91, 85, 203)
        ]),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(0);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child,
      ),
    );
  }
}
