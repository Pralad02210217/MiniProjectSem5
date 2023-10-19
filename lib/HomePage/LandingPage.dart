import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  final List<String> dummyImageList = [
    'assets/CST1.jpeg',
    'assets/CST3.jpeg',
    'assets/CST2.jpeg',
  ];

  @override
Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 200, // Set the desired height for the image carousel
          child: ImageCarousel(imageList: dummyImageList),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'The College currently offers the following programs:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '1. Master of Engineering in Renewable Energy',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                '2. Masters in Construction Management',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                '3. Four-year undergraduate engineering programs in the following disciplines:',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5),
              Text(
                '   - Civil',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                '   - Electrical',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                '   - Electronics & Communication',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                '   - Information Technology',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                '   - Engineering Geology',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                '   - Instrumentation & Control Engineering',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                '4. A five-year program in Architecture',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                'Additionally, the College offers capacity-building programs for in-service personnel holding Diplomas in the following disciplines:',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5),
              Text(
                '   - Civil',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                '   - Electrical',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                '   - Electronics & Communication',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                '   - Information Technology',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                'These programs take into account prior learning and, thereby, the duration of the program is reduced by a year.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'The programs are managed through the following academic departments in the College:',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5),
              Text(
                '   - Civil Engineering Department',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                '   - Electrical Engineering Department',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                '   - Electronics & Communication Department',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                '   - Information Technology Department',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                '   - Science and Humanities Department',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                '   - Architecture Department',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'All the academic programs offered by the College are validated and adopted by the Royal University of Bhutan (RUB) and National Accreditation Council of Bhutan.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

}

class ImageCarousel extends StatefulWidget {
  final List<String> imageList;

  ImageCarousel({required this.imageList});

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // Start automatic image change
    _startImageChange();
  }

  void _startImageChange() {
    Future.delayed(Duration(seconds: 2)).then((_) {
      if (_currentPage < widget.imageList.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      if (_pageController.hasClients) {
        _pageController.animateToPage(_currentPage,
            duration: Duration(milliseconds: 500), curve: Curves.ease);
      }
      _startImageChange();
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: widget.imageList.length,
      itemBuilder: (context, index) {
        return Image.asset(
          widget.imageList[index],
          fit: BoxFit.cover,
        );
      },
    );
  }
}