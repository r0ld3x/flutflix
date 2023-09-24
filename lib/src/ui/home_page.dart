import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/api/api.dart';
import 'package:movies_app/model/movie.dart';
import 'package:movies_app/src/slider/movies_slider.dart';
import 'package:movies_app/src/slider/trending_slider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<List<Movie>> trendingMovies;
  late Future<List<Movie>> topRatedMovies;
  late Future<List<Movie>> upcomingMovies;

  @override
  void initState() {
    super.initState();
    trendingMovies = Api().getTrendingMovies();
    topRatedMovies = Api().getTopRatedMovies();
    upcomingMovies = Api().getUpcomingMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          'assets/flutflix.png',
          fit: BoxFit.cover,
          height: 40,
          filterQuality: FilterQuality.high,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Trending Now',
                style: GoogleFonts.aBeeZee(fontSize: 25),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                child: FutureBuilder(
                    future: trendingMovies,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text(snapshot.error.toString()),
                        );
                      } else if (snapshot.hasData) {
                        // final data = snapshot.data;
                        return TrendingSlider(snapshot: snapshot);
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              Text("Top Rated Movies",
                  style: GoogleFonts.aBeeZee(fontSize: 25)),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                child: FutureBuilder(
                    future: topRatedMovies,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text(snapshot.error.toString()),
                        );
                      } else if (snapshot.hasData) {
                        // final data = snapshot.data;
                        return MoviesSlider(snapshot: snapshot);
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              Text("Upcoming Movies", style: GoogleFonts.aBeeZee(fontSize: 25)),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                child: FutureBuilder(
                    future: upcomingMovies,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text(snapshot.error.toString()),
                        );
                      } else if (snapshot.hasData) {
                        // final data = snapshot.data;
                        return MoviesSlider(snapshot: snapshot);
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
