import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/constant.dart';
import 'package:movies_app/model/movie.dart';
import 'package:movies_app/widgets/back_button.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar.large(
          backgroundColor: Colors.transparent,
          leading: const BackBtn(),
          // backgroundColor: Colors.grey,
          expandedHeight: 500,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              child: Image.network(
                '${Constants.imagePath}${movie.posterPath}',
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    movie.title,
                    style: GoogleFonts.belleza(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Overview',
                  style: GoogleFonts.openSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  movie.overview,
                  style: GoogleFonts.roboto(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                  // textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Release Date: ',
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              movie.releaseDate,
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(children: [
                          Text(
                            'Rating: ',
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text(
                            "${movie.voteAverage.toStringAsFixed(1)}/10",
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
