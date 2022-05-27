extension KBM on double? {
  String formatGenerator() {
    if (this! > 999 && this! < 99999) {
      return "${(this! / 1000).toStringAsFixed(1)} K";
    } else if (this! > 99999 && this! < 999999) {
      return "${(this! / 1000).toStringAsFixed(0)} K";
    } else if (this! > 999999 && this! < 999999999) {
      return "${(this! / 1000000).toStringAsFixed(1)} M";
    } else if (this! > 999999999) {
      return "${(this! / 1000000000).toStringAsFixed(1)} B";
    } else {
      return this!.toString();
    }
  }

  String currencyGenerator() {
    var value = toString();
    value = value.replaceAll(RegExp(r'\D'), '');
    value = value.replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), ',');
    return value;
  }
}
