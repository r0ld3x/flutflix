import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/constant.dart';
import 'package:movies_app/src/ui/details_screen.dart';

class TrendingSlider extends StatelessWidget {
  const TrendingSlider({
    super.key,
    required this.snapshot,
  });

  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: snapshot.data!.length,
        options: CarouselOptions(
          // height: 300,
          viewportFraction: 0.55,
          aspectRatio: 1.5,
          enlargeCenterPage: true,
          pageSnapping: true,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 2),
          autoPlayAnimationDuration: const Duration(seconds: 2),
          autoPlayCurve: Curves.fastOutSlowIn,
        ),
        itemBuilder: (context, index, realIndex) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          DetailsScreen(movie: snapshot.data![index])));
            },
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox(
                  height: 300,
                  width: 200,
                  child: Image.network(
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                    '${Constants.imagePath}${snapshot.data[index].posterPath}',
                  ),
                )),
          );
        },
      ),
    );
  }
}
