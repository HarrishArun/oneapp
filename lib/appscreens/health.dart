import 'package:flutter/material.dart';
import '../card.dart';
import '../constants.dart';

class health_screen extends StatelessWidget {
  const health_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.vertical, children: [
      Row(
        children: [
          card(
            "lib/images/health/pharmeasy.png",
            "PharmEasy",
            "https://pharmeasy.in/",
            kcardcolor,
          ),
          card(
              "lib/images/health/1mg.png",
              "1mg",
              "https://www.1mg.com/offers?utm_source=google&utm_medium=cpc&utm_campaign={1MG_Search_Brand_Pharma_TROAS}&utm_adgroup={adgroup}&utm_keyword=1mg&wpsrc=Google%20AdWords&wpcid=624753808&wpsnetn=g&wpkwn=1mg&wpkmatch=b&wpcrid=648997263074&wpscid=31117992618&wpkwid=kwd-145247769&gclid=CjwKCAjwxOymBhAFEiwAnodBLBsSjyjT0ixyhxUXmROB11qwOEZz2lbZqhFIAdkd4u5JWFb-N9us7hoC-bAQAvD_BwE",
              kwhitecolor),
          card(
              "lib/images/health/netmeds.png",
              "Netmeds",
              "https://m.netmeds.com/healthstore?source_attribution=ADW-CPC-Comp-medlife%20offers&utm_source=ADW-CPC-Comp-medlife%20offers&utm_medium=CPC&utm_campaign=ADW-CPC-Comp&gclid=CjwKCAjwxOymBhAFEiwAnodBLDzJKh-DGF4waUBzv7t_63s0GDxjRjY0tHgAellMvxLTIwGdauY-nxoCY9oQAvD_BwE",
              kcardcolor),
        ],
      ),
      Row(
        children: [
          card(
              "lib/images/health/apollo.png",
              "Apollo",
              "https://www.apollopharmacy.in/?utm_source=google&utm_medium=srnb&campaignid=20341000935&adgroupid=156642113208&keyword=medplus%20online&device=m&adtype=&product_id=&utm_campaign=Apollo_Non-Brand_Pharmacy_RestCities_New_160123&utm_content=Pharmacy_Online_EM&gclid=CjwKCAjwxOymBhAFEiwAnodBLB18E20BCYMJIiym2vrxXlPDyryDSf5epykB3hEXd_1CuXNw-BqeLxoCefwQAvD_BwE",
              kcardcolor),
          card("lib/images/health/medplus.png", "Medplus",
              "https://www.medplusmart.com/pharmacy", kwhitecolor),
          card("lib/images/health/medibuddy.jpg", "Medibuddy",
              "https://www.medibuddy.in/", kcardcolor),
        ],
      ),
      Row(
        children: [
          card(
            "lib/images/health/truemeds.png",
            "Truemeds",
            "https://www.truemeds.in/?utm_source=google&utm_medium=Search&utm_campaign=Sok_Search_Brand&adgroupid=128411669733&utm_term=truemeds&utm_adid={adid}&gclid=CjwKCAjwxOymBhAFEiwAnodBLGdZGhQwIzdFh9u2CL-tne6ayyS1NnUkXS5KPq0FiZD2K56o8dr0dBoCcLwQAvD_BwE",
            kcardcolor,
          ),
          card(
              "lib/images/health/mm.png",
              "Manmatters",
              "https://manmatters.com/?utm_source=google&utm_medium=brand&utm_campaign=Search_Brand_MM&gclid=CjwKCAjwxOymBhAFEiwAnodBLJg-2euLcS3SIRL2RmNa3t0L4mAVCwFowgnKZJJeZ3evuftdDr6a0hoC2BcQAvD_BwE",
              kcardcolor),
          card("lib/images/health/practo.png", "Practo",
              "https://www.practo.com/", kcardcolor),
        ],
      ),
    ]);
  }
}
