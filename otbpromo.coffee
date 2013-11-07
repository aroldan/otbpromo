START_OFFSET = 100
PER_SCREEN_OFFSET = 100

applyScreens = (elSet, gapAmount = 0) ->
  currentOffset = START_OFFSET
  count = 1

  for e in elSet
    jqE = $(e)

    jqE.attr "data-#{currentOffset - PER_SCREEN_OFFSET + gapAmount}p", "opacity:0"
    jqE.attr "data-#{currentOffset - gapAmount}p", "opacity:1"
    jqE.attr "data-#{currentOffset + PER_SCREEN_OFFSET - gapAmount}p", "opacity:0"

    count += 1

    currentOffset = currentOffset + PER_SCREEN_OFFSET

    console.log $(e).html()

# applyScrolls = (elSet) ->
#   currentOffset = START_OFFSET

#   for e in elSet
#     jqE = $(e)

#     jqE.attr "data-#{cz"

applyScreens $('#phone .screenarea .screen')
applyScreens $('#appscreen .subbox'), 20