applyScreens = (elSet) ->
  START_OFFSET = 100
  PER_SCREEN_OFFSET = 100

  currentOffset = START_OFFSET

  for e in elSet
    jqE = $(e)

    jqE.attr "data-#{currentOffset - PER_SCREEN_OFFSET}p", "opacity:0"
    jqE.attr "data-#{currentOffset}p", "opacity:1"
    jqE.attr "data-#{currentOffset + PER_SCREEN_OFFSET}p", "opacity:0"

    currentOffset = currentOffset + PER_SCREEN_OFFSET

    console.log $(e).html()


applyScreens $('#phone .screenarea .screen')