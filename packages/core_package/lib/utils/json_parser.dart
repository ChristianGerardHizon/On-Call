class JsonParser {
  static bool boolFromJson(dynamic val) {
    if (val is bool) {
      return val;
    }
    if (val is int) {
      return val > 1;
    }
    return bool.parse(val);
  }

  static int boolToJson(bool val) {
    return val ? 1 : 0;
  }
}
