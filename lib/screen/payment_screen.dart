import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class payment_food extends StatefulWidget {
  const payment_food({super.key});

  @override
  State<payment_food> createState() => _payment_food();
}

// ignore: camel_case_types
class _payment_food extends State<payment_food> {
  int _type = 1;
  int _subType = 0;

  void _handleRadio(Object? value) => setState(() {
        _type = value as int;
      });

  void _handleSubRadio(Object? value) => setState(() {
        _subType = value as int;
      });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment Method',
          style: GoogleFonts.roboto(textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.w800)),
        ),
        leading: const BackButton(),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        elevation: 0,
        leadingWidth: 5,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: size.width,
                  height: 55,
                  decoration: BoxDecoration(
                    border: _type == 1
                        ? Border.all(
                            width: 1,
                            color: const Color(0xFFDB3022),
                          )
                        : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                  ),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Radio(
                              value: 1,
                              groupValue: _type,
                              onChanged: _handleRadio,
                              activeColor: const Color(0xFFDB3022),
                            ),
                            Text('Cash',
                                style: _type == 1
                                    ? const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        color: Colors.black)
                                    : const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        color: Colors.grey)),
                          ],
                        ),
                        Image.asset(
                          'asset/money.png',
                          width: 55,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  )),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: size.width,
                  height: 55,
                  decoration: BoxDecoration(
                    border: _type == 2
                        ? Border.all(
                            width: 1,
                            color: const Color(0xFFDB3022),
                          )
                        : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                  ),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Radio(
                              value: 2,
                              groupValue: _type,
                              onChanged: _handleRadio,
                              activeColor: const Color(0xFFDB3022),
                            ),
                            Text('MoMo',
                                style: _type == 2
                                    ? const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        color: Colors.black)
                                    : const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        color: Colors.grey)),
                          ],
                        ),
                        Image.asset(
                          'asset/MoMo_Logo.png',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  )),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: size.width,
                  height: 55,
                  decoration: BoxDecoration(
                    border: _type == 3
                        ? Border.all(
                            width: 1,
                            color: const Color(0xFFDB3022),
                          )
                        : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                  ),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Radio(
                              value: 3,
                              groupValue: _type,
                              onChanged: _handleRadio,
                              activeColor: const Color(0xFFDB3022),
                            ),
                            Text('ZaloPay',
                                style: _type == 3
                                    ? const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        color: Colors.black)
                                    : const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        color: Colors.grey)),
                          ],
                        ),
                        Image.asset(
                          'asset/Logo-ZaloPay-Square.webp',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  )),
                ),
                const SizedBox(
                  height: 15,
                ),
                buildPaymentOption(
                  size: size,
                  type: 4,
                  label: 'Credit transfer',
                  subOptions: [
                    buildSubOption(
                        type: 4,
                        subType: 1,
                        label: ' Sacombank',
                        image: 'asset/Sacombank.png'),
                    buildSubOption(
                        type: 4,
                        subType: 2,
                        label: ' Agribank',
                        image: 'asset/agribank.png'),
                    buildSubOption(
                        type: 4,
                        subType: 3,
                        label: ' Vietcombank',
                        image: 'asset/Vietcombank.png'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sub-Total',
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                                fontSize: 17)),
                      ),
                      Text(
                        '50\$',
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 17)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shipping Free',
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                                fontSize: 17)),
                      ),
                      Text(
                        '10\$',
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 17)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 0.5),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Payment',
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Colors.black,
                                fontSize: 20)),
                      ),
                      Text(
                        '60\$',
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Colors.red,
                                fontSize: 20)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: SizedBox(
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => const payment_food()),
                        // );
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 100.0)),
                        textStyle: MaterialStateProperty.all(
                            const TextStyle(fontSize: 25)),
                        side: MaterialStateProperty.all(
                            const BorderSide(color: Colors.black, width: 1.0)),
                      ),
                      child: Text('Thanh Toan',
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildPaymentOption({
    required Size size,
    required int type,
    required String label,
    required List<Widget> subOptions,
  }) {
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        border: _type == type
            ? Border.all(
                width: 1,
                color: const Color(0xFFDB3022),
              )
            : Border.all(width: 0.3, color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
        color: Colors.transparent,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Radio(
                      value: type,
                      groupValue: _type,
                      onChanged: _handleRadio,
                      activeColor: const Color(0xFFDB3022),
                    ),
                    Text(
                      label,
                      style: _type == type
                          ? const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 20,
                            )
                          : const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              fontSize: 20,
                            ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (_type == type) ...subOptions
        ],
      ),
    );
  }

  Widget buildSubOption({
    required int type,
    required int subType,
    required String label,
    required String image,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Radio(
            value: subType,
            groupValue: _subType,
            onChanged: _handleSubRadio,
            activeColor: const Color(0xFFDB3022),
          ),
          Text(label,
              style: GoogleFonts.roboto(
                textStyle: _subType == subType
                    ? const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 18,
                      )
                    : const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                        fontSize: 18,
                      ),
              )),
          const SizedBox(width: 15),
          Image.asset(
            image,
            width: 70,
            height: 70,
            // fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
