import 'package:equatable/equatable.dart';

class Address extends Equatable {
  final String homeAddress;
  final String state;
  final String country;
  final int phonenumber;
  final String firstname;
  final String lastname;
  final bool isSelected;

  const Address({required this.homeAddress, required this.state, required this.country, required this.phonenumber, required this.firstname, required this.lastname, required this.isSelected});
  @override
  // TODO: implement props
  List<Object> get props => [
        homeAddress,
        state,
        country,
        phonenumber,
        firstname,
        lastname,
        isSelected,
      ];

  static List<Address> address = [
    Address(homeAddress: 'Maurice Umoh 1Joseph Jackson crescent street', state: 'Lagos', country: 'Nigeria', phonenumber: 0813456786, firstname: 'Tomori', lastname: 'Farouk', isSelected: false),
    Address(homeAddress: 'Maurice Umoh 1Joseph Jackson crescent street', state: 'Lagos', country: 'Nigeria', phonenumber: 0813456786, firstname: 'Tomori', lastname: 'Farouk', isSelected: false),
  ];
}
