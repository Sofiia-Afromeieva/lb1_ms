import 'package:flutter/material.dart'; 
import 'package:sofia_kiuki_21_7/widgets/student_item.dart';
import 'package:sofia_kiuki_21_7/models/student.dart';

class StudentsScreen extends StatelessWidget {
  
  const StudentsScreen({super.key});

  static final List<Student> studentsList = [
    Student(
      firstName: 'Naruto',
      lastName: 'Uzumaki',
      department: Department.law,
      grade: 7,
      gender: Gender.male,
    ),
        Student(
      firstName: 'Shalltear',
      lastName: 'Bloodfallen',
      department: Department.finance,
      grade: 9,
      gender: Gender.female,
    ),
    Student(
      firstName: 'Light',
      lastName: 'Yagami',
      department: Department.it,
      grade: 6,
      gender: Gender.male,
    ),
        Student(
      firstName: 'Nanami',
      lastName: 'Momozono',
      department: Department.medical,
      grade: 8,
      gender: Gender.female,
    ),
    Student(
      firstName: 'Joseph',
      lastName: 'Joestar',
      department: Department.finance,
      grade: 9,
      gender: Gender.male,
    ),
    Student(
      firstName: 'Ferid',
      lastName: 'Bathory',
      department: Department.medical,
      grade: 10,
      gender: Gender.male,
    ),
    Student(
      firstName: 'Lucy',
      lastName: 'Heartfilia',
      department: Department.it,
      grade: 8,
      gender: Gender.female,
    ),
  ];

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students'),
      ),
      body: ListView.builder(
        itemCount: studentsList.length,
        itemBuilder: (ctx, index) {
          return StudentItem(student: studentsList[index]);
        },
      ),
    );
  }
}

