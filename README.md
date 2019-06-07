# Gyerekek

> Minden, amit a gyermekeinkről tudni kell...

## Alkalmazás elindítása

Először klónozod az alkalmazást, majd belépsz a mappába, és feltelepíted a függőségeket:

```bash
$ git clone git@github.com:giraffia/children.git
$ cd children/
$ bundle install
```

Ezek után csak akkor kell a `bundle install` parancsot futtatni, ha új függőséget adunk a projekthez, ilyenkor szól a rendszer:

```bash
Could not find gem '[gem name]' in any of the gem sources listed in your Gemfile.
Run `bundle install` to install missing gems.
```

Elindítod a szervert:

```bash
$ rails s
```

és a böngészőben a `localhost:3000` vagy a `0.0.0.0:3000` URL-en éred el az alkalmazást. A futó szerver figyeli a fájlokban végzett módosításokat, ilyenkor elég a böngészőt frissíteni, hogy ezek érvényre jussanak.

## Az alkalmazás részei

<!-- ### Üdvözlő oldal

A gyökér (root) útvonalon (`http://0.0.0.0:3000/`) a welcome/index.html fogad minket, ezt a fájlt kellene átírni, hogy a következőket tartalmazza:

* egy címet (h1): Üdv a Gyerekek alkalmazásban!
* egy bekezdést (p): Itt eltárolhatsz, és visszakereshetsz mindent a gyermekekkel kapcsolatban.
* valamint egy linket (a) a `/children` oldalra (href attribútum) -->

### Gyermekek oldal

A `/children` útvonalat a router a `ChildrenController` osztály `index` metódusába irányítja, innen pedig a `children/index.*` nevű view fájlt rendereli.
A controller és a view `@`-os változókon keresztül kommunikál egymással, vagyis az `index` metódusban létrehozott `@children` változó elérhető a view fájlban.
Az `.erb` kiterjesztésű fájlok (embedded ruby = beágyazott ruby) a `<%  %>` és `<%=  %>` speciális szintaxissal tud ruby kódot fogadni. Az egyenlőségjeles (második) verzió azt jelenti, hogy az eredményt beleírja a fájlba

* Ahhoz, hogy legyenek gyerekek az adatbázisban, futtasd a `rails db:seed` parancsot a terminálban.
* A controller action (metódus) már készen van, a view azonban még hiányos
  * legyen címe (h1): Gyermekek
  * a "gyermekek száma:" sor tartalmazza a kapott `@children` tömbben szereplő elemek számát (`@children.size`)
  * ezek után tömb elemeit egy táblázatban kellene feltüntetni
    * amelynek fejléce: "Név", "Születési idő", "Nem"
    * sorai pedig a megfelelő gyermek adatai (`name`, `time_of_birth`, `sex`)
