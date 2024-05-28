import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';
import 'package:badges/badges.dart' as badges;
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        centerTitle: false,
        title: Text('Shopping App'),
        actions: [
          Center(
            child: badges.Badge(
              position: badges.BadgePosition.topEnd(top: -10, end: -12),
              showBadge: true,
              ignorePointer: false,
              onTap: () {},
              badgeContent: Text('3'),
              badgeAnimation: badges.BadgeAnimation.slide(
                toAnimate: true,
                animationDuration: Duration(milliseconds: 800),
                colorChangeAnimationDuration: Duration(
                  seconds: 1,
                ),
                loopAnimation: false,
                curve: Curves.fastOutSlowIn,
              ),
              badgeStyle: badges.BadgeStyle(
                shape: badges.BadgeShape.circle,
                badgeColor: Colors.green,
                padding: EdgeInsets.all(5),
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(color: Colors.white, width: 2),
                badgeGradient: badges.BadgeGradient.linear(
                  colors: [Colors.red, Colors.orange],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                elevation: 0,
              ),
              child: Icon(Icons.shopping_bag_outlined),
            ),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Icon(Icons.chat_bubble),
              Icon(CupertinoIcons.chat_bubble),
              Icon(FontAwesomeIcons.searchengin),
              Icon(Icons.add),
              Icon(CupertinoIcons.add),
              Icon(FontAwesomeIcons.addressBook),
              Icon(Icons.home),
              Icon(CupertinoIcons.home),
              Icon(FontAwesomeIcons.home),
              Icon(FontAwesomeIcons.angleDown),
              ReadMoreText(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show All',
                trimExpandedText: 'Show Less',
                moreStyle: TextStyle(color: Colors.black),
                style: TextStyle(color: Colors.white),
                colorClickableText: Colors.black,
              ),
              SizedBox(height: 10),
              AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText(
                    "Let's Do This!!!",
                    textStyle: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  RotateAnimatedText(
                    "Ok bro, Let's Do This!!!",
                    textStyle: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ],
                totalRepeatCount: 10,
              ),
              SizedBox(
                width: 250.0,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Agne',
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText('Discipline is the best tool'),
                      TypewriterAnimatedText('Design first, then code'),
                      TypewriterAnimatedText(
                          'Do not patch bugs out, rewrite them'),
                      TypewriterAnimatedText(
                          'Do not test bugs out, design them out'),
                    ],
                    totalRepeatCount: 10,
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(width: 20.0, height: 100.0),
                  const Text(
                    'Be',
                    style: TextStyle(fontSize: 43.0),
                  ),
                  const SizedBox(width: 20.0, height: 100.0),
                  DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Horizon',
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        RotateAnimatedText('AWESOME'),
                        RotateAnimatedText('OPTIMISTIC'),
                        RotateAnimatedText('DIFFERENT'),
                      ],
                      onTap: () {
                        print("Tap Event");
                      },
                      // totalRepeatCount: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
