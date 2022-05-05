class TrendingModel {
  int id;

  String image;
  String name;
  String price;
  int catId;
  String tags;
  String desc;
  String categoryName;
  int isFav;

  TrendingModel(
    this.image,
    this.name,
    this.desc,
    this.id,
    this.catId,
    this.categoryName,
    this.isFav,
    this.price,
    this.tags,
  );
}
