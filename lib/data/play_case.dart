const assetsPath = 'assets/images';

enum PlayCase{
  rock, paper, scissors;

  String get path => '$assetsPath/$name.png';
}

enum ResultEnum {
  draw('무승부!'), cpuWin('Cpu 승리!'), playerWin('Player 승리!');

  const ResultEnum(this.displayString);

  final String displayString;

}