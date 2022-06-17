List<String> favJokes = ["", "", "", "", ""];
int iterator = 0;

void pushJoke(String joke){
  if (joke != "Press to get the joke") {
    favJokes[iterator % 5] = spliter(joke);
    iterator++;
  }
}

String gotFavJoke(int i){
  return favJokes[i];
}

String spliter(String st){
  String a = "";
      for(int i = 0; i < st.length; i++){
        a += st[i];
        if (i % 70 == 0 && i > 5){
          a += '\n';
        }
        if (i > 200){
          a += "...";
          break;}
      }
      return a;
}