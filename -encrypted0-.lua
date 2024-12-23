local httpService = game:GetService("HttpService")

local QuestManager = {} do
  local QuestGiverSea = {
  [3] = {
      -- Porto
      [1500] = {
          name = "Porto",
          QuestNumber = 1,
          positions = {
              { -135.16253662109375, 57.34672164916992, 5767.04931640625 },
              { -646.1812744140625, 57.34687042236328, 5629.29052734375 },
          },
      },
      [1525] = {
          name = "Porto",
          QuestNumber = 2,
          positions = {
              { -821.1058959960938, 85.14470672607422, 6020.13134765625 },
              { -90.47089385986328, 85.99018096923828, 6134.3037109375 },
          },
      },
      [1550] = {
          name = "Porto",
          QuestNumber = 3,
          positions = {
              { -1089.3062744140625, 52.96033477783203, 6768.19677734375 },
          },
          boss = true,
      },
  
      -- Hydra
      [1575] = { name = "DragonCrewQuest", QuestNumber = 1, positions = {} },
      [1600] = { name = "DragonCrewQuest", QuestNumber = 2, positions = {} },
      [1625] = { name = "VenomCrewQuest", QuestNumber = 1, positions = {} },
      [1650] = { name = "VenomCrewQuest", QuestNumber = 2, positions = {} },
      [1675] = { name = "VenomCrewQuest", QuestNumber = 3, positions = {}, boss = true },
  
      -- Great Tree
      [1700] = {
          name = "MarineTreeIsland",
          QuestNumber = 1,
          positions = {
              { 2489.9853515625, 74.60225677490234, -7778.3955078125 },
              { 3050.3740234375, 74.60226440429688, -7937.1806640625 },
          },
      },
      [1725] = { name = "MarineTreeIsland", QuestNumber = 2, positions = {} },
      [1750] = { name = "MarineTreeIsland", QuestNumber = 3, positions = {}, boss = true },
  
      -- Floating Turtle
      [1775] = {
          name = "DeepForestIsland3",
          QuestNumber = 1,
          positions = {
              { -10531.80859375, 332.1295166015625, -8440.60546875 },
          },
      },
      [1800] = {
          name = "DeepForestIsland3",
          QuestNumber = 2,
          positions = {
              { -10913.6220703125, 332.1295166015625, -8861.123046875 },
          },
      },
      [1825] = {
          name = "DeepForestIsland",
          QuestNumber = 1,
          positions = {
              { -13386.416015625, 332.7450256347656, -7813.82373046875 },
          },
      },
      [1850] = {
          name = "DeepForestIsland",
          QuestNumber = 2,
          positions = {
              { -13512.248046875, 469.9512939453125, -6906.3837890625 },
          },
      },
      [1875] = {
          name = "DeepForestIsland",
          QuestNumber = 3,
          positions = {
              { -13446.009765625, 319.2366027832031, -8432.462890625 },
          },
          boss = true,
      },
      [1900] = {
          name = "DeepForestIsland2",
          QuestNumber = 1,
          positions = {
              { -12002.3173828125, 332.10516357421875, -10606.8037109375 },
          },
      },
      [1925] = {
          name = "DeepForestIsland2",
          QuestNumber = 2,
          positions = {
              { -13343.2685546875, 391.91253662109375, -9779.3642578125 },
          },
      },
      [1950] = {
          name = "DeepForestIsland2",
          QuestNumber = 3,
          positions = {
              { 5358.06494140625, 22.63857650756836, -222.9407958984375 },
          },
      },
  
      -- Haunted Castle
      [1975] = {
          name = "HauntedQuest1",
          QuestNumber = 1,
          positions = {
              { -8760.6826171875, 142.47166442871094, 6040.7607421875 },
          },
      },
      [2000] = {
          name = "HauntedQuest1",
          QuestNumber = 2,
          positions = {
              { -10086.337890625, 141.6935272216797, 5886.92431640625 },
          },
      },
      [2025] = {
          name = "HauntedQuest2",
          QuestNumber = 1,
          positions = {
              { -9496.87109375, 172.47166442871094, 6158.3291015625 },
          },
      },
      [2050] = {
          name = "HauntedQuest2",
          QuestNumber = 2,
          positions = {
              { -9543.4287109375, 6.471667766571045, 6222.5810546875 },
          },
      },
  
      -- Peanut Island
      [2075] = {
          name = "NutsIslandQuest",
          QuestNumber = 1,
          positions = {
              { -2208.5146484375, 38.47021484375, -10162.40625 },
          },
      },
      [2100] = {
          name = "NutsIslandQuest",
          QuestNumber = 2,
          positions = {
              { -2139.01123046875, 70.64556121826172, -10528.1376953125 },
          },
      },
  
      -- Ice Cream Island
      [2125] = {
          name = "IceCreamIslandQuest",
          QuestNumber = 1,
          positions = {
              { -818.749267578125, 66.18632507324219, -10919.6962890625 },
          },
      },
      [2150] = {
          name = "IceCreamIslandQuest",
          QuestNumber = 2,
          positions = {
              { -662.7147216796875, 88.9545669555664, -11286.958984375 },
          },
      },
      [2175] = {
          name = "IceCreamIslandQuest",
          QuestNumber = 3,
          positions = {
              { -1081.33251953125, 14.981462478637695, -14475.7939453125 },
          },
          boss = true,
      },
  
      -- Cake Loaf Island
      [2200] = {
          name = "CakeQuest1",
          QuestNumber = 1,
          positions = {
              { -2374.445556640625, 38.16508102416992, -12121.4091796875 },
          },
      },
      [2225] = {
          name = "CakeQuest1",
          QuestNumber = 2,
          positions = {
              { -1646.3792724609375, 38.539791107177734, -12301.8642578125 },
          },
      },
      [2250] = {
          name = "CakeQuest2",
          QuestNumber = 1,
          positions = {
              { -1860.576171875, 38.16499710083008, -12925.611328125 },
          },
      },
      [2275] = {
          name = "CakeQuest2",
          QuestNumber = 2,
          positions = {
              { -2229.9345703125, 53.869110107421875, -12866.3994140625 },
          },
      },
  
      -- Chocolate Island
      [2300] = {
          name = "ChocQuest1",
          QuestNumber = 1,
          positions = {
              { 30.55209732055664, 25.10116195678711, -12230.8349609375 },
          },
      },
      [2325] = {
          name = "ChocQuest1",
          QuestNumber = 2,
          positions = {
              { 655.442626953125, 25.101062774658203, -12552.1240234375 },
          },
      },
      [2350] = {
          name = "ChocQuest2",
          QuestNumber = 1,
          positions = {
              { 131.3571319580078, 77.58872985839844, -12880.9501953125 },
          },
      },
      [2375] = {
          name = "ChocQuest2",
          QuestNumber = 2,
          positions = {
              { -1081.33251953125, 14.981462478637695, -14475.7939453125 },
          },
      },
  
      -- CandyCane Island
      [2400] = {
          name = "CandyQuest1",
          QuestNumber = 1,
          positions = {
              { -1081.33251953125, 14.981462478637695, -14475.7939453125 },
          },
      },
      [2425] = {
          name = "CandyQuest1",
          QuestNumber = 2,
          positions = {
              { -1081.33251953125, 14.981462478637695, -14475.7939453125 },
          },
      },
  
      -- Tiki Outpost
      [2450] = {
          name = "TikiQuest1",
          QuestNumber = 1,
          positions = {
              { -16551.708984375, 56.02740478515625, -213.63690185546875 },
          },
      },
      [2475] = {
          name = "TikiQuest1",
          QuestNumber = 2,
          positions = {
              { -16222.83203125, 137.55429077148438, 1026.4171142578125 },
          },
      },
      [2500] = {
          name = "TikiQuest2",
          QuestNumber = 1,
          positions = {
              { -16775.34765625, 94.40862274169922, 1122.5123291015625 },
          },
      },
      [2525] = {
          name = "TikiQuest2",
          QuestNumber = 2,
          positions = {
              { -16700.03125, 105.61176300048828, 1585.2734375 },
          },
      },
      [2550] = {
          name = "TikiQuest3",
          QuestNumber = 1,
          positions = {
              { -16700.03125, 105.61176300048828, 1585.2734375 },
          },
      },
      [2575] = {
          name = "TikiQuest3",
          QuestNumber = 2,
          positions = {
              { -16700.03125, 105.61176300048828, 1585.2734375 },
          },
      },
  }  
}



function QuestManager:QuestTable(sea)
  if QuestGiverSea[sea] then
    return QuestGiverSea[sea]
  else
    return false
  end

end
end
return QuestManager
return QuestTable
