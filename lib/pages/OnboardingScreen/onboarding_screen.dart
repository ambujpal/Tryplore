import 'package:flutter/material.dart';
import 'package:tryplore_shop/pages/OnboardingScreen/log_in_screen.dart';
import 'package:tryplore_shop/pages/OnboardingScreen/on_boarding_model.dart';
import 'package:tryplore_shop/pages/home_page/home_page.dart';

class Onbording extends StatefulWidget {
  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1514136649217-b627b4b9cfb2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fG1vZGVsJTIwYmxhY2t8ZW58MHx8MHx8&w=1000&q=80'),
            fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 300,
          ),
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      Text(
                        contents[i].title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        contents[i].discription,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white70,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.all(40),
            width: double.infinity,
            decoration: ShapeDecoration(
              color: Colors.amber.shade300,
              shape: StadiumBorder(),
            ),
            child: TextButton(
              child: Text(
                currentIndex == contents.length - 1
                    ? "Let's Go"
                    : "Start Shopping",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                if (currentIndex == contents.length - 1) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LoginScreen(),
                    ),
                  );
                }
                _controller.nextPage(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.bounceInOut,
                );
              },
              // color: Theme.of(context).primaryColor,
              // textColor: Colors.white,
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(20),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have a account ?',
                style: TextStyle(color: Colors.white),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'LogIn',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ],
      ),
    )
        // ],
        );
    // );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white
          // color: Theme.of(context).primaryColor,
          ),
    );
  }
}
