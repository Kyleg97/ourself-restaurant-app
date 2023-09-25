class MenuItem {
  final String name;
  final double? cost;

  MenuItem({
    required this.name,
    this.cost,
  });
}

class MenuItemHeader extends MenuItem {
  MenuItemHeader({required super.name});
}

class MenuItemSubHeader extends MenuItem {
  MenuItemSubHeader({required super.name});
}
