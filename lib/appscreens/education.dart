import 'package:flutter/material.dart';
import '../card.dart';
import '../constants.dart';

class education_screen extends StatelessWidget {
  const education_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.vertical, children: [
      Row(
        children: [
          card(
            "lib/images/education/zoom.png",
            "Zoom",
            "https://zoom.us/",
            kwhitecolor,
          ),
          card(
              "lib/images/education/classroom.png",
              "Classroom",
              "https://edu.google.com/workspace-for-education/classroom/",
              kwhitecolor),
          card("lib/images/education/byjus.png", "Byjus", "https://byjus.com/",
              kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/education/unacademey.png", "Unacademey",
              "https://unacademy.com/", kcardcolor),
          card("lib/images/education/udemey.png", "Udemy",
              "https://www.udemy.com/", kcardcolor),
          card(
              "lib/images/education/vedantu.png",
              "Vedantu",
              "https://www.vedantu.com/request-counselling-session/VD_AQ_Web_Perf_BrandSearch_Conversions_PanIndia_VDExact?utm_source=VD_AQ_Web_Perf_BrandSearch_Conversions_PanIndia_VDExact&utm_medium=Web_VedantuBrandExact&utm_campaign=BODresponsivesearchad&utm_term=vedantu&gad=1&gclid=CjwKCAjwxOymBhAFEiwAnodBLAoHh0fnpfhI4iZmSfK89ppzcKXESp-3ZHohQ_kKgzwi2rEu_t4tYxoCpRsQAvD_BwE&gclsrc=aw.ds",
              kcardcolor),
        ],
      ),
      Row(
        children: [
          card(
              "lib/images/education/coursera.png",
              "Coursera",
              "https://www.coursera.org/?irclickid=QxuS6wWUsxyNWv4QnqyVVwFmUkF31cRnEzLn2o0&irgwc=1&utm_medium=partners&utm_source=impact&utm_campaign=3919688&utm_content=b2c",
              kcardcolor),
          card("lib/images/education/toppr.png", "Toppr",
              "https://www.toppr.com/", kcardcolor),
          card("lib/images/education/brainly.png", "Brainly",
              "https://brainly.in/", kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/social/wiki.png", "Wikipedia",
              "https://www.wikipedia.org/", kcardcolor),
          card(
              "lib/images/education/upgrad.png",
              "Upgrad",
              "https://www.upgrad.com/blog/?gb=1&gclid=Cj0KCQjwldKmBhCCARIsAP-0rfyJjU3kwGP68ga2PyUrbREdkvPM8olIt8H2qzSx5phcuL4dGfG4rOMaAiMYEALw_wcB",
              kwhitecolor),
          card("lib/images/education/cbse.png", "CBSE",
              "https://mycbseguide.com/", kcardcolor),
        ],
      ),
      Row(
        children: [
          card("lib/images/education/unfoldu.png", "Unfoldu",
              "https://www.unfoldu.com/", kcardcolor),
          card(
              "lib/images/education/chegg.png",
              "Chegg",
              "https://www.chegg.com/study?c_id=sem&utm_source=google&utm_medium=cpc&utm_campaign=hwh--brand--IN_Chegg_Exact_Alpha&utm_content=chegg&gad=1&gclid=CjwKCAjwxOymBhAFEiwAnodBLF8MCARLQbMwyK_fwyOI4VY6r7CdTG-veY6R7y7n2mQXg61Zob3tDRoCNBcQAvD_BwE&gclsrc=aw.ds",
              kcardcolor),
          card("lib/images/education/bart.png", "Bartleby",
              "https://www.bartleby.com/", kcardcolor),
        ],
      )
    ]);
  }
}
