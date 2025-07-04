class ArticleModel {
  final String? imageUrl;
  final String title;
  final String? description;
  final String link;
  ArticleModel(
      {required this.link,
      required this.description,
      required this.title,
      required this.imageUrl});
}
