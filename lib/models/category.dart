// ignore_for_file: public_member_api_docs, sort_constructors_first
class Categori {
  String? categoriImage;
  String? categoriName;
  int? viewCount;
  List<String>? filters;
  String getViewCount(int count) {
    double result = count.toDouble();
    if (count > 999 && count < 999999) {
      result = count / 1000;
      return result.toStringAsFixed(1) + "K";
    }
    if (count > 999999) {
      result = count / 1000;
      return result.toStringAsFixed(1) + "M";
    }
    if (count > 0 && count < 999) {
      return "$count";
    }
    return result.toString();
  }

  Categori({
    this.categoriImage,
    this.categoriName,
    this.viewCount,
    this.filters,
  });
}
