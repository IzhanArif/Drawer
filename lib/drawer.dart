import 'package:flutter/material.dart';

class Drawerr extends StatefulWidget {
  const Drawerr({Key? key}) : super(key: key);

  @override
  State<Drawerr> createState() => _DrawerState();
}

class _DrawerState extends State<Drawerr> {
  String name = "Drawer";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
                child: Icon(
              Icons.account_circle,
              size: 150.0,
            )),
            ListTile(
                title: const Text(
                  "Page 1",
                ),
                onTap: () {
                  setState(() {
                    name = "You Pressed Page 1";
                  });
                  Navigator.pop(context);
                }),
            ListTile(
                title: const Text(
                  "Page 2",
                ),
                onTap: () {
                  setState(() {
                    name = "You Pressed Page 2";
                  });
                  Navigator.pop(context);
                }),
            ListTile(
                title: const Text(
                  "Page 3",
                ),
                onTap: () {
                  setState(() {
                    name = "You Pressed Page 3";
                  });
                  Navigator.pop(context);
                }),
            ListTile(
                title: const Text(
                  "Page 4",
                ),
                onTap: () {
                  setState(() {
                    name = "You Pressed Page 4";
                  });
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          "Drawer Example",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Center(
          child: Text(
        name,
        style: const TextStyle(fontSize: 75, fontWeight: FontWeight.bold),
      )),
    );
  }
}
