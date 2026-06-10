import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Zelu"

    var body: some HTML {
        Section {
            """
            <div class="d-only">
                <img class="lines" src="images/lines.svg" alt="">

                <img class="avatar avatar-thomas" src="images/blue-thomas.png" alt="">
                <img class="avatar avatar-mathias" src="images/red-mathias.png" alt="">
                <img class="avatar avatar-camis" src="images/yellow-camis.png" alt="">
                <img class="avatar avatar-bullet" src="images/red-bullet.png" alt="">
                <img class="avatar avatar-jonas" src="images/green-jonas.png" alt="">
                <img class="avatar avatar-dayo" src="images/blue-dayo.png" alt="">

                <img class="zelu-circle" src="images/zelu-circle.svg" alt="Zelu — não deixe seus amigos no vácuo">

                <div class="pill pill-yellow">Adicione seus amigos</div>
                <div class="pill pill-red">Defina metas para<br>se encontrar</div>
                <div class="pill pill-blue">Crie retrospectivas</div>

                <a class="cta" href="https://testflight.apple.com/join/MuUJhqc9" aria-label="teste já"></a>
            </div>

            <div class="m-only">
                <img class="m-line-green" src="images/m-line-green.svg" alt="">
                <div class="m-wrap m-wrap-blue"><img src="images/m-line-blue.svg" alt=""></div>
                <div class="m-wrap m-wrap-red"><img src="images/m-line-red.svg" alt=""></div>

                <img class="m-zelu" src="images/m-zelu-full.png" alt="Zelu — não deixe seus amigos no vácuo">

                <div class="m-wrap m-wrap-yellow"><img src="images/m-line-yellow.svg" alt=""></div>

                <img class="avatar m-camis" src="images/yellow-camis.png" alt="">
                <div class="pill pill-yellow m-pill-yellow">Adicione seus amigos</div>

                <img class="avatar m-bullet" src="images/red-bullet.png" alt="">
                <div class="pill pill-red m-pill-red">Defina metas para<br>se encontrar</div>

                <img class="avatar m-dayo" src="images/blue-dayo.png" alt="">

                <a class="m-cta" href="https://testflight.apple.com/join/MuUJhqc9" aria-label="teste já"></a>
            </div>
            """
        }
        .class("stage")
    }
}
