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

    /// Place using Figma Dev-Mode X/Y — auto-converted to % against the
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
    ("Todo mundo que importa pra você reunido em um só lugar. O tamanho de cada bolha diz o quanto vocês têm se visto e quem está sumindo sem você perceber.",
     "Todo mundo que importa pra você reunido em um só lugar. O tamanho de cada bolha diz o quanto vocês têm se visto e quem está sumindo sem você perceber. Todo mundo que importa pra você reunido em um só lugar. O tamanho de cada bolha diz o quanto vocês têm se visto e quem está sumindo sem você perceber."),
    ("Todo mundo que importa pra você reunido em um só lugar. O tamanho de cada bolha diz o quanto vocês têm se visto e quem está sumindo sem você perceber.",
     "Todo mundo que importa pra você reunido em um só lugar. O tamanho de cada bolha diz o quanto vocês têm se visto e quem está sumindo sem você perceber. Todo mundo que importa pra você reunido em um só lugar. O tamanho de cada bolha diz o quanto vocês têm se visto e quem está sumindo sem você perceber."),
    ("Todo mundo que importa pra você reunido em um só lugar. O tamanho de cada bolha diz o quanto vocês têm se visto e quem está sumindo sem você perceber.",
     "Todo mundo que importa pra você reunido em um só lugar. O tamanho de cada bolha diz o quanto vocês têm se visto e quem está sumindo sem você perceber. Todo mundo que importa pra você reunido em um só lugar. O tamanho de cada bolha diz o quanto vocês têm se visto e quem está sumindo sem você perceber."),
    ("Todo mundo que importa pra você reunido em um só lugar. O tamanho de cada bolha diz o quanto vocês têm se visto e quem está sumindo sem você perceber.",
     "Todo mundo que importa pra você reunido em um só lugar. O tamanho de cada bolha diz o quanto vocês têm se visto e quem está sumindo sem você perceber. Todo mundo que importa pra você reunido em um só lugar. O tamanho de cada bolha diz o quanto vocês têm se visto e quem está sumindo sem você perceber."),
    ("Todo mundo que importa pra você reunido em um só lugar. O tamanho de cada bolha diz o quanto vocês têm se visto e quem está sumindo sem você perceber.",
     "Todo mundo que importa pra você reunido em um só lugar. O tamanho de cada bolha diz o quanto vocês têm se visto e quem está sumindo sem você perceber. Todo mundo que importa pra você reunido em um só lugar. O tamanho de cada bolha diz o quanto vocês têm se visto e quem está sumindo sem você perceber."),
]
