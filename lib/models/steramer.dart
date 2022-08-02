// ignore_for_file: public_member_api_docs, sort_constructors_first
class Streamer {
  String? name;
  String? title;
  String? avatar;
  String? streamImage;
  List? filters;
  int? streamViewersCount;
  final String category;
  Streamer({
    this.name,
    this.title,
    this.avatar,
    this.streamImage,
    this.filters,
    this.streamViewersCount,
    required this.category,
  });
}
