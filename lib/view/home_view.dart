import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  // final CarouselController _controller =
  final CarouselController _controller = CarouselController();
  int _current = 0;
  Widget sliderWidget() {
    return CarouselSlider(
        carouselController: _controller,
        items: imgList.map((img) {
          return Builder(builder: (context) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image(
                image: NetworkImage(img),
                fit: BoxFit.fill,
              ),
            );
          });
        }).toList(),
        options: CarouselOptions(
          height: 300,
          autoPlay: false,
          autoPlayInterval: const Duration(seconds: 3),
          viewportFraction: 1.0,
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          },
          // enlargeCenterPage: true ?
        ));
  }

  Widget sliderIndicator() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imgList.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(width: 12),
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 0,
              ),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  SizedBox(
                    height: 300,
                    child: Stack(children: [sliderWidget(), sliderIndicator()]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(children: [
                      GestureDetector(
                        child: Expanded(
                            child: Text("FOOD",
                                style: Theme.of(context).textTheme.titleMedium!
                                // .copyWith(color: Theme.of(context).colorScheme.primary),
                                )),
                      ),
                      Icon(Icons.chevron_right)
                    ]),
                  ),
                  const Divider(height: 4, color: Colors.grey),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          Image.asset("assets/images/coffee.jpeg", height: 80),
                          Text("CAFE"),
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          Image.asset("assets/images/coffee.jpeg", height: 80),
                          Text("FOOD")
                        ],
                      )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
