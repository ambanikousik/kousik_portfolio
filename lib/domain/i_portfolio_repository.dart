import 'package:dartz/dartz.dart';
import 'package:kousik_portfolio/domain/experience.dart';
import 'package:kousik_portfolio/domain/api_failure.dart';
import 'package:kousik_portfolio/domain/feature_project.dart';

abstract class IPortfolioRepository {
  Future<Either<ApiFailure, List<Experience>>> getExperienceList();
  Future<Either<ApiFailure, List<FeatureProject>>> getProjectsList();
}
