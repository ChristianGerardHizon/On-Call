extension ProperCaseExtension on String {
  String toProperCase() {
    if (isEmpty) {
      return '';
    }

    return split(' ')
        .map((word) => word.isEmpty
            ? ''
            : word[0].toUpperCase() + word.substring(1).toLowerCase())
        .join(' ');
  }
}
