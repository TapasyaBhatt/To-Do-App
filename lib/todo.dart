class ToDo {
  String?id;
  String?todoText;
  bool isDone;

ToDo({
  required this.id,
  required this.todoText,
  this.isDone=false,
});

static List<ToDo> todoList(){
  return[
ToDo(id: '01', todoText: ' Excercise',isDone: true,),
ToDo(id: '02', todoText: 'Read Books',isDone: false,),
ToDo(id: '03', todoText: 'Go to Gym',isDone: false,),
ToDo(id: '04', todoText: 'Drink water',isDone: true,),
ToDo(id: '05', todoText: 'Check Email',isDone: true,),
ToDo(id: '06', todoText: 'Go to Market',isDone: false,),
ToDo(id: '07', todoText: 'Go for a wallk',isDone: false,),

  ];
}


}