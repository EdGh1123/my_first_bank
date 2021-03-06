import 'package:flutter/material.dart';
import 'package:my_first_bank/constants/app_textstyle.dart';
import 'package:my_first_bank/constants/color_constants.dart';
import 'package:my_first_bank/data/card_data.dart';
import 'package:my_first_bank/data/transaction_data.dart';
import 'package:my_first_bank/widgets/my_card.dart';
import 'package:my_first_bank/widgets/transaction_card.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Ahorros",
          style: TextStyle(
            fontFamily: "Poppins",
            color: kPrimaryColor,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage:
                NetworkImage("https://placeimg.com/640/480/people"),
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications_active_outlined,
                color: Colors.black,
                size: 27,
              ),
              onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                child: ListView.separated(
                    physics: ClampingScrollPhysics(),
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: myCards.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return MyCard(
                        card: myCards[index],
                      );
                    }),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Saldo disponible",
                style: ApptextStyle.BODY_TEXT,
              ),
              Text(
                "\$1.860.000",
                style: ApptextStyle.SALDO_TEXT,
              ),
              SizedBox(
                height: 28,
              ),
              Text(
                "Transacciones recientes",
                style: ApptextStyle.BODY_TEXT,
              ),
              SizedBox(
                height: 15,
              ),
              ListView.separated(
                  itemCount: myTransactions.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemBuilder: (context, index) {
                    return TransactionCard(transaction: myTransactions[index]);
                  })
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
         
 Navigator.pushNamed(context, 'qr');

        },
        child: const Icon(Icons.qr_code),
        backgroundColor: kThirdColor,
      ),
    );
  }
}
