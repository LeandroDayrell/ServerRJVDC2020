
local cfg = {}

cfg.inventory_weight_per_strength = 10 -- weight for an user inventory per strength level (no unit, but thinking in "kg" is a good norm)

-- default chest weight for vehicle trunks
cfg.default_vehicle_chest_weight = 50

-- define vehicle chest weight by model in lower case
cfg.vehicle_chest_weights = {
  ["17cliofl"] = 40,
  ["208"] = 40,
  ["675lt"] = 30,
  ["agile"] = 40,
  ["arrinera"] = 30,
  ["bmci"] = 40,
  ["capt"] = 70,
  ["cczl"] = 30,
  ["chiron17"] = 30,
  ["evoq"] = 70,
  ["fordka"] = 40,
  ["fusion"] = 50,
  ["g65"] = 120,
  ["hondafit"] = 40,
  ["amarok"] = 70,
  ["ix35"] = 60,
  ["mgt"] = 30,
  ["p911r"] = 30,
  ["pcs18"] = 50,
  ["r8ppi"] = 30,
  ["fiattoro"] = 80,
  ["rmodlp750"] = 30,
  ["rmodveneno"] = 30,
  ["chevrolets10"] = 90,
  ["burrito2"] = 70,
  ["srt8"] = 40,
  ["punto"] = 40,
  ["veloster"] = 40,
  ["fulux63"] = 40,
  ["dubsta"] = 95,
  ["habanero"] = 65,
  ["benson"] = 200,
  ["pounder"] = 250,
  ["mb608"] = 170,
  ["xt66"] = 15,
  ["z1000"] = 15,
  ["f4rr"] = 15,
  ["f250"] = 15,
  ["cgtitan"] = 15,
  ["biz"] = 15,
  ["xj66"] = 15,
  ["hcbr17"] = 15,
  ["nh2r"] = 15,
  ["r6"] = 15,
  ["xt660"] = 15,
  ["mobi"] = 15,
  ["zx10r"] = 15,
  ["f620"] = 15,
  ["pop110"] = 15,
  ["viper"] = 55,
  ["918"] = 25,
  ["bc"] = 25,
  ["sont18"] = 60,
  ["santafe"] = 80,
  ["ap2"] = 30,
  ["fusiont"] = 50,
  ["urus2018"] = 60,
  ["raptor2017"] = 120,
  ["chr"] = 60,
  ["renmaster"] = 110,
  ["cblazer"] = 60,
  ["f15078"] = 55,
  ["taco2"] = 70,
  ["18f350"] = 130,
  ["fordcargo"] = 135,
  ["goldwing"] = 80,
  ["gburrito"] = 80,
  ["slamvan2"] = 80,
  ["amarok"] = 110,
  ["dubsta3"] = 200,
  ["patriot"] = 170,
  ["stretch"] = 120,
  ["ratloader2"] = 95,
  ["pony2"] = 75,
  ["speedo2"] = 75,
  ["windosr2"] = 60,
  ["moonbeam2"] = 100,
  ["cavalcade"] = 80,
  ["granger"] = 95,
  ["picador"] = 60,
  ["regina"] = 50,
  ["romero"] = 55,
  ["sandking2"] = 150,
  ["sandking"] = 190,
  ["rumpo3"] = 200,
  ["brickade"] = 450,

  ["bmx"] = 0,
  ["fixter"] = 0,
  ["shifter_kart"] = 0,

  ["2015polstang"] = 30,
  ["CHARGERPF"] = 40,
  ["riot"] = 100,
  ["trailpf"] = 100,
  ["hiluxpf"] = 100,

  ["Seashark"] = 15,
  ["Tug"] = 350,
  ["tug"] = 350,
  ["luxor"] = 230,
  ["luxor2"] = 270,
  ["dodo"] = 160,
  ["CUBAN800"] = 160,
  ["VESTRA"] = 130,
  ["volatus"] = 150,
  ["maverick"] = 65,
  ["buzzard2"] = 90,
  ["havok"] = 20,
  ["microlight"] = 5,
}

-- list of static chest types (map of name => {.title,.blipid,.blipcolor,.weight, .permissions (optional)})
cfg.static_chest_types = {
  -- ["chest"] = { -- example of a static chest
    -- title = "Test chest",
    -- blipid = 205,
    -- blipcolor = 5,
    -- weight = 100
  -- },
  -- ["chest2"] = { -- example of a static chest
    -- title = "Test chest2",
    -- blipid = 205,
    -- blipcolor = 5,
    -- weight = 100,
    -- permissions = "pm1.arsenal",
  -- }
}

-- list of static chest points
cfg.static_chests = {
  -- {"chest", 1855.13940429688,3688.68579101563,34.2670478820801},
  -- {"chest2", 1854.13940429688,3687.68579101563,34.2670478820801}
}

return cfg

