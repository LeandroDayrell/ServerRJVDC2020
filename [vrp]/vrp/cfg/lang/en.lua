-- define all language properties

local lang = {
  common = {
    welcome = "Bem vindo. Pressione K para abrir o menu.~n~Último login: {1}",
    no_player_near = "~r~Não há pessoas próximas a você",
    invalid_value = "~r~Valor inválido.",
    invalid_name = "~r~Nome inválido.",
    not_found = "~r~Não encontrado.",
    request_refused = "~r~Solicitação recusada.",
    wearing_uniform = "~r~Tenha cuidado, você está vestindo um uniforme.",
    not_allowed = "~r~Não permitido."
  },
  weapon = {
    pistol = "Pistola"
  },
  survival = {
    starving = "faminto",
    thirsty = "com sede"
  },
  money = {
    display = "{1} <span class=\"symbol\">$</span>",
    given = "Dado ~r~R$ {1}.",
    received = "Recebido ~g~R$ {1}.",
    not_enough = "~r~Dinheiro insuficiente.",
    paid = "Pago ~r~R$ {1}.",
    give = {
      title = "Enviar Dinheiro",
      description = "Dê dinheiro para a pessoa mais próxima",
      prompt = "Quantia a ser dada:"
    }
  },
  inventory = {
    title = "Bolsa",
    description = "Abra sua bolsa.",
    iteminfo = "({1})<br /><br />{2}<br /><em>{3} kg</em>",
    info_weight = "peso {1}/{2} kg",
    give = {
      title = "Dar",
      description = "Dê itens para a pessoa mais próxima.",
      prompt = "Quantidade a ser dada (max {1}):",
      given = "Dado ~r~{1} ~s~{2}.",
      received = "Recebido ~g~{1} ~s~{2}.",
    },
    trash = {
      title = "Destruir",
      description = "Destrói os itens.",
      prompt = "Quantidade para destruir (max {1}):",
      done = "Destruido ~r~{1} ~s~{2}."
    },
    missing = "~r~Falta {2} {1}.",
    full = "~r~Bolsa cheia.",
    chest = {
      title = "Bau",
      already_opened = "~r~Este baú já está aberto por outra pessoa.",
      full = "~r~Baú cheio.",
      take = {
        title = "Retirar do bau",
        prompt = "Quantidade para ser retirada (max {1}):"
      },
      put = {
        title = "Colocar no bau",
        prompt = "Quantidade para ser guardada (max {1}):"
      }
    }
  },
  atm = {
    title = "ATM",
    info = {
      title = "Saldo",
      bank = "banco: R${1}"
    },
    deposit = {
      title = "Depositar",
      description = "Deposite seu dinheiro",
      prompt = "Quantia para ser depositada:",
      deposited = "~r~R${1}~s~ depositada."
    },
    withdraw = {
      title = "Sacar",
      description = "Sacar da conta",
      prompt = "Quantia para ser sacada:",
      withdrawn = "~g~R${1} ~s~sacado.",
      not_enough = "~r~Você não tem esse dinheiro no banco."
    }
  },
  business = {
    title = "Junta Comercial",
    directory = {
      title = "Diretório",
      description = "Diretório de negócios.",
      dprev = "> Anterior",
      dnext = "> Próximo",
      info = "<em>capital: </em>{1} $<br /><em>dono: </em>{2} {3}<br /><em>registro n°: </em>{4}<br /><em>telefone: </em>{5}"
    },
    info = {
      title = "Informação dos negócios",
      info = "<em>nome: </em>{1}<br /><em>capital: </em>{2} $<br /><em>transferência de capital: </em>{3} $<br /><br/>Transferência de capital é a quantidade de dinheiro transferido para um período econômico de negócios, o máximo é o capital de negócios."
    },
    addcapital = {
      title = "Adicionar capital",
      description = "Adicionar capital para sua empresa.",
      prompt = "Quantidade a ser adicionada:",
      added = "~r~R${1} ~s~adicionado ao capital da empresa."
    },
    launder = {
      title = "Lavar dinheiro",
      description = "Utilize a empresa para lavar dinheiro sujo.",
      prompt = "Quantidade de dinheiro apra lavar (max R$ {1}): ",
      laundered = "~g~R$ {1} ~s~lavados.",
      not_enough = "~r~Você não tem dinheiro sujo o suficiente."
    },
    open = {
      title = "Abrir empresa",
      description = "Para abrir uma empresa é necessário R$ {1}.",
      prompt_name = "Nome da empresa (não é possível alterar depois, max {1} caracteres):",
      prompt_capital = "Capital inicial (min {1})",
      created = "~g~Empresa aberta."
      
    }
  },
  cityhall = {
    title = "Prefeitura",
    identity = {
      title = "Nova Identidade",
      description = "Crie uma nova identidade, isso te custará R$ {1}.",
      prompt_firstname = "Nome:",
      prompt_name = "Sobrenome:",
      prompt_age = "Idade:",
    },
    menu = {
      title = "Identidade",
	  info = "<em>Nome: </em>{1}<br /><em>Sobrenome: </em>{2}<br /><em>Idade: </em>{3}<br /><em>RG n°: </em>{4}<br /><em>Telefone: </em>{5}<br /><em>Endereço: </em>{6}<br /><em>Profissão: </em> {8}<br /><em>Carteira: R$</em> {9}<br /><em>Conta Corrente: R$</em> {10}"
    }
  },
  police = {
    title = "Policia",
    wanted = "Nível de procurado {1}",
    not_handcuffed = "~r~Não está algemado",
    cloakroom = {
      title = "Guarda Roupas",
      uniform = {
        title = "Uniforme",
        description = "Por uniforme."
      }
    },
    pc = {
      title = "COPOM",
      searchreg = {
        title = "Buscar Antecedentes/Multas",
        description = "Procurar antecedentes/multas.",
        prompt = "Entre com o RG:"
      },
      closebusiness = {
        title = "Fechar empresa",
        description = "Fechar empresa do cidadão mais próximo",
        request = "Tem certeza que deseja fechar a empresa {3} propriedade de {1} {2} ?",
        closed = "~g~Empresa fechada."
      },
      trackveh = {
        title = "Rastrear veículos",
        description = "Rasrear veículo pela placa.",
        prompt_reg = "Entre com a placa do veículo:",
        prompt_note = "Insira o motivo do rastreamento:",
        tracking = "~b~Rastreamento iniciado.",
        track_failed = "~b~Rastreamento de {1}~s~ ({2}) ~n~~r~falhou.",
        tracked = "Rastreado {1} ({2})"
      },
      records = {
        show = {
          title = "Ver registros",
          description = "Mostrar registros policiais pelo RG."
        },
        delete = {
          title = "Limpar Ficha",
          description = "Limpe os registros policiais pelo RG.",
          deleted = "~b~Registros apagados"
        }
      }
    },
    menu = {
      handcuff = {
        title = "Algemar",
        description = "Algemar/Desalgemar."
      },
      drag = {
        title = "Arrastar",
        description = "Arraste a pessoa mais próxima."
      },
      putinveh = {
        title = "Veículo | Guardar Suspeito",
        description = "Coloque a pessoa mais próxima no veículo."
      },
      getoutveh = {
        title = "Veículo | Retirar Suspeito",
        description = "Retire a pessoa do veículo."
      },
      askid = {
        title = "Pedir RG",
        description = "Peça o RG da pessoa mais próxima.",
        request = "Você deseja fornecer o seu RG?",
        request_hide = "Pedido recusado.",
        asked = "Pedir RG..."
      },
      check = {
        title = "Revistar",
        description = "Verifique o dinheiro, bolsos e armas da pessoa mais próxima",
        request_hide = "Recusar revisa.",
        info = "<em>Dinheiro: </em>{1} $<br /><br /><em>Bolsa: </em>{2}<br /><br /><em>Armas: </em>{3}",
        checked = "Você está sendo revistado."
      },
      seize = {
        seized = "Aprendido {2} ~r~{1}",
        weapons = {
          title = "Confiscar | Armamento",
          description = "Apreender armas da pessoa mais próxima",
          seized = "~b~Suas armas foram confiscadas."
        },
        items = {
          title = "Confiscar | Ilegais",
          description = "Apreender itens ilegais",
          seized = "~b~Seus itens foram apreendidos."
        }
      },
      jail = {
        title = "Prender | Delegacia",
        description = "Prender ou soltar da cela.",
        not_found = "~r~Não está próximo da cela.",
        jailed = "~b~Preso.",
        unjailed = "~b~Solto.",
        notify_jailed = "~b~Você está preso.",
        notify_unjailed = "~b~Você está solto."
      },
      fine = {
        title = "Multar",
        description = "Multe a pessoa mais próxima.",
        fined = "~b~Multado ~s~R$ {2} por ~b~{1}.",
        notify_fined = "~b~Você foi multado em ~s~ R$ {2} por ter ~b~{1}.",
        record = "[Multar] R${2} por {1}"
      },
      store_weapons = {
        title = "Guardar armamento",
        description = "Aguardar armas na sua bolsa."
      }
    },
    identity = {
      info = "<em>Nome: </em>{1}<br /><em>Sobrenome: </em>{2}<br /><em>Idade: </em>{3}<br /><em>RG n°: </em>{4}<br /><em>Telefone: </em>{5}<br /><em>Empresa: </em>{6}<br /><em>Capital Social: </em>{7} $<br /><em>Endereço: </em>{9}, {8}"
    }
  },
  emergency = {
    menu = {
      revive = {
        title = "Prestar Socorro",
        description = "Reanime a pessoa mais próxima em coma.",
        not_in_coma = "~r~Não está em coma."
      }
    }
  },
  phone = {
    title = "Telefone",
    directory = {
      title = "Contatos",
      description = "Abra os contatos do seu celular.",
      add = {
        title = "> Adicionar",
        prompt_number = "Digite o número a ser adicionado:",
        prompt_name = "Digite o nome do contato:",
        added = "~g~Contato adicionado."
      },
      sendsms = {
        title = "Enviar Whatsapp",
        prompt = "Envie uma mensagem via Whatsapp (max {1} caracteres):",
        sent = "~g~ Enviar para o n°{1}.",
        not_sent = "~r~ n°{1} fora de área."
      },
      sendpos = {
        title = "Enviar localização",
      },
      remove = {
        title = "Deletar"
      },
      call = {
        title = "Ligar",
        not_reached = "~r~ n°{1} fora de área."
      }
    },
    sms = {
      title = "Whatsapp",
      description = "Mensagens do Whatsapp.",
      info = "<em>{1}</em><br /><br />{2}",
      notify = "Whatsapp~b~ {1}:~s~ ~n~{2}"
    },
    smspos = {
      notify = "Localização via whatsapp ~b~ {1}"
    },
    service = {
      title = "Serviços",
      description = "Ligue para serviços ou emergência.",
      prompt = "Se necessário, insira uma mensagem para o serviço:",
      ask_call = "Recebido chamado de {1}, deseja aceitar? <em>{2}</em>",
      taken = "~r~Já atenderam este chamado."
    },
    announce = {
      title = "Anúncio",
      description = "Publique um anúncio visível para todos.",
      item_desc = "{1} $<br /><br/>{2}",
      prompt = "Conteúdo do anúncio (10-1000 characteres): "
    },
    call = {
      ask = "Aceitar chamada de {1} ?",
      notify_to = "Ligando para~b~ {1}...",
      notify_from = "Recebendo chamada de ~b~ {1}...",
      notify_refused = "Ligação para ~b~ {1}... ~r~ recusada."
    },
    hangup = {
      title = "Desligar chamada",
      description = "Deslige a chamada em andamento."
    }
  },
  emotes = {
    title = "Movimentos",
    clear = {
      title = "> Limpar",
      description = "Limpe a ação em execução."
    }
  },
  home = {
    buy = {
      title = "Comprar",
      description = "Compre uma casa aqui, o preço é {1} $.",
      bought = "~g~Comprado.",
      full = "~r~Não há espaços disponíveis para venda.",
      have_home = "~r~Você já possui um imóvel."
    },
    sell = {
      title = "Vender",
      description = "Venda seu imóvel por {1} $",
      sold = "~g~Vendido.",
      no_home = "~r~Você não possui imóvel neste local."
    },
    intercom = {
      title = "Interfone",
      description = "Use o interfone para entrar em uma casa.",
      prompt = "Número do imóvel:",
      not_available = "~r~Não acessível.",
      refused = "~r~Acesso recusado.",
      prompt_who = "Diga quem é você:",
      asked = "Pedindo acesso...",
      request = "Alguém quer abrir a porta da sua casa: <em>{1}</em>"
    },
    slot = {
      leave = {
        title = "Sair"
      },
      ejectall = {
        title = "Tirar todo mundo",
        description = "Ejetar todos os visitantes da casa, inclusive você, e fechar a casa."
      }
    },
    wardrobe = {
      title = "Guarda Roupas",
      save = {
        title = "> Salvar Look",
        prompt = "Nome do look:"
      }
    },
    gametable = {
      title = "Jogo do bicho",
      bet = {
        title = "Iniciar aposta",
        description = "Comece uma aposta com pessoas perto de você, o vencedor será selecionado aleatoriamente. ",
        prompt = "Valor da aposta:",
        request = "[BET] Do you want to bet {1} $ ?",
        started = "~g~Bet started."
      }
    },
    radio = {
      title = "Radio",
      off = {
        title = "> desligar"
      }
    }
  },
  garage = {
    title = "Garagem ({1})",
    owned = {
      title = "Comprados",
      description = "Veja os veículos de sua propriedade."
    },
    buy = {
      title = "Comprar",
      description = "Compre veículos.",
      info = "{1} $<br /><br />{2}"
    },
    sell = {
      title = "Vender",
      description = "Vender veículos."
    },
    rent = {
      title = "Alugar",
      description = "Alugue um veículo para a sessão (até você desconectar)."
    },
    store = {
      title = "Guardar",
      description = "Coloque o seu veículo atual na garagem.",
      too_far = "O veículo está muito longe.",
      wrong_garage = "O veículo não pode ser armazenado nesta garagem."
    }
  },
  vehicle = {
    title = "Veículo",
    no_owned_near = "~r~Nenhum veículo seu próximo.",
    trunk = {
      title = "Porta Malas",
      description = "Abra o porta malas do veículo."
    },
    detach_trailer = {
      title = "Desanexe trailer",
      description = "Desanexe trailer."
    },
    detach_towtruck = {
      title = "Anexe guincho",
      description = "Desanexe guincho."
    },
    detach_cargobob = {
      title = "Desanexar cargobob",
      description = "Desanexe cargobob."
    },
    lock = {
      title = "Trancar/Destrancar",
      description = "Tranque e destranque o veículo. Utilize o atalho U no teclado."
    },
    engine = {
      title = "Inginição ligada/desligada",
      description = "Dê a partida/desligue o veículo."
    },
    asktrunk = {
      title = "Solicitar o Porta Malas",
      asked = "~g~Pedindo...",
      request = "Deseja liberar o acesso ao Porta Malas?"
    },
    replace = {
      title = "Substituir veículo",
      description = "Substitua no chão o veículo mais próximo."
    },
    repair = {
      title = "Consertar Veículo",
      description = "Conserte o veículo mais próximo."
    }
  },
  gunshop = {
    title = "Loja de Armas ({1})",
    prompt_ammo = "Quantidade de munição para {1}:",
    info = "<em>body: </em> R${1}<br /><em>munição: </em> R$ {2}/u<br /><br />{3}"
  },
  market = {
    title = "Mercado ({1})",
    prompt = "Quantos {1} deseja comprar:",
    info = "{1} $<br /><br />{2}"
  },
  skinshop = {
    title = "Loja de Roupas"
  },
  cloakroom = {
    title = "Cabideiro ({1})",
    undress = {
      title = "> Retirar"
    }
  },
  itemtr = {
    not_enough_reagents = "~r~Você não tem itens de entrada.",
    informer = {
      title = "Informante Ilegal",
      description = "{1} $",
      bought = "~g~Posição enviada para os eu GPS."
    }
  },
  mission = {
    blip = "Missão ({1}) {2}/{3}",
    display = "<span class=\"name\">{1}</span> <span class=\"step\">{2}/{3}</span><br /><br />{4}",
    cancel = {
      title = "Cancelar Missão"
    }
  },
  aptitude = {
    title = "Aptidões",
    description = "Exibir aptidões.",
    lose_exp = "Aptidão ~b~{1}/{2} ~r~-{3} ~s~exp.",
    earn_exp = "Aptidão ~b~{1}/{2} ~g~+{3} ~s~exp.",
    level_down = "Aptidão ~b~{1}/{2} ~r~lose level ({3}).",
    level_up = "Aptidão ~b~{1}/{2} ~g~level up ({3}).",
    display = {
      group = "{1}: ",
      aptitude = "{1} LVL {3} EXP {2}"
    }
  },
  radio = {
    title = "Radio ON/OFF"
  }
}

return lang
