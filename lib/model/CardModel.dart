class CardModel {
  int id;

  String name;
  String email;
  String cardNo;
  String expDate;
  String cVV;
  String image;

  CardModel(
    this.image,
    this.name,
    this.id,
    this.email,
    this.cVV,
    this.cardNo,
    this.expDate,
  );
}
