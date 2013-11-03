applyScreens = (elSet) ->
  START_OFFSET = 100
  PER_SCREEN_OFFSET = 100

  currentOffset = START_OFFSET

  for e in elSet
    jqE = $(e)

    jqE.attr "data-#{currentOffset - PER_SCREEN_OFFSET}p", "transform:translate(100%, 0px);"
    jqE.attr "data-#{currentOffset}p", "transform:translate(0%, 0px);"
    jqE.attr "data-#{currentOffset + PER_SCREEN_OFFSET}p", "transform:translate(-100%, 0px)"

    currentOffset = currentOffset + PER_SCREEN_OFFSET

    console.log $(e).html()


applyScreens $('#phone > .screen')