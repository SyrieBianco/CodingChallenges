function pickPeaks(arr){
  const tracker = { pos: [], peaks:[] };
  const plateau = { pos: null, peak: null, true: false};

  for ( let i = 1; i < arr.length - 1; i++ ) {
    let prev, curr, next;
    [prev, curr, next] = [arr[i - 1], arr[i], arr[i + 1]];

    // first check to see if it is greater than the element before it
    if ( curr > prev ) {
      // if it is equal to the next element...
      if ( curr === next) {
        // update the plateau object
        plateau.pos = i;
        plateau.peak = curr;
        plateau.true = true;
      } else if (curr > next) {
        tracker.pos.push(i);
        tracker.peaks.push(curr);
      }
    }

    // if the value goes down and we were in a plateau
    if (curr > next && plateau.true) {
      tracker.pos.push(i);
      tracker.peaks.push(curr);
    }
  }

  return tracker;
}
