import 'package:flutter/material.dart';

import '../card.dart';
import '../constants.dart';

class ecommerce_screen extends StatelessWidget {
  const ecommerce_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.vertical, children: [
      Row(
        children: [
          card(
            "lib/images/shopping/amazon.png",
            "Amazon",
            "https://amzn.to/3rkLreJ",
            kcardcolor,
          ),
          card("lib/images/shopping/flipkart.png", "Flipkart",
              "https://www.flipkart.com/", kcardcolor),
          card(
              "lib/images/shopping/myntra.png",
              "Myntra",
              "https://www.myntra.com/?utm_source=perf_google_search_brand&utm_medium=perf_google_search_brand&utm_campaign=Search%20-%20Myntra%20Brand%20(India)&gclid=Cj0KCQiA-qGNBhD3ARIsAO_o7ykCHHe6HZQvCsNmH2HnNvDSc5hTjZHHqDmRUchpoxm87uaJ_BPWcUUaAtXbEALw_wcB",
              kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/shopping/ajio.png", "Ajio", "https://www.ajio.com/",
              kcardcolor),
          card("lib/images/shopping/snapdeal.png", "Snapdeal",
              "https://m.snapdeal.com/", kwhitecolor),
          card("lib/images/shopping/bigbasket.png", "bigbasket",
              "https://www.bigbasket.com/", kwhitecolor),
        ],
      ),
      Row(
        children: [
          card(
              "lib/images/shopping/tatacliq.png",
              "Tatacliq",
              "https://www.tatacliq.com/?cid=ps:tata_cliq_brand_south:google:tata_cliq_Generic_exact:brand&gclid=Cj0KCQiA-qGNBhD3ARIsAO_o7ynX_gN5lcPCEbULc7cWbX9KQC86Dn-jcD-NKpAXQq0TrklVtFbElbEaAp2jEALw_wcB&gclsrc=aw.ds",
              kwhitecolor),
          card("lib/images/shopping/paytmmall.png", "Paytm Mall",
              "https://paytmmall.com/", kcardcolor),
          card("lib/images/shopping/apple.png", "Apple",
              "https://www.apple.com/in/store", kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/shopping/aliexpress.png", "AliExpress",
              "https://m.aliexpress.com/", kcardcolor),
          card("lib/images/shopping/olx.png", "OLX", "https://www.olx.in/en-in",
              kwhitecolor),
          card("lib/images/shopping/ebay.png", "Ebay", "https://www.ebay.com/",
              kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/shopping/lenskart.png", "Lenskart",
              "https://www.lenskart.com/", kcardcolor),
          card("lib/images/shopping/mi.png", "MI", "https://paytmmall.com/",
              kcardcolor),
          card("lib/images/shopping/realme.jpg", "Realme",
              "https://www.realme.com/in/", kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/shopping/nykaa.png", "Nykaa",
              "https://www.nykaa.com/", kcardcolor),
          card("lib/images/shopping/decathlon.png", "Decathlon",
              "https://www.decathlon.in/", kcardcolor),
          card("lib/images/shopping/meesho.png", "Meesho",
              "https://www.meesho.com/", kcardcolor),
        ],
      ),
      Row(
        children: [
          card(
              "lib/images/shopping/relaiancedigital.png",
              "Digital",
              "https://www.reliancedigital.in/?gclid=CjwKCAjwxOymBhAFEiwAnodBLEhU03cccEbnnhe9_m0L3x4Rpng3Md2KMfKf7ssj_C_eLt9wv7kCnRoCSkEQAvD_BwE",
              kcardcolor),
          card(
              "lib/images/shopping/croma.jpg",
              "Croma",
              "https://www.croma.com/?utm_source=click2commission&utm_medium=affiliate&utm_campaign=sok_click2commission_121&utm_content=email&gclid=CjwKCAjwxOymBhAFEiwAnodBLJPEpUkhgnQhNV__FUTn-35jgp0DEOkNgsZczX4HGO-nldELQpeejBoCUHkQAvD_BwE",
              kcardcolor),
          card(
              "lib/images/shopping/jiomart.jpg",
              "Jiomart",
              "https://www.jiomart.com/?gclid=CjwKCAjwxOymBhAFEiwAnodBLF_HtdD3JdUQV5m3oiX02pUPnqqem4bEIClrp99_gEdc-fr0UkS7gBoCRjoQAvD_BwE",
              kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/shopping/poorvika.jpg", "Poorvika",
              "https://poorvika.com/", kcardcolor),
          card("lib/images/shopping/chennaimobiles.jpg", "ChennaiMobiles",
              "https://www.thechennaimobiles.com/", kcardcolor),
          card("lib/images/shopping/firstcry.png", "Firstcry",
              "https://www.firstcry.com/", kcardcolor),
        ],
      )
    ]);
  }
}
