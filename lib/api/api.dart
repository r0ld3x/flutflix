import 'dart:convert';

import 'package:movies_app/constant.dart';
import 'package:movies_app/model/movie.dart';
import 'package:http/http.dart' as http;

class Api {
  static const _trendingUrl =
      'https://api.themoviedb.org/3/trending/movie/day?language=en-US&api_key=${Constants.apiKey}';
  static const _topRatedUrl =
      'https://api.themoviedb.org/3/movie/top_rated?language=en-US&api_key=${Constants.apiKey}';
  static const _upcomingUrl =
      'https://api.themoviedb.org/3/movie/upcoming?language=en-US&api_key=${Constants.apiKey}';

  Future<List<Movie>> getTrendingMovies() async {
    final response = await http.get(Uri.parse(_trendingUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((i) => Movie.fromJson(i)).toList();
    } else {
      throw Exception('Failed to load trending movies');
    }
  }

  Future<List<Movie>> getTopRatedMovies() async {
    final response = await http.get(Uri.parse(_upcomingUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((i) => Movie.fromJson(i)).toList();
    } else {
      throw Exception('Failed to load trending movies');
    }
  }

  Future<List<Movie>> getUpcomingMovies() async {
    final response = await http.get(Uri.parse(_topRatedUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((i) => Movie.fromJson(i)).toList();
    } else {
      throw Exception('Failed to load trending movies');
    }
  }
}
