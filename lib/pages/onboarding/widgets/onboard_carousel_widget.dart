import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../model/onboarding_item.dart';

class OnBoardCarouselWidget extends StatelessWidget {
  final List<OnBoardItem> items;

  const OnBoardCarouselWidget({Key? key, required this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 1,
        height: size.height,
        autoPlay: true,
      ),
      items: items
          .map(
            (e) => Builder(
              builder: (_) => Container(
                child: Column(
                  children: [
                    Image.asset(
                      e.image,
                      height: size.height * 0.6,
                      width: size.width,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: size.height / 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        e.description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height / 20,
                    ),
                    ElevatedButton(onPressed: () {}, child: Text("Next"))
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
