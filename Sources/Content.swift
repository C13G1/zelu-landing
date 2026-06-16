import Foundation

// MARK: - HERO IMAGES

struct HeroImage {
    let img: String
    let x: Double          // % from left (0–100)
    let y: Double          // % from top  (0–100)
    var size: Double?      // width in vw; nil = natural size

    /// Place using percentages directly.
    init(img: String, x: Double, y: Double, size: Double? = nil) {
        self.img = img; self.x = x; self.y = y; self.size = size
    }

    /// Place using Figma X/Y - auto-converted to % against the
    /// hero frame (width 1603 × height 966 in Figma). Just paste the numbers.
    init(img: String, figmaX: Double, figmaY: Double, size: Double? = nil) {
        self.img = img
        self.x = ((20 + figmaX) / 1603) * 100
        self.y = ((40 + figmaY) / 966) * 100
        self.size = size
    }
}

let heroImages: [HeroImage] = [
    
    // lauras
    HeroImage(img: "yellow", figmaX: 0,  figmaY: 6),
    HeroImage(img: "yellow", figmaX: 115,  figmaY: 165),
    HeroImage(img: "yellow", figmaX: 461,  figmaY: 678),
    HeroImage(img: "yellow", figmaX: 821,  figmaY: 12),
    HeroImage(img: "yellow", figmaX: 1027,  figmaY: 615),
    HeroImage(img: "yellow", figmaX: 1373,  figmaY: 574),
    
    //osmars
    HeroImage(img: "greenM", figmaX: 87, figmaY: 402),
    HeroImage(img: "greenM", figmaX: 1053, figmaY: 65),
    HeroImage(img: "greenM", figmaX: 1164, figmaY: 462),
    
    //juliana
    HeroImage(img: "greenF", figmaX: 17, figmaY: 719),
    HeroImage(img: "greenF", figmaX: 386, figmaY: 154),
    HeroImage(img: "greenF", figmaX: 561, figmaY: 0),
    HeroImage(img: "greenF", figmaX: 946, figmaY: 750),
    
    //thais
    HeroImage(img: "pink", figmaX: 252, figmaY: 605),
    HeroImage(img: "pink", figmaX: 1218, figmaY: 267),
    HeroImage(img: "pink", figmaX: 1398, figmaY: 463),
    
    //ed
    HeroImage(img: "blue", figmaX: 304, figmaY: 349),
    HeroImage(img: "blue", figmaX: 292, figmaY: 720),
    HeroImage(img: "blue", figmaX: 1312, figmaY: 29),
    HeroImage(img: "blue", figmaX: 1425, figmaY: 267),
    HeroImage(img: "blue", figmaX: 1335, figmaY: 733),
    
    //larissas
    HeroImage(img: "red", figmaX: 292, figmaY: 27),
    HeroImage(img: "red", figmaX: 657, figmaY: 703),
    HeroImage(img: "red", figmaX: 1159, figmaY: 717),
    HeroImage(img: "red", figmaX: 1486, figmaY: 66),

]


// MARK: - FEATURE PANELS

struct Panel {
    let tag: String
    let titleHTML: String
    let body: String
    let phone: String     // file in Assets/images (without .png)
    let accent: String    // red | blue | yellow | green | pink
}

let storyPanels: [Panel] = [
    Panel(tag: "amigos", titleHTML: "Seus amigos em órbita",
          body: "Todo mundo que importa pra você reunido em um só lugar. O tamanho de cada bolha diz o quanto vocês têm se visto e quem está sumindo sem você perceber.",
          phone: "app-orbit", accent: "pink"),
    Panel(tag: "ble", titleHTML: "Adicione por proximidade",
          body: "Sem links ou QR codes. Quando vocês estão no mesmo lugar, o Zelu detecta automaticamente. É só aproximar os celulares, confirmar o encontro e pronto seu amigo está no app.",
          phone: "app-proximidade", accent: "green"),
    Panel(tag: "meta", titleHTML: "Defina uma promessa de encontros",
          body: "Você escolhe com que frequência quer ver cada amigo uma vez por semana, uma vez por mês. O Zelu acompanha se está sendo cumprida e avisa quando está na hora de aparecer.",
          phone: "app-encontros", accent: "red"),
    Panel(tag: "perfil", titleHTML: "Registre os momentos de vocês",
          body: "Cada encontro pode virar uma foto na galeria de vocês dois. Com o tempo, esses registros se transformam em uma retrospectiva uma linha do tempo da amizade de vocês.",
          phone: "app-momentos", accent: "yellow"),
    Panel(tag: "vacuo", titleHTML: "Resgate quem foi pro vácuo",
          body: "Quando uma amizade fica tempo demais sem encontros, ela vai pro vácuo. Ela não some fica lá esperando. Mas quanto mais tempo passar, mais difícil fica de resgatar.",
          phone: "app-vacuo", accent: "blue"),
]


// MARK: - FAQ

let faqs: [(q: String, a: String)] = [
    ("O que é o Zelu?",
     "Um app que ajuda você a manter contato com seus amigos. Você define quantas vezes quer encontrar cada amigo e o Zelu registra os encontros que acontecem pessoalmente. Encontrar fortalece a amizade no app e ficar sem se ver enfraquece."),
    ("Como adiciono um amigo?",
     "Pessoalmente. Quando você e seu amigo estão perto um do outro com o app aberto, os celulares se reconhecem e trocam os perfis."),
    ("Preciso criar conta ou informar telefone e e-mail?",
     "Não! Você só escolhe um nome e uma foto de perfil. Não pedimos cadastro, telefone nem e-mail."),
    ("Como o app sabe que eu e meu amigo nos encontramos?",
     "Os celulares se reconhecem, por bluetooth, quando vocês estão perto um do outro. Por isso o encontro só conta quando vocês estão juntos de verdade, não à distância."),
    ("Como funciona a meta de encontros?",
     "Para cada amigo você escolhe com que frequência quer se ver: toda semana, a cada 15 dias, uma vez por mês, a cada 3 meses, a cada 6 meses ou uma vez por ano. O app usa essa meta para mostrar se vocês estão se encontrando e quanto tempo falta para o próximo encontro."),
    ("O que acontece se eu não me encontrar com um amigo?",
     "A amizade vai enfraquecendo no app. Para fortalecer de novo, basta se encontrar com ele."),
    ("O que é o vácuo?",
     "Quando você não encontra um amigo durante muito tempo, a amizade vai para o vácuo. Se ela ficar muito tempo no vácuo, some do app. Para tê-la de volta, é preciso conectar com o amigo de novo e começar a amizade do zero."),
    ("O que muda quando a amizade fica mais forte?",
     "Cada amizade tem cinco níveis: Afastados, Distantes, Estáveis, Próximos e Inseparáveis. Quanto mais vocês se encontram, maior o nível e o tamanho da foto do amigo que aparece na tela principal."),
    ("Meu amigo também precisa ter o Zelu?",
     "Sim! Os dois precisam ter o app, porque é assim que os celulares trocam perfis e registram os encontros."),
    ("Posso separar meus amigos em grupos?",
     "Sim! Por exemplo: faculdade, trabalho ou infância, e o app mostra como está cada grupo. Esse recurso é pago: uma única compra de R$ 9,90 dentro do app. O resto do Zelu é gratuito."),
    ("Meus dados ficam seguros?",
     "Sim! Os dados das suas amizades ficam salvos no seu próprio dispositivo, não em servidores nossos, e não são compartilhados."),
    ("O que preciso para usar o Zelu?",
     "Qualquer iPhone com iOS 26.0 ou superior."),
    ("O Zelu já está disponível?",
     "Ainda não na App Store! Por enquanto está em teste gratuito pelo TestFlight — toque em Baixe agora para entrar."),
    ("Tem versão para Android?",
     "Não! Por enquanto o Zelu funciona só em iPhone."),
]
