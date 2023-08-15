import 'package:flutter/material.dart';
import '../card.dart';
import '../constants.dart';

class entertainment_screen extends StatelessWidget {
  const entertainment_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.vertical, children: [
      Row(
        children: [
          card(
            "lib/images/entertainment/netflix.png",
            "Netflix",
            "https://www.netflix.com/in/",
            kcardcolor,
          ),
          card("lib/images/entertainment/hotstar.png", "Hotstar",
              "https://www.hotstar.com/in", kcardcolor),
          card(
              "lib/images/entertainment/sony.png",
              "Sonyliv",
              "https://www.sonyliv.com/subscription?utm_source=google&utm_medium=paid&utm_campaign=IN_MSixSonyLIV_NA_Performance_AlwaysON_Brand_Launch_Search_Subscriptions_India_Apr_2022_V0&utm_content=Brand&gclid=CjwKCAjwxOymBhAFEiwAnodBLAZLtVB3PqXkN-Qvv8IcmneyDGDjZYrOgdCaJaxzY7fUifvxo5hRHhoCOaYQAvD_BwE",
              kcardcolor),
        ],
      ),
      Row(
        children: [
          card(
              "lib/images/entertainment/prime.png",
              "Prime",
              "https://www.primevideo.com/offers/nonprimehomepage/ref=dvm_pds_amz_in_as_s_gm_16_mkw_symCJqBmk-dm?gclid=CjwKCAjwxOymBhAFEiwAnodBLGU5B0LZ1KksCRdO-dyEjx0kSeazs7rQo8fNTixf2h0Rw8m2OKZDtBoCD-IQAvD_BwE&mrntrk=pcrid_657901934582_slid__pgrid_84577172528_pgeo_9299018_x__adext__ptid_kwd-339065342343",
              kcardcolor),
          card(
              "lib/images/entertainment/aha.png",
              "Aha",
              "https://www.aha.video/subscription/viewplans?utm_source=google&utm_medium=cpc&utm_campaign=16153768518&adgroup=131879267974&utm_term=aha%20tamil&utm_content=655544669253&network=g&gclid=CjwKCAjwxOymBhAFEiwAnodBLAUy0OFJh7qOiaotP-WfsCcfQBSv9Rv9PNZ1L1QvAv1h0N_dhW2BMhoCdqkQAvD_BwE",
              kcardcolor),
          card("lib/images/entertainment/sunnxt.png", "Sunnxt",
              "https://www.sunnxt.com/", kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/entertainment/zee.png", "zee5",
              "https://www.zee5.com/", kcardcolor),
          card("lib/images/social/youtube.png", "Youtube",
              "https://m.youtube.com/", kcardcolor),
          card("lib/images/entertainment/jiocinema.png", "Jiocinema",
              "https://www.jiocinema.com/", kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/entertainment/alt.png", "Altbalaji",
              "https://www.altbalaji.com/", kcardcolor),
          card("lib/images/entertainment/mx.png", "MX Player",
              "https://www.mxplayer.in/", kcardcolor),
          card("lib/images/entertainment/eros.jpg", "Erosnow",
              "https://erosnow.com/", kcardcolor),
        ],
      )
    ]);
  }
}
