import 'package:flutter/material.dart';
import '../card.dart';
import '../constants.dart';

class sociamedia_screen extends StatelessWidget {
  const sociamedia_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.vertical, children: [
      Row(
        children: [
          card(
            "lib/images/social/instagram.png",
            "Instagram",
            "https://www.instagram.com/",
            kcardcolor,
          ),
          card("lib/images/social/twitterx.png", "Twitter",
              "https://twitter.com/login", kcardcolor),
          card("lib/images/social/facebook.png", "Facebook",
              "https://m.facebook.com/", kcardcolor),
          // card(
          //     "lib/images/social/threads.png",
          //     "Threads",
          //     "https://www.myntra.com/?utm_source=perf_google_search_brand&utm_medium=perf_google_search_brand&utm_campaign=Search%20-%20Myntra%20Brand%20(India)&gclid=Cj0KCQiA-qGNBhD3ARIsAO_o7ykCHHe6HZQvCsNmH2HnNvDSc5hTjZHHqDmRUchpoxm87uaJ_BPWcUUaAtXbEALw_wcB",
          //     kcardcolor),
        ],
      ),
      Row(
        children: [
          // card("lib/images/social/messenger.png", "Messenger",
          //     "https://www.messenger.com/", kcardcolor),
          card("lib/images/social/moj.png", "Moj", "https://mojapp.in/",
              kcardcolor),
          card("lib/images/social/youtube.png", "Youtube",
              "https://www.youtube.com/", kcardcolor),
          card("lib/images/social/wiki.png", "Wikipedia",
              "https://www.wikipedia.org/", kcardcolor),
        ],
      ),
      Row(
        children: [
          card(
              "lib/images/social/linkedin.png",
              "Linkedin",
              "https://in.linkedin.com/?original_referer=https%3A%2F%2Fwww.google.com%2F",
              kcardcolor),
          card("lib/images/social/telegram.png", "Telegram",
              "https://web.telegram.org/k/", kcardcolor),
          card("lib/images/social/gmail.png", "Gmail",
              "https://mail.google.com/?", kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/social/josh.png", "MxTakaTak",
              "https://share.myjosh.in/", kcardcolor),
          card("lib/images/social/chingari.png", "Snapchat",
              "https://chingari.io/post/latest", kcardcolor),
          card("lib/images/social/sharechat.png", "Moj",
              "https://sharechat.com/", kcardcolor),
        ],
      ),
      // Row(
      //   children: [
      //     // card(
      //     //     "lib/images/social/mxtakatak.png",
      //     //     "MxTakaTak",
      //     //     "https://www.tatacliq.com/?cid=ps:tata_cliq_brand_south:google:tata_cliq_Generic_exact:brand&gclid=Cj0KCQiA-qGNBhD3ARIsAO_o7ynX_gN5lcPCEbULc7cWbX9KQC86Dn-jcD-NKpAXQq0TrklVtFbElbEaAp2jEALw_wcB&gclsrc=aw.ds",
      //     //     kcardcolor),
      //     card("lib/images/social/snapchat.png", "Snapchat",
      //         "https://www.snapchat.com/", kcardcolor),
      //     card("lib/images/social/moj.png", "Moj", "https://mojapp.in/",
      //         kcardcolor),
      //   ],
      //),
    ]);
  }
}
