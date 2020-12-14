import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:kousik_portfolio/domain/experience.dart';
import 'package:kousik_portfolio/domain/api_failure.dart';
import 'package:kousik_portfolio/domain/feature_project.dart';
import 'package:kousik_portfolio/domain/i_portfolio_repository.dart';
import 'package:http/http.dart' as http;

class PortfolioRepository extends IPortfolioRepository {
  final String _baseUrl = "https://api.apito.io/api/159317102";
  final Map<String, String> _headers = {
    "Authorization":
        "Bearer JMTiz0G4PYQCMF7v9kWukmHNLuz0rp3j5jmF7bahagLiebhyou8zOl9wM1PGdj5n80lu0HVoEpv2pfrmenlkP8VVmVpQ8WPgW8DYuzjCq8fS5732tJDh5Z6Qu92mZtAz3i54KtlfepeaU7V6NMJ1",
    'content-type': 'application/json',
  };

  @override
  Future<Either<ApiFailure, List<Experience>>> getExperienceList() async {
    final http.Response _response =
        await http.get("$_baseUrl/experiences", headers: _headers);
    if (_response.statusCode == 200) {
      final List<dynamic> _convertedResponse =
          json.decode('{"data":${_response.body}}')['data'] as List<dynamic>;

      final List<Experience> _result = List<Experience>.from(_convertedResponse
          .map((e) => Experience.fromJson(e['data'] as Map<String, dynamic>)));

      return right(_result);
    } else {
      return left(ApiFailure(errorMsg: _response.body));
    }
  }

  @override
  Future<Either<ApiFailure, List<FeatureProject>>> getProjectsList() async {
    final http.Response _response =
        await http.get("$_baseUrl/projects", headers: _headers);

    if (_response.statusCode == 200) {
      try {
        final List<dynamic> _convertedResponse =
            json.decode('{"data":${_response.body}}')['data'] as List<dynamic>;
        final List<FeatureProject> _result = List<FeatureProject>.from(
            _convertedResponse.map((e) =>
                FeatureProject.fromJson(e['data'] as Map<String, dynamic>)));

        return right(_result);
      } catch (e) {
        return left(ApiFailure(errorMsg: e.toString()));
      }
    } else {
      return left(ApiFailure(errorMsg: _response.body));
    }
  }
}
