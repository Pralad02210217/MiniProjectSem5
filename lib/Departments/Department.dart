// lib/Departments/Department.dart

import 'package:flutter/material.dart';
import 'ITDepartment.dart'; // Import the ITDepartment.dart file

class DepartmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Departments'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SearchBar(), // Create a custom SearchBar widget
          SizedBox(height: 20),
          DepartmentList(), // Create a custom DepartmentList widget
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(50), // Create a rounded shape
      ),
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search for a department...',
          prefixIcon: Icon(Icons.search, color: Colors.white),
          border: InputBorder.none,
        ),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class DepartmentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<DepartmentData> departments = [
      DepartmentData(
        name: 'Information Technology Department',
        image: 'assets/IT.jpeg',
      ),
      DepartmentData(
        name: 'Civil Department',
        image: 'assets/civil.jpeg',
      ),
      DepartmentData(
        name: 'Architecture Department',
        image: 'assets/archi.jpeg',
      ),
      DepartmentData(
        name: 'Electrical Department',
        image: 'assets/electrical.jpeg',
      ),
      DepartmentData(
        name: 'Electronic and Communication Department',
        image: 'assets/ECE.jpeg',
      ),
      DepartmentData(
        name: 'Science And Humanities Department',
        image: 'assets/SCi.jpeg',
      ),
      // Add more department data for other departments
    ];

    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical, // Make the list scroll vertically
        children: departments.map((department) {
          return DepartmentCard(
            name: department.name,
            image: department.image,
            onTap: () {
              // Define navigation when the department card is tapped
              Navigator.push(context, MaterialPageRoute(builder: (context) => ITDepartmentPage()));
            },
          );
        }).toList(),
      ),
    );
  }
}

class DepartmentData {
  final String name;
  final String image;

  DepartmentData({
    required this.name,
    required this.image,
  });
}

class DepartmentCard extends StatelessWidget {
  final String name;
  final String image;
  final VoidCallback onTap;

  DepartmentCard({
    required this.name,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Use the provided onTap callback
      child: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(
              image,
              height: 100, // Set the desired height for department images
            ),
            SizedBox(height: 8),
            Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
