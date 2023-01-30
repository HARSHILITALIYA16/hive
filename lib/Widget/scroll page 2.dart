import 'package:flutter/material.dart';
import 'package:scroll_page_view/pager/page_controller.dart';
import 'package:scroll_page_view/pager/scroll_page_view.dart';

class Scroll_Page2 extends StatefulWidget {
  const Scroll_Page2({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Scroll_Page2State();
}

class _Scroll_Page2State extends State<Scroll_Page2> {
  static const _images = [
    'https://media.istockphoto.com/photos/mountain-landscape-picture-id517188688?b=1&k=20&m=517188688&s=612x612&w=0&h=x8h70-SXuizg3dcqN4oVe9idppdt8FUVeBFemfaMU7w=',
    'https://media.istockphoto.com/id/1290895895/photo/ahmedabad.jpg?s=612x612&w=0&k=20&c=96u0bJ-lpPHEFx-ICxgvph7Tubrrdb1iLxF5Ab0VO2U=',
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
    'https://www.holidify.com/images/bgImages/AHMEDABAD.jpg',
  ];

  @override
  void initState() {
    precache();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: NeverScrollableScrollPhysics(),
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.only(bottom: 24),
          sliver: SliverToBoxAdapter(
            child: SizedBox(
              height: 350,
              child: ScrollPageView(
                controller: ScrollPageController(),
                delay: const Duration(seconds: 4),
                indicatorAlign: Alignment.bottomCenter,
                indicatorPadding: const EdgeInsets.only(bottom: 8, right: 16),
                indicatorWidgetBuilder: _indicatorBuilder,
                children: _images.map((image) => _imageView(image)).toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  ///Image
  Widget _imageView(String image) {
    return ClipRRect(
      clipBehavior: Clip.antiAlias,
      child: Image.network(image, fit: BoxFit.cover),
    );
  }

  ///[IndicatorWidgetBuilder]
  Widget? _indicatorBuilder(BuildContext context, int index, int length) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 23),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: RichText(
          text: TextSpan(
            text: '${index + 1}',
            style: const TextStyle(
                fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500),
            children: [
              const TextSpan(
                text: '/',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              TextSpan(
                text: '$length',
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> precache() async {
    for (var image in _images) {
      precacheImage(NetworkImage(image), context);
    }
  }
}
