import 'package:flutter/material.dart';
import '../card.dart';
import '../constants.dart';

class finance_screen extends StatelessWidget {
  const finance_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.vertical, children: [
      Row(
        children: [
          card(
            "lib/images/finance/gpay.png",
            "Gpay",
            "https://pay.google.com/about/",
            kcardcolor,
          ),
          card("lib/images/finance/phonepe.png", "Phonepe",
              "https://www.phonepe.com/", kcardcolor),
          card("lib/images/finance/paytm.png", "Paytm", "https://paytm.com/",
              kcardcolor),
        ],
      ),
      Row(
        children: [
          card(
              "lib/images/finance/icici.jpg",
              "ICICI",
              "https://www.icicibank.com/personal-banking/insta-banking/internet-banking",
              kcardcolor),
          card("lib/images/finance/sbi.png", "SBI",
              "https://retail.onlinesbi.sbi/retail/login.htm", kcardcolor),
          card(
              "lib/images/finance/axis.png",
              "Axis",
              "https://www.axisbank.com/bank-smart/internet-banking/getting-started",
              kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/finance/kvb.png", "KVB",
              "https://www.kvb.co.in/ilogin/", kcardcolor),
          card(
              "lib/images/finance/yes.png",
              "YES",
              "https://www.yesbank.in/digital-banking/online-banking/netbanking-services",
              kcardcolor),
          card(
              "lib/images/finance/union.png",
              "Union",
              "https://www.unionbankonline.co.in/corp/AuthenticationController?__START_TRAN_FLAG__=Y&FORMSGROUP_ID__=AuthenticationFG&__EVENT_ID__=LOAD&FG_BUTTONS__=LOAD&ACTION.LOAD=Y&AuthenticationFG.LOGIN_FLAG=1&BANK_ID=026&LANGUAGE_ID=001",
              kcardcolor),
        ],
      )
    ]);
  }
}
