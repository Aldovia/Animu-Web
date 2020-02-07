enum HeaderSize { small, medium, large }

class Header {
  final String title;
  final String imageUrl;
  final HeaderSize headerSize;

  Header({this.title, this.imageUrl, this.headerSize});
}
