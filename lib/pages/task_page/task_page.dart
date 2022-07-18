import 'package:first_lesson/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskPage extends StatefulWidget {
  static const String path = '/task_page';
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 500) {
          return desktopBody;
        }
        return mobileBody;
      }),
    );
  }

  Widget get mobileBody {
    return Container();
  }

  Widget get desktopBody {
    return Row(
      children: [
        Expanded(
            flex: 4,
            child: ColoredBox(
              color: const Color(0xFF202020),
              child: Column(
                children: [
                  //settings text and icon
                  SizedBox(
                    height: 60,
                    child: ListTile(
                      // minVerticalPadding: 0,
                      dense: false,
                      // visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      contentPadding: const EdgeInsets.all(0),
                      title: Text(
                        'Settings',
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      // subtitle: const Text("Salom"),
                      horizontalTitleGap: 0,
                      leading: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.arrow_back,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    width: double.infinity,
                    child: ListTile(
                      dense: false,
                      minLeadingWidth: 0,
                      horizontalTitleGap: 0,
                      subtitle: Text("@TierOhneNation",
                          style: GoogleFonts.roboto(
                              color: const Color(0xFF0F80D7),
                              fontSize: 12,
                              fontWeight: FontWeight.w400)),
                      title: Text("R4IN80W",
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                      trailing: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Container(
                          color: Colors.blue,
                          height: 32,
                          width: 32,
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit,
                              size: 16,
                            ),
                          ),
                        ),
                      ),
                      contentPadding:
                          const EdgeInsets.only(top: 7, bottom: 7, right: 15),
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          MyConsts.image,
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
        Expanded(
            flex: 10,
            child: Container(
              color: Colors.red,
            ))
      ],
    );
  }
}
