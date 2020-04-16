
local cfg = {}

-- size of the sms history
cfg.sms_history = 15

-- maximum size of an sms
cfg.sms_size = 500

-- duration of a sms position marker (in seconds)
cfg.smspos_duration = 300

-- phone sounds (playAudioSource)
cfg.dialing_sound = "sounds/phone_dialing.ogg" -- loop
cfg.ringing_sound = "sounds/phone_ringing.ogg" -- loop
cfg.sms_sound = "sounds/phone_sms.ogg"

-- define phone services
-- blipid, blipcolor (customize alert blip)
-- alert_time (alert blip display duration in seconds)
-- alert_permission (permission required to receive the alert)
-- alert_notify (notification received when an alert is sent)
-- notify (notification when sending an alert)
cfg.services = {
  ["Policia Militar"] = {
    blipid = 304,
    blipcolor = 38,
    alert_time = 30, -- 5 minutes
    alert_permission = "police.service",
    alert_notify = "~r~[PMESP]:~n~~s~",
    notify = "~b~Você chamou a PMESP.",
    answer_notify = "~b~A policia está a caminho."
  },
  ["SAMU"] = {
    blipid = 153,
    blipcolor = 1,
    alert_time = 30, -- 5 minutes
    alert_permission = "emergency.service",
    alert_notify = "~r~[SAMU]:~n~~s~",
    notify = "~b~Você chamou o SAMU.",
    answer_notify = "~b~Os socorros estão vindo."
  },
  ["Taxi"] = {
    blipid = 198,
    blipcolor = 5,
    alert_time = 30,
    alert_permission = "taxi.service",
    alert_notify = "~y~[Taxi]:~n~~s~",
    notify = "~y~Você chamou um taxi, espere no local.",
    answer_notify = "~y~Taxi a caminho."
  },
  ["UBER"] = {
    blipid = 198,
    blipcolor = 5,
    alert_time = 30,
    alert_permission = "UBER.service",
    alert_notify = "~y~[UBER]:~n~~s~",
    notify = "~y~Você chamou um UBER, espere no local.",
    answer_notify = "~y~UBER a caminho."
  },
  ["Mecânico"] = {
    blipid = 446,
    blipcolor = 5,
    alert_time = 30,
    alert_permission = "mecanico.service",
    alert_notify = "~y~[Mecânico]:~n~~s~",
    notify = "~y~Você chamou um mecânico.",
    answer_notify = "~y~O mecânico está a caminho."
  },
  ["iFood"] = {
    blipid = 85,
    blipcolor = 40,
    alert_time = 30,
    alert_permission = "entregador.service",
    alert_notify = "~y~[iFood]:~n~~s~",
    notify = "~y~Você chamou um entregador.",
    answer_notify = "~y~Sua entrega está à caminho."
  },
  ["Prostituta"] = {
    blipid = 121,
    blipcolor = 1,
    alert_time = 30,
    alert_permission = "prostituta.service",
    alert_notify = "~y~[Prostituta]:~n~~s~",
    notify = "~y~Você chamou uma puta.",
    answer_notify = "~y~Sua parceira está à caminho."
  },
  ["Psicologo"] = {
    blipid = 280,
    blipcolor = 46,
    alert_time = 30,
    alert_permission = "psicologo.service",
    alert_notify = "~y~[Psicologo]:~n~~s~",
    notify = "~y~Você chamou um Psicologo.",
    answer_notify = "~y~Seu psicologo está à caminho."
  },
  ["Advogado"] = {
    blipid = 269,
    blipcolor = 68,
    alert_time = 30,
    alert_permission = "advogado.service",
    alert_notify = "~y~[Advogado]:~n~~s~",
    notify = "~y~Você chamou um Advogado.",
    answer_notify = "~y~Seu Advogado está à caminho."
  },
}

-- define phone announces
-- image: background image for the announce (800x150 px)
-- price: amount to pay to post the announce
-- description (optional)
-- permission (optional): permission required to post the announce
cfg.announces = {
  ["ADM"] = {
    --image = "nui://vrp_mod/announce_admin.png",
    image = "http://i.imgur.com/HnM1D8w.png",
    price = 0,
    description = "Apenas ADM.",
    permission = "admin.announce"
  },
  ["PMESP"] = {
    --image = "nui://vrp_mod/announce_police.png",
     image = "http://i.imgur.com/cvzroo4.png",
    price = 0,
    description = "Apenas para a Policia.",
    permission = "police.announce"
  },
  ["OLX"] = {
    --image = "nui://vrp_mod/announce_commercial.png",
    image = "http://i.imgur.com/QTDgtjF.png",
    description = "Anuncios",
    price = 5000
  },
  ["Festa"] = {
    --image = "nui://vrp_mod/announce_party.png",
    image = "http://i.imgur.com/mpsZ8SD.png",
    description = "Convide a cidade para a festa.",
    price = 5000
  }
}

return cfg

