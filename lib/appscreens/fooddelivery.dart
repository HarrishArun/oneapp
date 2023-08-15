import 'package:flutter/material.dart';
import '../card.dart';
import '../constants.dart';

class fooddelivery_screen extends StatelessWidget {
  const fooddelivery_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.vertical, children: [
      Row(
        children: [
          card(
            "lib/images/food/swiggy.png",
            "Swiggy",
            "https://amzn.to/3rkLreJ",
            kcardcolor,
          ),
          card("lib/images/food/zomato.png", "Zomato",
              "https://www.flipkart.com/", kcardcolor),
          card(
              "lib/images/food/ubereats.png",
              "Ubereats",
              "https://www.myntra.com/?utm_source=perf_google_search_brand&utm_medium=perf_google_search_brand&utm_campaign=Search%20-%20Myntra%20Brand%20(India)&gclid=Cj0KCQiA-qGNBhD3ARIsAO_o7ykCHHe6HZQvCsNmH2HnNvDSc5hTjZHHqDmRUchpoxm87uaJ_BPWcUUaAtXbEALw_wcB",
              kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/food/foodpanda.png", "Foodpanda",
              "https://www.ajio.com/", kcardcolor),
          card("lib/images/food/dunzo.png", "Dunzo", "", kwhitecolor),
          card("lib/images/shopping/bigbasket.png", "bigbasket",
              "https://www.bigbasket.com/", kwhitecolor),
        ],
      ),
      Row(
        children: [
          card(
              "lib/images/food/pizzahut.png",
              "Tatacliq",
              "https://www.tatacliq.com/?cid=ps:tata_cliq_brand_south:google:tata_cliq_Generic_exact:brand&gclid=Cj0KCQiA-qGNBhD3ARIsAO_o7ynX_gN5lcPCEbULc7cWbX9KQC86Dn-jcD-NKpAXQq0TrklVtFbElbEaAp2jEALw_wcB&gclsrc=aw.ds",
              kwhitecolor),
          card("lib/images/food/dominos.png", "Paytm Mall",
              "https://paytmmall.com/", kcardcolor),
          card("lib/images/food/justeat.png", "Apple",
              "https://www.apple.com/in/store", kcardcolor),
        ],
      ),
      Row(
        children: [
          card(
              "lib/images/food/pizzahut.png",
              "McDonalds",
              "https://www.tatacliq.com/?cid=ps:tata_cliq_brand_south:google:tata_cliq_Generic_exact:brand&gclid=Cj0KCQiA-qGNBhD3ARIsAO_o7ynX_gN5lcPCEbULc7cWbX9KQC86Dn-jcD-NKpAXQq0TrklVtFbElbEaAp2jEALw_wcB&gclsrc=aw.ds",
              kwhitecolor),
          card("lib/images/food/dominos.png", "Starbucks",
              "https://paytmmall.com/", kcardcolor),
          card("lib/images/food/justeat.png", "Subway",
              "https://www.apple.com/in/store", kcardcolor),
        ],
      )
    ]);
  }
}
