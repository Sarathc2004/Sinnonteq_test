import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sinnonteq_test/utils/colorconstant/colorconstant.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 249, 249),
      appBar: AppBar(
        title: InkWell(
            onTap: () => context.pop(context),
            child: Icon(Icons.arrow_back_ios_new)),
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 35,
              backgroundImage:
                  AssetImage("assets/images/Profile-Avatar1-PNG.png"),
            ),
            title: Text(
              "Name",
              style: TextStyle(color: colorconstant.primaryblack),
            ),
            subtitle: Text(
              "96565434433",
              style: TextStyle(color: colorconstant.primaryblack),
            ),
            trailing: TextButton(
              onPressed: () {},
              child: Text("Edit"),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                settingsCard(Icons.shopify_rounded, "My orders"),
                settingsCard(Icons.favorite, "My wishlist"),
                settingsCard(Icons.card_membership, "Membership"),
                settingsCard(Icons.card_giftcard, "My coupens"),
                settingsCard(Icons.location_on, "My Addresses"),
                settingsCard(Icons.wallet, "My Wallet"),
                settingsCard(Icons.help, "Help"),
                settingsCard(Icons.settings, "Settings"),
                settingsCard(Icons.feed_rounded, "Send Feedback"),
                settingsCard(Icons.logout, "Logout")
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding settingsCard(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadowColor: Colors.grey.withOpacity(0.5),
        child: Container(
          height: 60,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: colorconstant.primarywhite,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Icon(icon),
              const SizedBox(width: 10), // Added spacing between icon and text
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
