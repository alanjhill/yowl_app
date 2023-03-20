import 'package:flutter/material.dart';
import 'package:yowl_app/features/business/pages/business_about_page.dart';
import 'package:yowl_app/features/business/pages/business_reviews_page.dart';
import 'package:yowl_app/model/business.dart';

class BusinessDetailsScreen extends StatefulWidget {
  final Business business;

  const BusinessDetailsScreen({Key? key, required this.business})
      : super(key: key);

  @override
  State<BusinessDetailsScreen> createState() => _BusinessDetailsScreenState();
}

class _BusinessDetailsScreenState extends State<BusinessDetailsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late List<Tab> _tabs = [];

  @override
  void initState() {
    super.initState();
    _tabs = <Tab>[
      const Tab(child: Text('About', textAlign: TextAlign.left)),
      const Tab(child: Text('Reviews', textAlign: TextAlign.left)),
    ];
    _tabController = TabController(vsync: this, length: _tabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black54,
          title: Text(
            widget.business.name ?? '',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          centerTitle: true,
          bottom: _CustomTabBar(
            color: Colors.white,
            tabBar: TabBar(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              controller: _tabController,
              labelPadding: EdgeInsets.zero,
              tabs: _tabs,
              labelColor: Colors.black54,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: TabBarView(
          controller: _tabController,
          physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            BusinessAboutPage(business: widget.business),
            BusinessReviewsPage(business: widget.business),
          ],
        ),
      ),
    );
  }
}

class _CustomTabBar extends Container implements PreferredSizeWidget {
  final Color color;
  final TabBar tabBar;

  _CustomTabBar({Key? key, required this.tabBar, required this.color})
      : super(key: key);

  @override
  Size get preferredSize => tabBar.preferredSize;

  @override
  Widget build(BuildContext context) => Container(
        color: color,
        child: tabBar,
      );
}
