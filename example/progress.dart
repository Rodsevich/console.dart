import "dart:async";

import "package:console/console.dart";

void main() {
  var progress = new ProgressBar();
  var i = 0;
  
  new Timer.periodic(new Duration(milliseconds: 500), (timer) {
    i++;
    progress.update(i);
    if (i == 100) {
      timer.cancel();
    }
  });
}