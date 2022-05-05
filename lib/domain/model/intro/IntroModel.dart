// import 'package:equatable/equatable.dart';

// class IntroModel extends Equatable {
//   int id;

//   String image;
//   String name;
//   String desc;

//   IntroModel({
//     required this.id,
//     required this.image,
//     required this.name,
//     required this.desc,
//   });

//   @override
//   // TODO: implement props
//   List<Object> get props => [
//         name,
//         id,
//         image,
//         desc
//       ];
// }
import 'package:equatable/equatable.dart';

class Splash extends Equatable {
  final String text;
  final String imageUrl;

  const Splash({required this.text, required this.imageUrl});

  @override
  // TODO: implement props
  List<Object> get props => [
        text,
        imageUrl
      ];

  static List<Splash> splash = [
    Splash(
      text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Viverra mattis id nunc vulputate. Sed non varius id non hendrerit. Sed odio ac sed tortor et.",
      imageUrl: "assets/images/bg.jpg",
    ),
    Splash(
      text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Viverra mattis id nunc vulputate. Sed non varius id non hendrerit. Sed odio ac sed tortor et.",
      imageUrl: "assets/images/offwhitesofa.jpg",
    ),
    Splash(
      text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Viverra mattis id nunc vulputate. Sed non varius id non hendrerit. Sed odio ac sed tortor et.",
      imageUrl: "assets/images/sofa_1.jpg",
    ),
  ];
}
