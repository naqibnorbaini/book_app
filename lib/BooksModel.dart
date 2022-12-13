
class Books {
  String title;
  int authorId;
  String authorName;
  String bookCoverUrl;
  String categoryName;
  int categoryId;

  Books({
    required this.title,
    required this.authorId,
    required this.authorName,
    required this.bookCoverUrl,
    required this.categoryName,
    required this.categoryId,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'authorId': authorId,
      'authorName': authorName,
      'bookCoverUrl': bookCoverUrl,
      'categoryName': categoryName,
      'categoryId': categoryId,
    };
  }

  @override
  String toString() {
    return 'Books{title: $title, authorId: $authorId, authorName: $authorName, bookCoverUrl: $bookCoverUrl, categoryName: $categoryName, categoryId: $categoryId';
  }

}