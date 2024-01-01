const assetsPath = 'assets/images';

enum PlayCase{
  rock, paper, scissors;

  String get path => '$assetsPath/$name.png';
}
