import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final Widget? header;
  final List<DrawerItem> items;
  final Color? backgroundColor;
  final double width;
  final EdgeInsets padding;

  const CustomDrawer({
    super.key,
    this.header,
    required this.items,
    this.backgroundColor,
    this.width = 304.0,
    this.padding = const EdgeInsets.all(0),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Drawer(
        backgroundColor: backgroundColor,
        child: Column(
          children: [
            if (header != null) header!,
            Expanded(
              child: ListView.builder(
                padding: padding,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  if (item.children != null && item.children!.isNotEmpty) {
                    return _buildExpandableSection(context, item);
                  }
                  return _buildDrawerItem(context, item);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExpandableSection(BuildContext context, DrawerItem item) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        leading: item.icon != null
            ? Icon(item.icon, color: Theme.of(context).primaryColor)
            : null,
        title: Text(item.title),
        initiallyExpanded: item.isExpanded,
        children: item.children!
            .map((child) => _buildDrawerItem(context, child, indent: true))
            .toList(),
      ),
    );
  }

  Widget _buildDrawerItem(BuildContext context, DrawerItem item,
      {bool indent = false}) {
    return ListTile(
      leading: item.icon != null ? Icon(item.icon) : null,
      title: Text(item.title),
      onTap: item.onTap,
      selected: item.isSelected,
      selectedTileColor: Theme.of(context).primaryColor.withOpacity(0.1),
      contentPadding:
          indent ? const EdgeInsets.only(left: 32.0, right: 16.0) : null,
    );
  }
}

class DrawerItem {
  final String title;
  final IconData? icon;
  final VoidCallback? onTap;
  final bool isSelected;
  final bool isExpanded;
  final List<DrawerItem>? children;

  DrawerItem({
    required this.title,
    this.icon,
    this.onTap,
    this.isSelected = false,
    this.isExpanded = false,
    this.children,
  });
}
