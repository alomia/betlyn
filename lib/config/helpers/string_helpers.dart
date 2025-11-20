String generateThreeLetterCode(String name) {
  final parts = name.split(" ");

  if (parts.length > 1) {
    final initials = parts.map((p) => p[0]).join().toUpperCase();

    if (initials.length == 2) {
      return (initials + parts[0][1].toUpperCase()).substring(0, 3);
    }

    return initials.substring(0, 3);
  }

  if (name.length >= 3) {
    return name.substring(0, 3).toUpperCase();
  }

  return name.toUpperCase().padRight(3, 'X');
}
