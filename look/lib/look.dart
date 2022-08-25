library look;

const Look look = Look();

/// Annotation used to generate a runnable Flutter app containning only the Widget to look
class Look {
  final Map<String, dynamic> arguments;
  const Look({
    this.arguments = const {},
  });
}
