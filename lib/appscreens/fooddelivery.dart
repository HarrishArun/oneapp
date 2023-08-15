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
            "https://www.swiggy.com/",
            kcardcolor,
          ),
          card("lib/images/food/zomato.png", "Zomato",
              "https://www.zomato.com/", kcardcolor),
          card("lib/images/food/ubereats.png", "Ubereats",
              "https://www.ubereats.com/", kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/food/zepto.png", "Zepto",
              "https://www.zeptonow.com/", kcardcolor),
          card("lib/images/food/dunzo.png", "Dunzo", "https://www.dunzo.com/",
              kcardcolor),
          card("lib/images/food/bigbasket.jpg", "BigBasket",
              "https://www.bigbasket.com/", kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/food/pizzahut.png", "PizzaHut",
              "https://www.pizzahut.co.in/", kcardcolor),
          card(
              "lib/images/food/dominos.png",
              "Dominos",
              "https://m.dominos.co.in/jfl-discovery-ui/en/pwa/home/6585R?&src=google_sem_brand&utm_source=google&utm_medium=cpc&utm_campaign=Brand-PanIndia-NewUser21Oct22&gclid=CjwKCAjwxOymBhAFEiwAnodBLFfIpOaqmoZ5pGs8H4BByHfbG6dHA16ARKJpskRsjfWciigrV6fdIxoCWdUQAvD_BwE",
              kcardcolor),
          card(
              "lib/images/food/mc.png",
              "McDonalds",
              "https://mcdelivery.co.in/?dsrcode=0001&businessmodelid=18&gclid=CjwKCAjwxOymBhAFEiwAnodBLEyxB5Zl1ZbXwbhH-JL_t8-egIxSc6L1HoDCIG-u188P1TsyiRZKChoCSdYQAvD_BwE",
              kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/food/subway.png", "Subway", "https://subway.in/",
              kcardcolor),
          card("lib/images/food/cafecoffee.jpg", "Cafecoffeeday",
              "https://www.cafecoffeeday.com/", kcardcolor),
          card("lib/images/food/blinkit.png", "Blinkit", "https://blinkit.com/",
              kcardcolor),
        ],
      ),
      Row(
        children: [
          card(
              "lib/images/shopping/flipkart.png",
              "Supermart",
              "https://www.flipkart.com/grocery/flipkart-supermart-select~brand/pr?sid=73z&marketplace=GROCERY",
              kcardcolor),
          card("lib/images/food/swiggy.png", "Instamart",
              "https://www.swiggy.com/restaurants/instamart", kcardcolor),
          // card(
          //     "lib/images/food/jiomart.png",
          //     "Jiomart",
          //     "https://www.jiomart.com/?gclid=CjwKCAjwxOymBhAFEiwAnodBLF_HtdD3JdUQV5m3oiX02pUPnqqem4bEIClrp99_gEdc-fr0UkS7gBoCRjoQAvD_BwE",
          //     kcardcolor),
          card("lib/images/food/eatsure.jpg", "Eatsure",
              "https://www.eatsure.com/", kcardcolor),
        ],
      ),
      // Row(
      //   children: [
      //     card("lib/images/food/swiggy.png", "Swiggy Instamart",
      //         "https://www.swiggy.com/restaurants/instamart", kcardcolor),
      //     card(
      //         "lib/images/food/jiomart.png",
      //         "Jiomart",
      //         "https://www.jiomart.com/?gclid=CjwKCAjwxOymBhAFEiwAnodBLF_HtdD3JdUQV5m3oiX02pUPnqqem4bEIClrp99_gEdc-fr0UkS7gBoCRjoQAvD_BwE",
      //         kcardcolor),
      //   ],
      // )
    ]);
  }
}
