int main() {
  int todos = 4;
  int jovens = 2;
  int adultos = 2;

  for (int i = 1; todos != 0; i++) {
    
    print("Fim do Mês $i: População de coelhos: $todos, Jovens $jovens, Adultos $adultos");

    jovens *= 2;

    adultos *= 2;

    todos = jovens + adultos;

    // A partir do 12º mês, a população de coelhos diminui 75%
    if (i >= 12) {
      todos = (todos * 0.25).toInt();

      jovens = (todos / 2).toInt();

      adultos = jovens;
    }

    if (todos == 1) {
      todos = 0;
    }

    
  }
  return 0;
}