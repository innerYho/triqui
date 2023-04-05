class Player {
  static const x = 'X';
  static const o = 'O';
  static const empty = '';
}

class Game {
  static const boardlenth = 9; //3x3 blocks
  static const blockSize = 100.0;

  // set board(List<String>? board) {} //
  List<String>? board;

//empty board
  static List<String>? initGameBoard() =>
      List.generate(boardlenth, (index) => Player.empty);

// the winner check algoritm
  bool winnerCheck(
      String player, int index, List<int> scoreboard, int gridSize) {
    //first let´s declare the row and col
    int row = index ~/ 3;
    int col = index % 3;
    int score = player == 'X' ? 1 : -1;

    scoreboard[row] += score;
    scoreboard[gridSize + col] += score;
    if (row == col) scoreboard[2 * gridSize] += score;

    if (gridSize - 1 - col == row) scoreboard[2 * gridSize + 1] += score;

//cheking if we have 3 or -3 in the score board
    if (scoreboard.contains(3) || scoreboard.contains(-3)) {
      return true;
    }
    return false;
  }
}
