(function() {
  var applyScreens;

  applyScreens = function(elSet) {
    var PER_SCREEN_OFFSET, START_OFFSET, currentOffset, e, jqE, _i, _len, _results;
    START_OFFSET = 100;
    PER_SCREEN_OFFSET = 100;
    currentOffset = START_OFFSET;
    _results = [];
    for (_i = 0, _len = elSet.length; _i < _len; _i++) {
      e = elSet[_i];
      jqE = $(e);
      jqE.attr("data-" + (currentOffset - PER_SCREEN_OFFSET) + "p", "transform:translate(100%, 0px);");
      jqE.attr("data-" + currentOffset + "p", "transform:translate(0%, 0px);");
      jqE.attr("data-" + (currentOffset + PER_SCREEN_OFFSET) + "p", "transform:translate(-100%, 0px)");
      currentOffset = currentOffset + PER_SCREEN_OFFSET;
      _results.push(console.log($(e).html()));
    }
    return _results;
  };

  applyScreens($('#phone > .screen'));

}).call(this);
