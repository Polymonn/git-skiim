import 'dart:io';
Map<String, String> data={ };

void main(){
  while(true){
    print("Welcome to the login and registration system.");
    print("Enter R to register, L to login, or Q to quit:");
    var choice = stdin.readLineSync()?.toUpperCase();
    if(choice=="R"){
      var i= register();
      print(i);
    }
    else if(choice=="L"){
      var i= login();
      print(i);
    }
    else if(choice=="Q"){
      print("Exiting the system. Bye!");
      break;
    }
    else{
      print("Invalid choice. Please enter R to register, L to login, or Q to quit.");
    }
  }
}


String register(){
  print("\n--- Registration ---");
  print("Enter a username:");
  var username = stdin.readLineSync()??" ";
  print("Enter a password:");
  var password = stdin.readLineSync()??" ";
  if(username.isEmpty || password.isEmpty){
    return "Username and password cannot be empty.";
  }
  if(data.containsKey(username)){
    return "Username already exists. Please choose a different username.";
  }
  else{
    data[username]=password;
    return "Registration successful. You can now login with your credentials.";
  }
}

String login(){
  print("\n--- Login ---");
  print("Enter your username:");
  var username = stdin.readLineSync()??" ";
  print("Enter your password:");
  var password = stdin.readLineSync()??" ";
  if(username.isEmpty || password.isEmpty){
    return "Username and password cannot be empty.";
  }
  if(data.containsKey(username) && data[username]==password){
    return "Login successful. Welcome, $username!";
  }
  else{
    return "Invalid username or password. Please try again.";
  }
}
