void main(List<String> args) {
    Map employee = {
    'componey': ["google", "microsoft", "amazon", "atlassion", "capjemini","oracle"],
    'emploeyee': ["shubham", "omkar", "sandesh", "akash", "pavan"]
  };
  print(employee['componey'].length);

  for(var componey in employee['componey']){
    print(componey);
  }
}