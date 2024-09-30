import 'package:flutter/material.dart';
import 'package:flutter_ui_design/Track%20Car%20Rental/const.dart';
import '../models/listings_model.dart';

class BookingScreen extends StatefulWidget {
  final Listing listing;
  const BookingScreen({
    super.key,
    required this.listing,
  });

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  TextEditingController _bookDateController = TextEditingController();
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _licenseController = TextEditingController();

  TextEditingController _cardNameController = TextEditingController();
  TextEditingController _cardNumberController = TextEditingController();
  TextEditingController _cvvController = TextEditingController();
  TextEditingController _expiryController = TextEditingController();

  String? dropDownValue = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 65,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black12),
              ),
              child: const Icon(
                Icons.arrow_back_ios_new,
                size: 30,
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: const Text(
          'One more step',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black12,
              ),
            ),
            child: const Icon(
              Icons.bookmark_outline_rounded,
              size: 30,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Complete the form to confirm your booking for "+ widget.listing.name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(height: 20),
            _nameField(),
            SizedBox(height: 10),
            _dateField(),
            SizedBox(height: 10),
            _pricingInfo(),
            SizedBox(height: 10),
            _cardNameField(),
            // ignore: prefer_const_constructors
            SizedBox(height: 10),
            _cardNumberField(),
            // ignore: prefer_const_constructors
            SizedBox(height: 10),
            _cardInfoField(),
            SizedBox(height: 10),
            submitButton(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Row _nameField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 60,
            width: 180,
            child: TextField(
              controller: _firstNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'First Name',
                prefixIcon: Icon(Icons.person_2_outlined),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: SizedBox(
            height: 60,
            width: 180,
            child: TextField(
              controller: _lastNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Last Name',
                prefixIcon: Icon(Icons.person_2_outlined)
              ),
            ),
          ),
        )
      ],
    );
  }

  Row _cardInfoField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 60,
            width: 180,
            child: TextField(
              controller: _expiryController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Expiry (mm-yy)',
                prefixIcon: Icon(Icons.date_range_outlined),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: SizedBox(
            height: 60,
            width: 180,
            child: TextField(
              controller: _cvvController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'CVV (3-digit)',
                prefixIcon: Icon(Icons.code_outlined)
              ),
            ),
          ),
        )
      ],
    );
  }

  Row _dateField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 60,
            width: 180,
            child: TextField(
              controller: _bookDateController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Pick Up Date',
                prefixIcon: Icon(Icons.calendar_today_outlined),
              ),
              readOnly: true,
              onTap: (){
                _selectDate(context, _bookDateController);
              },
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: SizedBox(
            height: 60,
            width: 180,
            child: TextField(
              controller: _licenseController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'DL number',
                prefixIcon: Icon(Icons.credit_card)
              ),
            ),
          ),
        )
      ],
    );
  }

  Future<void> _selectDate(BuildContext context, TextEditingController controller) async {
    DateTime ? _picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025)
    );

    if (_picked != null) {
      setState (() {
        controller.text = _picked.toString().split(" ")[0];
      });
    }
  }

  Container _cardNumberField() {
    return Container(
      alignment: Alignment.center,
      child: SizedBox(
        height: 60,
        width: 380,
        child: TextField(
          controller: _cardNumberController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Card Number',
            prefixIcon: Icon(Icons.credit_card_off_outlined)
          ),
        ),
      ),
    );
  }

  Container _cardNameField() {
    return Container(
      alignment: Alignment.center,
      child: SizedBox(
        height: 60,
        width: 380,
        child: TextField(
          controller: _cardNameController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Name on Card',
            prefixIcon: Icon(Icons.person)
          ),
        ),
      ),
    );
  }
  
  Container _pricingInfo() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Rental price", style: TextStyle(fontSize: 16)),
              Text((widget.listing.price).toString(), style: TextStyle(fontSize: 16)),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Service charges", style: TextStyle(fontSize: 16)),
              Text(((widget.listing.price)*0.05).toStringAsFixed(2), style: TextStyle(fontSize: 16)),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Fees & estimated tax", style: TextStyle(fontSize: 16)),
              Text(((widget.listing.price)*0.084).toStringAsFixed(2), style: TextStyle(fontSize: 16)),
            ],
          ),
          Divider(thickness: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total",
                style: TextStyle(
                  fontSize: 18, 
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                ((widget.listing.price)+(widget.listing.price)*0.084+(widget.listing.price)*0.05).toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 18, 
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );

  }
}

Center submitButton() {
    return Center(
        child: SizedBox(
          height: 60,
          width: 380,
          child: ElevatedButton.icon(
            onPressed: () {
              
            }, 
            label: const Text('Get your perfect ride'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              side: BorderSide(
                width: 3.0,
                color: Colors.purple.withOpacity(0.12),
              ),
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ) , 
            ), 
          ),
        ),
      );
  }