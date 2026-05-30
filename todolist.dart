import 'dart:io';

List<String> tasks = [];

void main() {
while (true) {
print("\n------ To DO LIST ------");
print("Enter A to add new task");
print("Enter B to view all tasks");
print("Enter D to delete a task");
print("Enter E to exit");

String? choice = stdin.readLineSync()?.toUpperCase();  

if (choice == 'A') {  
  print("\n------ Add New Task ------");  
  print("Describe the task you want to add:");  
  String? task = stdin.readLineSync();  

  if (task != null && task.isNotEmpty) {  
    tasks.add(task);  
    print("Task added successfully!!");  
  }  
}   
else if (choice == 'B') {  
  if (tasks.isEmpty) {  
    print("No tasks found! Please add some tasks!");  
  } else {  
    print("\n------ All Tasks ------");  
    for (int i = 1; i <= tasks.length; i++) {  
      print("$i. ${tasks[i - 1]}");  
    }  
  }  
}   
else if (choice == 'D') {  
  print("\n------ Delete Task ------");  
  if (tasks.isEmpty) {  
    print("Your list is empty. Nothing to delete!");  
  } else {  
    print("Your current tasks:");  
    for (int i = 1; i <= tasks.length; i++) {  
      print("$i. ${tasks[i - 1]}");  
    }  

    print("\nEnter the number of the task you want to delete:");  
    String? input = stdin.readLineSync();  
    int? n = int.tryParse(input ?? "");  

    if (n != null && n > 0 && n <= tasks.length) {  
      tasks.removeAt(n - 1);  
      print("Task deleted successfully!!");  
    } else {  
      print("Invalid task number. Please try again.");  
    }  
  }  
}   
else if (choice == 'E') {  
  print("Exiting the list. Have a nice day!!");  
  break;  
}   
else {  
  print("Invalid choice. Please try again!!");  
}
}
}
