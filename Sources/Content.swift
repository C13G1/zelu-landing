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
        self.x = ((57 + figmaX) / 1603) * 100
        self.y = ((119 + figmaY) / 966) * 100
        self.size = size
    }
}

let heroImages: [HeroImage] = [
    // top band
    HeroImage(img: "yellow", figmaX: 0,  figmaY: 6),
    HeroImage(img: "yellow", figmaX: 115,  figmaY: 165),
    HeroImage(img: "yellow", figmaX: 461,  figmaY: 678),
    HeroImage(img: "yellow", figmaX: 821,  figmaY: 12),
    HeroImage(img: "yellow", figmaX: 1027,  figmaY: 615),
    HeroImage(img: "yellow", figmaX: 1373,  figmaY: 574),

]


// MARK: - FEATURE PANELS

struct Panel {
    let tag: String
    let titleHTML: String
    let body: String
    let phone: String     // file in Assets/images (without .png)
    let accent: String    // red | blue | yellow | green | magenta
}

let storyPanels: [Panel] = [
    Panel(tag: "Seus amigos", titleHTML: "Seus amigos em órbita",
          body: "Todo mundo que importa pra você reunido em um só lugar. O tamanho de cada bolha diz o quanto vocês têm se visto e quem está sumindo sem você perceber.",
          phone: "app-orbit", accent: "red"),
    Panel(tag: "Proximidade", titleHTML: "Adicione por<br>proximidade",
          body: "Sem links ou QR codes. Quando vocês estão no mesmo lugar, o Zelu detecta automaticamente. É só aproximar os celulares, confirmar o encontro e pronto — seu amigo está no app.",
          phone: "app-proximidade", accent: "blue"),
    Panel(tag: "Encontros", titleHTML: "Defina uma promessa<br>de encontros",
          body: "Você escolhe com que frequência quer ver cada amigo — uma vez por semana, uma vez por mês. O Zelu acompanha se está sendo cumprida e avisa quando está na hora de aparecer.",
          phone: "app-encontros", accent: "yellow"),
    Panel(tag: "Momentos", titleHTML: "Registre os<br>momentos de vocês",
          body: "Cada encontro pode virar uma foto na galeria de vocês dois. Com o tempo, esses registros se transformam em uma retrospectiva — uma linha do tempo da amizade de vocês.",
          phone: "app-momentos", accent: "green"),
    Panel(tag: "Vácuo", titleHTML: "Resgate quem<br>foi pro vácuo",
          body: "Quando uma amizade fica tempo demais sem encontros, ela vai pro vácuo. Ela não some — fica lá esperando. Mas quanto mais tempo passar, mais difícil fica de resgatar.",
          phone: "app-vacuo", accent: "magenta"),
]


// MARK: - FAQ

let faqs: [(q: String, a: String)] = [
    ("O Zelu é gratuito?",
     "Sim. O Zelu é gratuito para baixar e usar. Estamos em fase de testes pelo TestFlight — entre, use à vontade e nos conte o que achou."),
    ("Como o Zelu detecta meus amigos por perto?",
     "Por proximidade via Bluetooth. Quando dois celulares com o Zelu estão no mesmo lugar, o app reconhece o encontro — sem links, sem QR codes. Basta confirmar."),
    ("Vocês guardam minha localização?",
     "Não rastreamos sua localização. O Zelu só registra que um encontro aconteceu quando os dois confirmam — o que importa é a amizade, não onde você esteve."),
    ("Meu amigo também precisa ter o app?",
     "Sim. O Zelu funciona entre pessoas que usam o app, então é só chamar a galera pra entrar junto e começar a registrar os encontros de vocês."),
    ("O que acontece quando uma amizade vai pro vácuo?",
     "Ela fica em espera. A amizade não some, mas quanto mais tempo sem se encontrar, mais difícil fica de resgatar. É o empurrãozinho pra você não deixar ninguém no vácuo."),
]
