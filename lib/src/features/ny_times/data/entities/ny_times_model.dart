import 'package:json_annotation/json_annotation.dart';
import 'package:ny_times_app/src/features/ny_times/data/entities/media_model.dart';
part 'ny_times_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)

class NyTimesModel {
  String? uri;
  String? url;
  int? id;
  int? assetId;
  String? source;
  String? publishedDate;
  String? updated;
  String? section;
  String? subsection;
  @JsonKey(name: "nytdsection")
  String? nyTdSection;
  String? adxKeywords;
  String? column;
  String? byline;
  String? type;
  String? title;
  String? abstract;
  List<String>? desFacet;
  List<String>? orgFacet;
  List<String>? perFacet;
  List<String>? geoFacet;
  List<MediaModel>? media;
  int? etaId;

  NyTimesModel(
      {this.uri,
        this.url,
        this.id,
        this.assetId,
        this.source,
        this.publishedDate,
        this.updated,
        this.section,
        this.subsection,
        this.nyTdSection,
        this.adxKeywords,
        this.column,
        this.byline,
        this.type,
        this.title,
        this.abstract,
        this.desFacet,
        this.orgFacet,
        this.perFacet,
        this.geoFacet,
        this.media,
        this.etaId});

  factory NyTimesModel.fromJson(json) => _$NyTimesModelFromJson(json);

  toJson() => _$NyTimesModelToJson(this);

  static List<NyTimesModel> fromJsonList(List json) {
    return json.map((e) => NyTimesModel.fromJson(e)).toList();
  }
}




