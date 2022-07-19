class TileModel {
  String? icon;
  String? title;
  bool? isSelected;
  TileModel({this.icon, this.isSelected, this.title});

  TileModel copyWidth(bool? isSelected) => TileModel(
      icon: icon, title: title, isSelected: isSelected ?? this.isSelected);
}
