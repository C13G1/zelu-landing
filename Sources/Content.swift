import Foundation

// =============================================================
//  CONTENT — edit EVERYTHING here: hero images, feature texts, FAQ.
//  Sizes (fonts, wheel, phone) live in Assets/css/base.css (:root vars).
// =============================================================


// MARK: - HERO IMAGES ------------------------------------------------
//
//  To ADD an image to the hero: append one line below.
//    HeroImage(img: "blue", x: 30, y: 40)            // natural size
//    HeroImage(img: "red",  x: 70, y: 55, size: 9)   // 9vw wide
//
//  • img  = file name in Assets/images (WITHOUT .png)
//           available: blue, red, greenF, greenM, pink, yellow
//  • x/y  = position in % (0 = left/top, 100 = right/bottom)
//  • size = OPTIONAL width in vw. Omit to keep the image's own size.

struct HeroImage {
    let img: String
    let x: Double
    let y: Double
    var size: Double? = nil
}

let heroImages: [HeroImage] = [
    // top band
    HeroImage(img: "yellow", x: 6,  y: 9,  size: 7),
    HeroImage(img: "red",    x: 20, y: 5,  size: 6),
    HeroImage(img: "greenM", x: 34, y: 10, size: 8),
    HeroImage(img: "blue",   x: 66, y: 7,  size: 8),
    HeroImage(img: "pink",   x: 80, y: 6,  size: 6),
    HeroImage(img: "yellow", x: 92, y: 12, size: 7),
    // upper sides
    HeroImage(img: "greenF", x: 12, y: 26, size: 9),
    HeroImage(img: "blue",   x: 27, y: 22, size: 6),
    HeroImage(img: "red",    x: 73, y: 24, size: 6),
    HeroImage(img: "yellow", x: 88, y: 30, size: 9),
    // mid sides (centre kept clear for the logo)
    HeroImage(img: "pink",   x: 5,  y: 50, size: 7),
    HeroImage(img: "greenM", x: 95, y: 52, size: 8),
    // lower band
    HeroImage(img: "blue",   x: 10, y: 72, size: 8),
    HeroImage(img: "yellow", x: 26, y: 78, size: 6),
    HeroImage(img: "red",    x: 60, y: 82, size: 7),
    HeroImage(img: "greenF", x: 74, y: 74, size: 9),
    HeroImage(img: "pink",   x: 90, y: 70, size: 6),
]


// MARK: - FEATURE PANELS ---------------------------------------------
//
//  The 5 feature screens. The wheel slice + accent dot use `accent`
//  (a brand colour name). titleHTML may contain <br> for line breaks.

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


// MARK: - FAQ --------------------------------------------------------

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
