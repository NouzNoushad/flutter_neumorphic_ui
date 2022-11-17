import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeumorphicHomePage extends StatefulWidget {
  const NeumorphicHomePage({super.key});

  @override
  State<NeumorphicHomePage> createState() => _NeumorphicHomePageState();
}

class _NeumorphicHomePageState extends State<NeumorphicHomePage> {
  List<IconData> icons = [
    Icons.home_outlined,
    Icons.favorite_outline,
    Icons.settings_outlined,
    Icons.share_outlined,
  ];

  List<Map<String, dynamic>> hallList = [
    {
      'icon': Icons.lightbulb,
      'text': 'Lamp',
      'switch': false,
      'colors': Colors.lightGreen,
    },
    {
      'icon': Icons.account_tree,
      'text': 'Air Conditioner',
      'switch': false,
      'colors': Colors.indigoAccent,
    },
    {
      'icon': Icons.meeting_room,
      'text': 'Door',
      'switch': false,
      'colors': Colors.pinkAccent,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicTheme.baseColor(context),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 10,
                ),
                NeumorphicText(
                  'Home',
                  style: const NeumorphicStyle(
                    depth: 2,
                    color: Colors.grey,
                  ),
                  textStyle: NeumorphicTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                NeumorphicIcon(
                  Icons.notifications,
                  size: 20,
                  style: const NeumorphicStyle(
                    color: Colors.grey,
                    depth: 2,
                  ),
                ),
              ],
            ),
            NeumorphicText(
              "Recently used",
              style: const NeumorphicStyle(
                depth: 0,
                lightSource: LightSource.topLeft,
                color: Colors.indigoAccent,
              ),
              textStyle: NeumorphicTextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              // color: Colors.yellow,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: icons.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 70,
                    margin: const EdgeInsets.all(10),
                    child: NeumorphicButton(
                      onPressed: () {},
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12)),
                        depth: 4,
                        lightSource: LightSource.topLeft,
                      ),
                      child: Center(
                        child: NeumorphicIcon(
                          icons[index],
                          size: 35,
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.flat,
                            color: Colors.grey.shade400,
                            depth: 0,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            NeumorphicText(
              "Hall",
              style: const NeumorphicStyle(
                depth: 0,
                lightSource: LightSource.topLeft,
                color: Colors.indigoAccent,
              ),
              textStyle: NeumorphicTextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              height: 300,
              width: double.infinity,
              child: Neumorphic(
                style: NeumorphicStyle(
                  depth: -10,
                  intensity: 0.6,
                  lightSource: LightSource.topLeft,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: double.infinity,
                      child: Neumorphic(
                        style: NeumorphicStyle(
                          depth: -10,
                          intensity: 0.8,
                          lightSource: LightSource.topLeft,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(30)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: NeumorphicButton(
                                onPressed: () {},
                                style: const NeumorphicStyle(
                                  shape: NeumorphicShape.concave,
                                  depth: 5,
                                  boxShape: NeumorphicBoxShape.circle(),
                                ),
                                child: Center(
                                  child: NeumorphicIcon(
                                    Icons.menu,
                                    size: 32,
                                    style: NeumorphicStyle(
                                        color: Colors.grey.shade400),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: hallList.length,
                        itemBuilder: (context, index) {
                          final hall = hallList[index];
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 55,
                                      width: 55,
                                      child: Neumorphic(
                                        style: const NeumorphicStyle(
                                          depth: -5,
                                          boxShape: NeumorphicBoxShape.circle(),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                            height: 40,
                                            width: 40,
                                            child: Neumorphic(
                                              style: const NeumorphicStyle(
                                                shape: NeumorphicShape.flat,
                                                depth: 5,
                                                boxShape:
                                                    NeumorphicBoxShape.circle(),
                                              ),
                                              child: Center(
                                                child: NeumorphicIcon(
                                                  hall['icon'],
                                                  size: 25,
                                                  style: NeumorphicStyle(
                                                    color: hall['switch'] ==
                                                            true
                                                        ? hall['colors']
                                                        : Colors.grey.shade400,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    NeumorphicText(
                                      hall['text'],
                                      style: const NeumorphicStyle(
                                        depth: 0,
                                        lightSource: LightSource.topLeft,
                                        color: Colors.grey,
                                      ),
                                      textStyle: NeumorphicTextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                NeumorphicSwitch(
                                  height: 30,
                                  value: hall['switch'],
                                  style: NeumorphicSwitchStyle(
                                    activeThumbColor: Colors.white,
                                    activeTrackColor: hall['colors'],
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      hall['switch'] = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Neumorphic(
              style: const NeumorphicStyle(
                depth: 5,
                shape: NeumorphicShape.flat,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: customBottomNav(Icons.dashboard),
                    ),
                    Expanded(
                      flex: 1,
                      child: customBottomNav(Icons.device_hub),
                    ),
                    Expanded(
                      flex: 1,
                      child: customBottomNav(Icons.share),
                    ),
                    Expanded(
                      flex: 1,
                      child: customBottomNav(Icons.person),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customBottomNav(IconData icon) => SizedBox(
        height: 40,
        width: 40,
        child: NeumorphicButton(
          onPressed: () {},
          style: const NeumorphicStyle(
            shape: NeumorphicShape.concave,
            depth: 5,
            boxShape: NeumorphicBoxShape.circle(),
          ),
          child: Center(
            child: NeumorphicIcon(
              icon,
              size: 20,
              style: const NeumorphicStyle(color: Colors.indigoAccent),
            ),
          ),
        ),
      );
}
