import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sinnonteq_test/database/db.dart';
import 'package:sinnonteq_test/utils/colorconstant/colorconstant.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Now",
                  style:
                      TextStyle(color: colorconstant.primarygray, fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Kozhikode Beach",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                    Row(
                      children: [
                        Card(
                          elevation: 8,
                          shape: CircleBorder(),
                          shadowColor: Colors.black.withOpacity(0.5),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.shopping_bag_outlined),
                          ),
                        ),
                        SizedBox(width: 10),
                        InkWell(
                          onTap: () {
                            context.go("/profilescreen");
                          },
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.transparent,
                            child: ClipOval(
                              child: Image.asset(
                                "assets/images/Profile-Avatar1-PNG.png",
                                fit: BoxFit.cover,
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Our Services",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 10),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    childAspectRatio: 0.9,
                  ),
                  itemCount: Database.servicelist.length,
                  itemBuilder: (context, index) {
                    return buildGridview(
                      context,
                      index,
                      Database.servicelist[index]["image"],
                      Database.servicelist[index]["text"],
                    );
                  },
                ),
                SizedBox(height: 10),
                Deliverystatuscard(context, "61753", 15),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Restaurant stories",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      restaurantcard("assets/images/paragon.jpeg", "Paragon"),
                      restaurantcard("assets/images/soofi.jpeg", "Zam Zam"),
                      restaurantcard(
                          "assets/images/kuttichira.jpeg", "Kuttichira"),
                      restaurantcard(
                          "assets/images/nahdi.jpeg", "Nahdi Mandhi"),
                      restaurantcard(
                          "assets/images/pizzahut.jpeg", "Pizza hut"),
                      restaurantcard("assets/images/paragon.jpeg", "Paragon"),
                      restaurantcard("assets/images/soofi.jpeg", "Zam Zam"),
                      restaurantcard(
                          "assets/images/kuttichira.jpeg", "Kuttichira"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Tasy Snap",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      tastysnapcard(
                        "assets/images/tastysnap1.jpeg",
                      ),
                      tastysnapcard("assets/images/tastysnap2.jpeg"),
                      tastysnapcard("assets/images/tastysnap3.jpeg"),
                      tastysnapcard(
                        "assets/images/tastysnap1.jpeg",
                      ),
                      tastysnapcard("assets/images/tastysnap2.jpeg"),
                      tastysnapcard("assets/images/tastysnap3.jpeg")
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Card buildGridview(
      BuildContext context, int index, String image, String text) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xfff8f8fb),
          border: Border.all(color: colorconstant.primarygray),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: 60,
              ),
              SizedBox(height: 5),
              Text(
                text,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Deliverystatuscard(
      BuildContext context, String orderId, int estimatedMinutes) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
      decoration: BoxDecoration(
        color: colorconstant.primarypink,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Your Delivery is on',
                  style: TextStyle(
                    color: colorconstant.primaryblue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                TextSpan(
                  text: ' the way',
                  style: TextStyle(
                    color: colorconstant.primarywhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    width: 200,
                    height: 3,
                    color: colorconstant.primaryblue,
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: 3,
                      color: colorconstant.primarywhite,
                    ),
                  ),
                ],
              ),
              Text(
                'Order Id-$orderId',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Track my order',
                  style: TextStyle(color: colorconstant.primarypink),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Text(
                'EST-$estimatedMinutes Mints',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget restaurantcard(String image, String text) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        width: 60,
        child: Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: colorconstant.primaryyellow,
              child: CircleAvatar(
                radius: 26,
                backgroundImage: AssetImage(image),
              ),
            ),
            SizedBox(height: 5),
            Text(
              text,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

  Widget tastysnapcard(String image) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
