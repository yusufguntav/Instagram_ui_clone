import 'package:flutter/material.dart';
import 'package:instagram/assets/customColors.dart';
import 'package:instagram/widgets/notificationCard.dart';
import 'package:instagram/widgets/titleWidget.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: contentTextColor,
            )),
        title: Text(
          "Notifications",
          style: TextStyle(color: contentTextColor),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: ListView(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
                  child: NotificationCard(
                    title: "Follow requests",
                    subtitle: "Approve or ignore requests",
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
                  child: TitleWidget(
                    title: "New",
                  ),
                ),
                for (int i = 0; i < 3; i++) ...[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 12),
                    child: NotificationCard(
                      title: "Follow requests",
                      subtitle: "Approve or ignore requests",
                    ),
                  ),
                ],
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
                  child: TitleWidget(
                    title: "This Month",
                  ),
                ),
                for (int i = 0; i < 5; i++) ...[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 12),
                    child: NotificationCard(
                      title: "Follow requests",
                      subtitle: "Approve or ignore requests",
                    ),
                  ),
                ],
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
                  child: NotificationCard(
                    title: "dokdwd",
                    subtitle: "deneme",
                    buttonOnpress: () => debugPrint("deneme"),
                    buttonText: "Button",
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
