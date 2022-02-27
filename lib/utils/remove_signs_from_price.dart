extension RemoveDollarSign on String {
  String get removeDollarSign => replaceFirst("\$", "");
}
extension RemoveCommarSign on String {
  String get removeCommaSign => replaceFirst(",", "");
}
extension RemoveDotSign on String {
  String get removeDotSign => replaceFirst(".", "");
}
