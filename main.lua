Map = Global.getVar("MAP_DECK")
mapDeck = getObjectFromGUID(Map)


function ShuffleCardsAndCreateMap()
    mapDeck.randomize()
    CreateMap()
end

function CreateMap()
    local mapDeckPosition = mapDeck.getPosition()
    local xPosition = mapDeckPosition[1] + 5
    local zPosition = mapDeckPosition[3]

    local maxRows = 5
    local maxColumns = 4

    for j = 1, maxColumns do

      xPosition = mapDeckPosition[1] + 5

      for i = 1, maxRows do
        mapDeck.takeObject({flip = false, position = {xPosition, mapDeckPosition[2], zPosition}})
        xPosition = xPosition + 5.25
      end

      zPosition = zPosition - 3.75
    end

    
end