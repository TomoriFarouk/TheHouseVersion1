import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_ui/domain/model/model.dart';
import 'address_card.dart';

class AddressCardlist extends StatefulWidget {
  final List<Address> addresses;
  const AddressCardlist({required this.addresses});

  @override
  _AddressCardlistState createState() => _AddressCardlistState();
}

class _AddressCardlistState extends State<AddressCardlist> {
  int selected_Position = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: widget.addresses.length,
            itemBuilder: (context, index) {
              final address = widget.addresses[index];
              return InkWell(
                onTap: () {
                  selected_Position = index;
                  setState(() {});
                },
                child: AddressCard(
                  address: address,
                  onPressed: index,
                  selectedPosition: selected_Position,
                ),
              );
            }),
      ),
    );
  }
}
