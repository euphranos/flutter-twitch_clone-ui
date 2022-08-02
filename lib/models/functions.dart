String getViewCountWithViewers(int? count) {
  if (count! >= 1000 && count < 1000000) {
    return "${(count / 1000).toStringAsFixed(1)}K Viewers";
  } else if (count >= 1000000) {
    return "${(count / 1000000).toStringAsFixed(1)}M Viewers";
  } else {
    return count.toString() + " Viewers";
  }
}

String getViewCount(int count) {
  if (count >= 1000 && count < 1000000) {
    return "${(count / 1000).toStringAsFixed(1)}K";
  } else if (count >= 1000000) {
    return "${(count / 1000000).toStringAsFixed(1)}M";
  } else {
    return count.toString();
  }
}
