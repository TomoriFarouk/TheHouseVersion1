import 'package:equatable/equatable.dart';

class ProductReview extends Equatable {
  // you need to download the equatable package using pub before you can use it
  final String review;
  final String imageUrl;
  final String date;
  final String name;
  final String complement;
  const ProductReview({
    required this.review,
    required this.date,
    required this.imageUrl,
    required this.name,
    required this.complement,
  });

  @override
  List<Object?> get props => [
        review,
        imageUrl,
        date,
        name,
        complement,
      ];
  static List<ProductReview> reviews = [
    ProductReview(
      review: 'I love the material used in making the shoe, amazing quality and all. Thanks',
      imageUrl: 'assets/images/Rectangle 2.svg',
      name: 'Bessie Cooper',
      complement: 'Awesome Buy',
      date: '11 April 2022',
    ),
    ProductReview(
      review: 'I love the material used in making the shoe, amazing quality and all. Thanks',
      imageUrl: 'assets/images/Rectangle 2.svg',
      name: 'Bessie Cooper',
      complement: 'Awesome Buy',
      date: '11 April 2022',
    ),
    ProductReview(
      review: 'I love the material used in making the shoe, amazing quality and all. Thanks',
      imageUrl: 'assets/images/Rectangle 2.svg',
      name: 'Bessie Cooper',
      complement: 'Awesome Buy',
      date: '11 April 2022',
    ),
  ];
}
