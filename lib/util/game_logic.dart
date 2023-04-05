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
}
