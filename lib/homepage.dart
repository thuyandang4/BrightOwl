import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Color lighten(Color color, [double amount = .1]) {
      assert(amount >= 0 && amount <= 1);

      final hsl = HSLColor.fromColor(color);
      final hslLight =
          hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

      return hslLight.toColor();
    }

    String hexColor = "#FBB628";
    Color yellow =
        Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final lightYellow = lighten(yellow, 0.28);
    final lightOrange = lighten(yellow, 0.11);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Image.asset(
              'assets/bright owl logo.jpg',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 0.15,
            ),
            Image.asset(
              'assets/logo.jpg',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 0.15,
            ),
          ]),
        ]),
      ),
      body: Column(
        children: [
          SizedBox(
            height: width * 0.03,
          ),
          const Padding(
            padding: EdgeInsets.all(0.05),
            child: Text(
              'Hello, Sofia!',
              style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w900),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: width * 0.0001,
                ),
                const Text(
                  'How can we help you today?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(
            height: width * 0.09,
          ),
          Button(
            iconPath: 'assets/books.jpg',
            label: 'Study Skills',
            color: lightYellow,
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.11,
            arrowWidth: 120,
            onPressed: () {},
          ),
          SizedBox(
            height: width * 0.033,
          ),
          Button(
            iconPath: 'assets/Writing.jpg',
            label: 'Test Prep',
            color: lightYellow,
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.09,
            arrowWidth: 140,
            onPressed: () {},
          ),
          SizedBox(
            height: width * 0.033,
          ),
          Button(
            iconPath: 'assets/Pen.jpg',
            label: 'Writing',
            color: lightYellow,
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.11,
            arrowWidth: 155,
            onPressed: () {},
          ),
          SizedBox(
            height: width * 0.033,
          ),
          Button(
            iconPath: 'assets/Math.jpg',
            label: 'Math',
            color: lightYellow,
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.11,
            arrowWidth: 170,
            onPressed: () {},
          ),
          SizedBox(
            height: width * 0.033,
          ),
          Button(
            iconPath: 'assets/Science.jpg',
            label: 'Science',
            color: lightYellow,
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.11,
            arrowWidth: 150,
            onPressed: () {},
          ),
          SizedBox(
            height: width * 0.033,
          ),
          Button(
              iconPath: 'assets/History.jpg',
              label: 'History',
              color: lightYellow,
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.11,
              arrowWidth: 155,
              onPressed: () {}),
          SizedBox(
            height: width * 0.162,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(width: 65, height: 0.6),
                        Image.asset(
                          'assets/Owl.jpg',
                          height: MediaQuery.of(context).size.height * 0.065,
                          width: MediaQuery.of(context).size.width * 0.11,
                        ),
                      ],
                    ),
                    SizedBox(width: 0.5, height: 1),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(width: 0.5, height: 20),
                        Text(
                          'Ollie Tip!',
                          style: TextStyle(
                            fontSize: 13.5,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        Text(
                          'Think we could make something',
                          style: TextStyle(
                            fontSize: 13.5,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '         better? Tell us today!',
                          style: TextStyle(
                            fontSize: 13.5,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(24),
                ),
                height: width * 0.25,
                width: width * 0.7,
              )
            ],
          ),
          SizedBox(
            height: width * 0.1,
          ),
          Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  bottomBar(
                    label: 'Home',
                    color: lightYellow,
                    width: 0.043,
                  ),
                  SizedBox(
                    height: width * 0,
                  ),
                  bottomBar(
                    label: 'Learn',
                    color: lightOrange,
                    width: 0.04,
                  ),
                  SizedBox(
                    height: width * 0,
                  ),
                  bottomBar(
                    label: 'Messages',
                    color: lightYellow,
                    width: 0.025,
                  ),
                  SizedBox(
                    height: width * 0,
                  ),
                  bottomBar(
                    label: 'Account',
                    color: lightOrange,
                    width: 0.023,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String iconPath;
  final String label;
  final double arrowWidth;
  final Color color;
  final double width;
  final double height;
  final VoidCallback onPressed;

  const Button({
    required this.iconPath,
    required this.label,
    required this.color,
    required this.width,
    required this.height,
    required this.arrowWidth,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: Row(
            children: [
              SizedBox(width: 17),
              Image.asset(
                iconPath,
                height: height,
                width: width,
              ),
              SizedBox(width: 7),
              Text(
                label,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              SizedBox(width: arrowWidth),
              Image.asset(
                'assets/arrrows.jpg',
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width * 0.13,
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        height: MediaQuery.of(context).size.width * 0.113,
        width: MediaQuery.of(context).size.width * 0.85,
      ),
    );
  }
}

class bottomBar extends StatelessWidget {
  final String label;

  final Color color;
  final double width;

  const bottomBar({
    required this.label,
    required this.color,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          children: [
            Container(
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.height * width,
                    ),
                    Text(
                      label,
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: color,
              ),
              height: MediaQuery.of(context).size.width * 0.057,
              width: MediaQuery.of(context).size.width * 0.25,
            ),
          ],
        ),
      ),
    );
  }
}
