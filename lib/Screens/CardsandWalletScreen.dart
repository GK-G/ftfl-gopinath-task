import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import '../Utility/Clipper.dart';
import '../Utility/Widgets/FeatureCard.dart';
import '../Utility/Widgets/LimitCard.dart';

class CardAndWalletsScreen extends StatefulWidget {
  @override
  State<CardAndWalletsScreen> createState() => _CardAndWalletsScreenState();
}

class _CardAndWalletsScreenState extends State<CardAndWalletsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Card & Wallets',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  decoration: BoxDecoration(
                    color: Color(0xFF605FE6).withOpacity(0.2),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.asset(
                            'assets/card2.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        /// Blur Effect
                        // Positioned.fill(
                        //   child: BackdropFilter(
                        //     filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                        //     child: Container(
                        //       color: Color(0xFF605FE6).withOpacity(0.1), // Add overlay color here
                        //     ),
                        //   ),
                        // ),
                        Center(
                          child: Icon(
                            Icons.lock_outline_rounded,
                            color: Colors.white,
                            size: 45.0,
                          ),
                        ),
                        Positioned(
                          bottom: 25.0,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 20.0,
                                  height: 3.0,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 8.0),
                                Container(
                                  width: 10.0,
                                  height: 3.0,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Stack(children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(8.0),
                            bottomLeft: Radius.circular(12.0),
                          ),
                          color: Color(0xFF605FE6).withOpacity(0.2),
                        ),
                        child: Container(
                          margin: const EdgeInsets.only(
                              left: 16.0, right: 20.0, top: 16, bottom: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Card Status :',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                ' Inactive',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Transform.rotate(
                        angle: pi / 2,
                        child: ClipPath(
                          clipper: Clip1Clipper(),
                          child: Container(
                            height: 50,
                            width: 50,
                            color: Color(0xFF605FE6).withOpacity(0.2),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          width: double.infinity,
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    top: 6,
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.429,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF605FE6).withOpacity(0.2),
                            foregroundColor:
                                Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  12.0),
                            ),
                          ),
                          child: Text(
                            'Guide',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
                SizedBox(height: 16.0),
                Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Activate your LifelineCard',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8.0),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16.0),
                                  children: [
                                    TextSpan(
                                      text: '₹ 3499/',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: ' Life Time'),
                                    TextSpan(text: '    '),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5.0),
                              RichText(
                                text: TextSpan(
                                  text: '₹ 9999/Year',
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Offer Ends Soon!',
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(height: 16.0),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF0B0E80),
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          18.0),
                                    ),
                                    padding:
                                        EdgeInsets.symmetric(vertical: 12.0),
                                  ),
                                  child: Text('Activate Now',
                                      style: TextStyle(fontSize: 16.0)),
                                ),
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/activeimage.png',
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.22,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      Divider(),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Our Features',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LimitCard(title: 'Udhar Limit', value:'₹ 74425',),
                          LimitCard(title:'CP EMI Limit', value:'₹ 74425'),
                        ],
                      ),
                      SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FeatureCard(title:'Udhar',icon: Icons.handshake),
                          FeatureCard(
                              title:'CP EMI',icon:  Icons.account_balance_wallet),
                          FeatureCard(
                              title:'Business Funds',icon: Icons.attach_money),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Wallet',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor:
                                    Colors.deepPurple.withOpacity(0.1),
                                child: Icon(Icons.account_balance_wallet,
                                    color: Colors.deepPurple),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Lifeline Card Wallet',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Upcoming EMI/Udhar',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black54),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '4356',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 12),
                                child: Text(
                                  "Withdraw",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 12),
                                child: Text(
                                  "Transfer",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 45, vertical: 12),
                                  backgroundColor:
                                      Colors.deepPurple.withOpacity(0.1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Text(
                                  'More',
                                  style: TextStyle(color: Colors.deepPurple),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    _buildWalletCard(
                      title: 'Lifeline Coin',
                      subtitle: 'Lifeline Magic Coin',
                      amount: '4356',
                      secondaryAmount: '600',
                      dateRange: '11th Sep 2023 to 11 Oct 2023',
                      isAddCredit: false,
                    ),
                    SizedBox(height: 16),
                    _buildWalletCard(
                      title: 'Cashback Coin',
                      subtitle: 'Add Credit Coin',
                      amount: '4356',
                      dateRange: '11th Sep 2023 to 11 Oct 2023',
                      isAddCredit: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWalletCard({
    required String title,
    required String subtitle,
    required String amount,
    String? secondaryAmount,
    List<String>? actions,
    String? dateRange,
    bool isAddCredit = false,
  }) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.deepPurple.withOpacity(0.1),
                child: Icon(Icons.account_balance_wallet,
                    color: Colors.deepPurple),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: TextStyle(
                          fontSize: 14,
                          color: isAddCredit ? Colors.red : Colors.black54),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    amount,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  if (secondaryAmount != null)
                    Text(
                      secondaryAmount,
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                ],
              ),
            ],
          ),
          if (actions != null || dateRange != null) SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (actions != null) ...[
                ...actions.map(
                  (action) => Padding(
                    padding: const EdgeInsets.only(
                        right: 8.0),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        backgroundColor: Colors.deepPurple.withOpacity(0.1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        action,
                        style: TextStyle(color: Colors.deepPurple),
                      ),
                    ),
                  ),
                ),
              ] else ...[
                if (dateRange != null) ...[
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 14.0),
                    child: Text(
                      dateRange,
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    ),
                  ),
                ],
              ],
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 45, vertical: 12),
                  backgroundColor: Colors.deepPurple.withOpacity(0.1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'More',
                  style: TextStyle(color: Colors.deepPurple),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


