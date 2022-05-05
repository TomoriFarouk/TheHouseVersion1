import 'package:equatable/equatable.dart';

class AddressModel extends Equatable {
  int id;

  String location;
  String name;
  String phoneNumber;
  String type;

  AddressModel(
    this.id,
    this.location,
    this.name,
    this.phoneNumber,
    this.type,
  );

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
