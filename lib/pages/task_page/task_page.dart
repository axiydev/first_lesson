import 'package:first_lesson/consts/consts.dart';
import 'package:first_lesson/consts/my_styles.dart';
import 'package:first_lesson/models/menu_tile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskPage extends StatefulWidget {
  static const String path = '/task_page';
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  int? _currentIndex = 0;
  final List<TileModel> _list = [
    TileModel(
      icon: MyConsts.bell,
      title: 'Notifications',
    ),
    TileModel(
      icon: MyConsts.lock,
      title: 'Privacy and Security',
    ),
    TileModel(
      icon: MyConsts.chat,
      title: 'Chat Settings',
    ),
    TileModel(
      icon: MyConsts.sticker,
      title: 'Sticker',
    ),
    TileModel(
      icon: MyConsts.folder,
      title: 'Folders',
    ),
    TileModel(
      title: 'Advanced Settings',
      icon: MyConsts.settings,
    ),
    TileModel(
      title: 'Language',
      icon: MyConsts.earth,
    ),
    TileModel(
      icon: MyConsts.question,
      title: 'Telegram FAQ',
    ),
    TileModel(
      icon: MyConsts.chat_multi,
      title: 'Ask a Question',
    )
  ];

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
    return ColoredBox(
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

          //search field
          Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 0, 16, 0),
              child: SizedBox(
                height: 32,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: MyStyle.regularStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: const Color.fromRGBO(255, 255, 255, 0.786)),
                      filled: true,
                      isDense: true,
                      fillColor: const Color.fromRGBO(255, 255, 255, 0.0605),
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ),
                ),
              )),
          const SizedBox(
            height: 13,
          ),
          //list
          _listWidget
        ],
      ),
    );
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

                  //search field
                  Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 0, 16, 0),
                      child: SizedBox(
                        height: 32,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: MyStyle.regularStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: const Color.fromRGBO(
                                      255, 255, 255, 0.786)),
                              filled: true,
                              isDense: true,
                              fillColor:
                                  const Color.fromRGBO(255, 255, 255, 0.0605),
                              suffixIcon: const Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 13,
                  ),
                  //list
                  _listWidget
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

  Widget get _listWidget {
    return ListView.separated(
        shrinkWrap: true,
        itemCount: _list.length,
        padding: const EdgeInsets.only(left: 0),
        separatorBuilder: (context, index) => index == 6
            ? const Divider(
                color: Colors.grey,
                thickness: 0.1,
              )
            : const SizedBox(),
        itemBuilder: (context, index) => menuTile(
            icon: _list[index].icon!,
            title: _list[index].title!,
            isSelected: index == _currentIndex,
            onPress: () {
              _currentIndex = index;
              setState(() {});
            }));
  }

  Widget menuTile(
      {required String icon,
      required String title,
      bool isSelected = false,
      GestureTapCallback? onPress}) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Card(
        elevation: 0.0,
        margin: const EdgeInsets.only(left: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
        color: Colors.transparent,
        child: ListTile(
          dense: true,
          onTap: onPress,
          selected: isSelected,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
          selectedTileColor: const Color.fromRGBO(255, 255, 255, 0.0605),
          leading: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 13,
                  width: 3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1.5),
                      color: isSelected
                          ? const Color(0xFF60CDFF)
                          : Colors.transparent),
                ),
                const SizedBox(
                  width: 8,
                ),
                SvgPicture.asset(icon)
              ]),
          contentPadding: const EdgeInsets.only(left: 0),
          horizontalTitleGap: 0,
          minLeadingWidth: 43,
          title: Text(
            title,
            style: MyStyle.regularStyle
                .copyWith(fontSize: 14, fontWeight: FontWeight.w300),
          ),
        ),
      ),
    );
  }
}
