import 'package:flutter/material.dart';
import '../card.dart';
import '../constants.dart';

class travel_screen extends StatelessWidget {
  const travel_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.vertical, children: [
      Row(
        children: [
          card(
            "lib/images/travel/ola.png",
            "Ola",
            "https://www.olacabs.com/",
            kcardcolor,
          ),
          card(
              "lib/images/travel/uber.png",
              "Uber",
              "https://auth.uber.com/v2/?breeze_local_zone=phx6&next_url=https%3A%2F%2Fm.uber.com%2Flogin-redirect%2F%3FpreviousPath%3D%252F%26redirect%3Dfalse&state=d0SrqN-pKyWeH0pfSt1R92FxsK4oe54ZHNmWB5VDqIc%3D",
              kcardcolor),
          card("lib/images/travel/rapido.png", "Rapido",
              "https://www.rapido.bike/", kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/travel/redbus.png", "RedBus", "https://m.redbus.in/",
              kcardcolor),
          card("lib/images/travel/abhibus.png", "AbhiBus",
              "https://www.abhibus.com/mobile/", kcardcolor),
          card("lib/images/travel/tnstc.jpg", "TNSTC",
              "https://www.tnstc.in/home.html", kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/travel/irctc.png", "IRCTC",
              "https://www.irctc.co.in/nget/", kcardcolor),
          card(
              "lib/images/travel/goibibo.png",
              "Goibibo",
              "https://www.goibibo.com/?utm_source=google&utm_medium=cpc&utm_campaign=DF-Brand-EM&utm_adgroup=Only+Goibibo&utm_term=%21SEM%21DF%21G%21Brand%21RSA%21108599293%216504095653%21602838584772%21e%21goibibo%21m%21&gad=1&gclid=CjwKCAjwxOymBhAFEiwAnodBLCDS8t2Y8PnaBxXGqZCEkeRJii-e1ekuDX8dS9FHhdXJ5d1n2EjuvhoCFSIQAvD_BwE",
              kcardcolor),
          card("lib/images/travel/railyatri.png", "RailYatri",
              "https://www.railyatri.in/m", kcardcolor),
        ],
      ),
      Row(
        children: [
          card(
              "lib/images/travel/booking.png",
              "Booking.com",
              "https://www.booking.com/index.en-gb.html?aid=2311236;label=en-in-booking-mobile-PzCtZSeq_K7p82LvC_GUtQSM652796016639:pl:ta:p1:p2:ac:ap:neg:fi:tikwd-334108349:lp9299018:li:dem:dm;ws=&gclid=CjwKCAjwxOymBhAFEiwAnodBLD9-MKHJoG1TVDWeSokeGgfZp_jhIiqi96umoJ16h9axJNZawPakwRoCfgYQAvD_BwE",
              kcardcolor),
          card("lib/images/shopping/paytmmall.png", "Justdial",
              "https://www.justdial.com/", kcardcolor),
          card("lib/images/travel/yatra.png", "Yatra", "https://www.yatra.com/",
              kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/travel/oyo.png", "OYO", "https://www.oyorooms.com/",
              kcardcolor),
          card("lib/images/travel/makemytrip.jpg", "Makemytrip",
              "https://www.makemytrip.com/", kcardcolor),
          card(
              "lib/images/travel/easemytrip.png",
              "Easemytrip",
              "https://www.easemytrip.com/flights.html?utm_campaign=14425253924&utm_source=g_m&utm_medium=cpc&utm_term=e_easemytrip&adgroupid=128139253362&gclid=CjwKCAjwxOymBhAFEiwAnodBLMH7V244P5QDoBQPtThCbCn2bsE2Jjz-Be0sWyplR3dJLRZrTxYkZBoCjNgQAvD_BwE",
              kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/travel/spicejet.png", "Spicejet",
              "https://www.spicejet.com/", kcardcolor),
          card(
              "lib/images/travel/airindia.png",
              "AirIndia",
              " https://www.airindia.com/?utm_source=google&utm_medium=cpc&utm_campaign=brand-exact&gad=1&gclid=CjwKCAjwxOymBhAFEiwAnodBLB8BWWxb2At1gK6CzEnYcB6ue4M0mwOPN4UG-B4X25P1sCvHZuWM1BoC5DIQAvD_BwE",
              kcardcolor),
          card(
              "lib/images/travel/indigo.png",
              "Indigo",
              "https://www.goindigo.in/?cid=Display|Affiliate|LF|LA63|1245",
              kcardcolor),
        ],
      )
    ]);
  }
}
