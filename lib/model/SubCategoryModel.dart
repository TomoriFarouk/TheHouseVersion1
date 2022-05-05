class SubCategoryModel {
  int id;
  int catId;
  int isFav = 0;
  int quantity = 0;
  int colorPosition = -1;
  String icon;
  String image;
  String name;
  String desc;
  String price;
  String categoryName;
  String tags;
  int review = 1;
  String reviewDesc = "(123 reviews)";

  SubCategoryModel(
    this.id,
    this.categoryName,
    this.catId,
    this.tags,
    this.price,
    this.isFav,
    this.desc,
    this.name,
    this.image,
    this.colorPosition,
    this.icon,
    this.quantity,
    this.review,
    this.reviewDesc,
  );
}
