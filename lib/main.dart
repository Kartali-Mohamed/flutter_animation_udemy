import 'package:flutter/material.dart';
import 'package:flutter_animation_udemy/implicit_animations/AnimatedAlignExample.dart';
import 'package:flutter_animation_udemy/page_transitions/PageFadeTransition.dart';
import 'package:flutter_animation_udemy/page_transitions/PageMixScaleRtotateTransition.dart';
import 'package:flutter_animation_udemy/page_transitions/PageMixSizeFadeTransition.dart';
import 'package:flutter_animation_udemy/page_transitions/PageRtoateTransition.dart';
import 'package:flutter_animation_udemy/page_transitions/PageScaleTransition.dart';
import 'package:flutter_animation_udemy/page_transitions/PageSlideTransition.dart';
import 'package:flutter_animation_udemy/page_transitions/PageTwo.dart';

import 'explict_animations/AnimatedBuilderExample.dart';
import 'explict_animations/DefaultTextStyleTransitionExample.dart';
import 'explict_animations/FadeTransitionExample.dart';
import 'explict_animations/IndexedStackTransitionExample.dart';
import 'explict_animations/PositionedDirectionalTransitionExample.dart';
import 'explict_animations/PositionedTransitionExamlpe.dart';
import 'explict_animations/RotationTransitionExample.dart';
import 'explict_animations/SizeTransitionExample.dart';
import 'explict_animations/TweenAnimationBuilderExample.dart';
import 'implicit_animations/AnimatedContainerExample.dart';
import 'implicit_animations/AnimatedCrossFadeExample.dart';
import 'implicit_animations/AnimatedListExample.dart';
import 'implicit_animations/AnimatedOpacityExample.dart';
import 'implicit_animations/AnimatedPaddingExample.dart';
import 'implicit_animations/AnimatedPhysicalModelExample.dart';
import 'implicit_animations/AnimatedPositioned.dart';
import 'implicit_animations/AnimatedPositionedDirectional.dart';
import 'implicit_animations/AnimatedSwitcherExample.dart';
import 'implicit_animations/AnimatedTextStyle.dart';
import 'more_animations/CustomePainterExample.dart';
import 'more_animations/LottieSilderExample.dart';
import 'more_animations/RiveSilderExample.dart';
import 'page_transitions/PageSizeTransition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation Course',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
      home: const MyHomePage(),
      // home: const Scaffold(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Animation Course"),
        ),
        body: Center(
            child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AnimatedAlignExample()));
                },
                child: const Text("Animated Align Example",
                    style: TextStyle(color: Colors.white))),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AnimatedContainerExample()));
                },
                child: const Text("Animated Container Example",
                    style: TextStyle(color: Colors.white))),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AnimatedTextSizeExample()));
                },
                child: const Text("Animated TextSize Example",
                    style: TextStyle(color: Colors.white))),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AnimatedOpacityExample()));
                },
                child: const Text("Animated Opacity Example",
                    style: TextStyle(color: Colors.white))),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AnimatedPAddingExample()));
                },
                child: const Text("Animated PAdding Example",
                    style: TextStyle(color: Colors.white))),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AnimatedPhysicalModelExample()));
                },
                child: const Text("Animated Physical ModelExample",
                    style: TextStyle(color: Colors.white))),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AnimatedPositionedExample()));
                },
                child: const Text("Animated Position Example",
                    style: TextStyle(color: Colors.white))),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AnimatedPositionedDirectionalExample()));
                },
                child: const Text("Animated Positioned Directional Example",
                    style: TextStyle(color: Colors.white))),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AnimatedCrossFadeExample()));
                },
                child: const Text("Animated Cross Fade Example",
                    style: TextStyle(color: Colors.white))),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AnimatedSwitcherExample()));
                },
                child: const Text("Animated Switcher Example",
                    style: TextStyle(color: Colors.white))),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AnimatedListExample()));
                },
                child: const Text("Animated Lis Example",
                    style: TextStyle(color: Colors.white))),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const PositionedTransitionExamlpe()));
                },
                child: const Text("Positioned Transition Examlpe",
                    style: TextStyle(color: Colors.white))),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SizeTransitionExample()));
                },
                child: const Text("Size Transition Example",
                    style: TextStyle(color: Colors.white))),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const RotationTransitionExample()));
                },
                child: const Text("Rotation Transition Example",
                    style: TextStyle(color: Colors.white))),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AnimatedBuilderExample()));
                },
                child: const Text("Animated Builder Example",
                    style: TextStyle(color: Colors.white))),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FadeTransitionExample()));
                },
                child: const Text("Fade Transition Example",
                    style: TextStyle(color: Colors.white))),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const PositionedDirectionalTransitionExample()));
                },
                child: const Text("Positioned Directional Transition Example",
                    style: TextStyle(color: Colors.white))),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const TweenAnimationBuilderExample()));
                },
                child: const Text("Tween Animation Builder Example",
                    style: TextStyle(color: Colors.white))),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const DefaultTextStyleTransitionExample()));
                },
                child: const Text("Default TextStyle Transition Example",
                    style: TextStyle(color: Colors.white))),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const IndexedStackTransitionExample()));
                },
                child: const Text("Indexed Stack Transition Example",
                    style: TextStyle(color: Colors.white))),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.of(context)
                      .push(PageFadeTransition(const PageTwo()));
                },
                child: const Text(
                  "Page Fade Transition",
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.of(context)
                      .push(PageScaleTransition(const PageTwo()));
                },
                child: const Text(
                  "Page Scale Transition",
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.of(context)
                      .push(PageRotateTransition(const PageTwo()));
                },
                child: const Text(
                  "Page Rotate Transition",
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.of(context)
                      .push(PageSlideTransition(const PageTwo()));
                },
                child: const Text(
                  "Page Slide Transition",
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.of(context)
                      .push(PageSizeTransition(const PageTwo()));
                },
                child: const Text(
                  "Page Size Transition",
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.of(context)
                      .push(PageMixSizeFadeTransition(const PageTwo()));
                },
                child: const Text(
                  "Page Mix Size Fade Transition",
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.of(context)
                      .push(PageMixScaleRotateTransition(const PageTwo()));
                },
                child: const Text(
                  "Page Mix Scale Rotate Transition",
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CustomePainterExmaple()));
                },
                child: const Text(
                  "Custome Painter Exmaple",
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LottieSilderExample()));
                },
                child: const Text(
                  "Lottie Silder Example",
                  style: TextStyle(color: Colors.white),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RiveSilderExample()));
                },
                child: const Text(
                  "Rive Silder Example",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        )));
  }
}
