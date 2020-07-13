# Flutter Web UDISE Dashboard

This project is a replica of http://dashboard.udiseplus.gov.in/#!/sedashboard.\
It is a flutter web application.\
Made this project for the pre-internship assessment for AICTE, India.\
This project is incomplete as of now.\
Only UI working.\
Database is connected but it is not used yet or its not bug free..


## Directory Structure
<pre>
-assets  
    - fonts  
        -Open_Sans
    - emblem logo
-lib
    -Database
      -PieChartDB
          -SchoolDB.dart
          -StudentDB.dart
          -TeacherDB.dart
      -Dashboard_BarClass.dart
      -DashboardPieClass.dart
      -Database.dart
      -Database_bar.dart
  -View
      -Home
          -Home_view.dart
  -Widget
      -Charts
          -Bar_Charts
              -bar_chart.dart
          -Pie_Charts
              -indicator.dart
              -piechart_school.dart
              -piechart_teacher.dart
              -piechart_student.dart
      -Content_Bar
          -Pie_Column
              -Pie_Column_Teacher.dart
              -Pie_Column_Student.dar
              -Pie_Column_School.dart
        -content_bar.dart
      -Navigation_Bar
          -navigation_bar.dart
          -navBarButtons.dart
      -Header_Bar
  -main.dart
</pre>  
## Database Tables
<pre>
  -PieDB
    http://goatish-cupful.000webhostapp.com/get.php 
  -BarDB
    http://goatish-cupful.000webhostapp.com/getbar.php 
</pre>
