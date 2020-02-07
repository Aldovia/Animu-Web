enum HeaderSize { small, medium, large }

class Header {
  final String title;
  final String imageUrl;
  final HeaderSize headerSize;
  final bool rotate;
  final bool showSearch;
  final String searchText;

  Header(
      {this.title,
      this.imageUrl,
      this.headerSize,
      this.rotate = true,
      this.showSearch = false,
      this.searchText = ''});
}
