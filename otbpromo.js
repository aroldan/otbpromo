(function() {
  var PER_SCREEN_OFFSET, START_OFFSET, applyScreens;

  START_OFFSET = 100;

  PER_SCREEN_OFFSET = 100;

  applyScreens = function(elSet, gapAmount) {
    var count, currentOffset, e, jqE, _i, _len, _results;
    if (gapAmount == null) {
      gapAmount = 0;
    }
    currentOffset = START_OFFSET;
    count = 1;
    _results = [];
    for (_i = 0, _len = elSet.length; _i < _len; _i++) {
      e = elSet[_i];
      jqE = $(e);
      jqE.attr("data-" + (currentOffset - PER_SCREEN_OFFSET + gapAmount) + "p", "opacity:0");
      jqE.attr("data-" + (currentOffset - gapAmount) + "p", "opacity:1");
      jqE.attr("data-" + (currentOffset + PER_SCREEN_OFFSET - gapAmount) + "p", "opacity:0");
      count += 1;
      _results.push(currentOffset = currentOffset + PER_SCREEN_OFFSET);
    }
    return _results;
  };

  applyScreens($('#phone .screenarea .screen'));

  applyScreens($('#appscreen .subbox'), 20);

}).call(this);
