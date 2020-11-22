import 'package:freezed_annotation/freezed_annotation.dart';

part 'experience.freezed.dart';

@freezed
abstract class Experience with _$Experience {
  const factory Experience(
      {@required String title,
      @required String description,
      @required String timeline}) = _Experience;
}
