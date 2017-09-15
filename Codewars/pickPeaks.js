function pickPeaks(arr){
  const tracker = { pos: [], peaks:[] };
  const plateau = { pos: null, peak: null, true: false};

  for ( let i = 1; i < arr.length - 1; i++ ) {
    let prev, curr, next;
    [prev, curr, next] = [arr[i - 1], arr[i], arr[i + 1]];

    // if the current element is greater than the previous element..
    if ( curr > prev ) {
      // we are not in a plateau
      plateau.true = false;
      // if it is equal to the next element...
      if ( curr === next) {
        // we are in a plateau
        // update the plateau object
        updatePlateau(plateau, i, curr);
      // if it current element is *also* greater than the next element...
      } else if (curr > next) {
        // we are at a relative peak
        // update the tracker object
        updateTracker(tracker, i, curr);
      }
    }

    // if the value goes down and we were in a plateau
    if (curr > next && plateau.true) {
      // that means the plateau has ended
      plateau.true = false;

      // and that it represented a relative peak
      // => update the tracker object
      updateTracker(tracker, plateau.pos, plateau.peak);
    }
  }

  return tracker;
}

function updatePlateau(plateau, i, curr){
  plateau.pos = i;
  plateau.peak = curr;
  plateau.true = true;
}

function updateTracker(tracker, pos, peak){
  tracker.pos.push(pos);
  tracker.peaks.push(peak);
}
