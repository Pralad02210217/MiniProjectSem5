import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ITDepartmentPage(),
  ));
}

class ITDepartmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Information Technology Department'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(text: 'Information'),
              Tab(text: 'Staffs'),
              Tab(text: 'Previous HoDs'),
            ],
          ),
        ),
        body: ITDepartmentContent(),
      ),
    );
  }
}

class ITDepartmentContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        InformationTab(),
        StaffsTab(),
        PreviousHodsTab(),
      ],
    );
  }
}

class InformationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        SizedBox(height: 20),
        Image.asset(
          'assets/DepartmentViewIT.jpeg',
          height: 200,
        ),
        SizedBox(height: 16),
        Text(
          'Basic Information on the Programme',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Name of Institute:',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'College of Science and Technology',
          style: TextStyle(fontSize: 16),
        ),
        Text(
          'Title of the Award:',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Information Technology',
          style: TextStyle(fontSize: 16),
        ),
        Text(
          'Courses Offered:',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '1',
          style: TextStyle(fontSize: 16),
        ),
        Text(
          'Award Granting Body:',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'The Royal University of Bhutan',
          style: TextStyle(fontSize: 16),
        ),
        Text(
          'Date of Initial Approval:',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'July 2010 (validated)',
          style: TextStyle(fontSize: 16),
        ),
        Text(
          'Date of approval of the Last Review:',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '23-25th March 2016',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 16),
        Text(
          'Aims of the Department',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'The Department aims to develop Information Technology Professionals with specializations in Networking, Software Engineering, or Information Security who will be able to contribute to the development of ICT in the country through Research, Innovation, Creativity, and Enterprise with ethical and professional responsibility.',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Programmes Offered',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              _buildProgrammeItem('Programme 1', Icons.school),
              _buildProgrammeItem('Programme 2', Icons.school),
              _buildProgrammeItem('Programme 3', Icons.school),
            ],
          ),
        ),
        SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset(
                'assets/ITHoD.png',
                height: 120,
              ),
              SizedBox(height: 16),
              Text(
                'Current HoD: Tandin Wangchuk',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Email: tandinwangchuk.cst@rub.edu.bt',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildProgrammeItem(String programmeName, IconData icon) {
    return Row(
      children: [
        Icon(icon, size: 24),
        SizedBox(width: 16),
        Text(
          programmeName,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}

class StaffsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Add your staff details here
    return Text('Staff Details');
  }
}

class PreviousHodsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Add your previous HoDs details here
    return Text('Previous HoDs Details');
  }
}
