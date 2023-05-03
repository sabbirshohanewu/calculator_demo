import 'dart:io';

void main() {
  
  List<Map<String, dynamic>> courses = [];

  print("Enter the number of courses:");
  int numCourses = int.parse(stdin.readLineSync()!);

  
  for (int i = 1; i <= numCourses; i++) {
    print("Enter number for course $i");
    double grade = double.parse(stdin.readLineSync()!);
    print("Enter credit hours for course $i:");
    int creditHours = int.parse(stdin.readLineSync()!);

    
    Map<String, dynamic> course = {
      'grade': grade,
      'creditHours': creditHours,
    };

    
    courses.add(course);
  }

  double totalPoints = 0.0;
  int totalCredits = 0;

  for (Map<String, dynamic> course in courses) {
     double point = calculatePoint(course['grade']);
    int creditHours = course['creditHours'];

    totalPoints += (point * creditHours);
    totalCredits += creditHours;
  }

  
  double gpa = totalPoints / totalCredits;
  print("Your GPA is ${gpa.toStringAsFixed(2)}");
}

double calculatePoint(double grade) {
   double point;
  
  if (grade >= 80) {
    point = 4.0;
    
  } else if (grade >=70) {
    point = 3.5;
    
  } else if (grade >=60 ) {
    point = 3.0;
    
  } else if (grade >= 50) {
    point = 2.5;
    
  } else if (grade >= 40) {
    point = 2.0;
    
  } else {
    point = 0.0;
    
  }
  
  return point;
}
