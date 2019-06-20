# Gyerekek

> Minden, amit a gyermekeinkről tudni kell...

## Alkalmazás elindítása

Először klónozod az alkalmazást, majd belépsz a mappába, és feltelepíted a függőségeket:

```bash
$ git clone git@github.com:giraffia/children.git
$ cd children/
$ bundle install
```

Ha már leklónoztad, a `git pull` paranccsal tudod lehúzni az én módosításaimat. A te módosításaidat a következő parancsokkal tudod feltenni:

```bash
$ git add -A
$ git commit -m 'commit üzenet'
$ git push
```

A `bundle install` parancsot csak akkor kell futtatni, ha új függőséget adunk a projekthez, ilyenkor szól a rendszer:

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

<!-- A `/children` útvonalat a router a `ChildrenController` osztály `index` metódusába irányítja, innen pedig a `children/index.*` nevű view fájlt rendereli.
A controller és a view `@`-os változókon keresztül kommunikál egymással, vagyis az `index` metódusban létrehozott `@children` változó elérhető a view fájlban.
Az `.erb` kiterjesztésű fájlok (embedded ruby = beágyazott ruby) a `<%  %>` és `<%=  %>` speciális szintaxissal tud ruby kódot fogadni. Az egyenlőségjeles (második) verzió azt jelenti, hogy az eredményt beleírja a fájlba

* Ahhoz, hogy legyenek gyerekek az adatbázisban, futtasd a `rails db:seed` parancsot a terminálban.
* A controller action (metódus) már készen van, a view azonban még hiányos
  * legyen címe (h1): Gyermekek
  * a "gyermekek száma:" sor tartalmazza a kapott `@children` tömbben szereplő elemek számát (`@children.size`)
  * ezek után tömb elemeit egy táblázatban kellene feltüntetni
    * amelynek fejléce: "Név", "Születési idő", "Nem"
    * sorai pedig a megfelelő gyermek adatai (`name`, `time_of_birth`, `sex`) -->

<!-- A `/children/:id` útvonalat a router a `ChildrenController` osztály `show` metódusába irányítja úgy, hogy az `:id` helyén lévő értéket a `params` `:id` kulcsában teszi elérhetővé. A metódus ez alapján az id alapján keresi meg a kért gyereket.
A `show` view fájlban a következőket kell megjeleníteni:

* A cím a gyermek neve legyen
* alatta egy számozatlan lista (ul) a következő pontokkal:
  * neme
  * születés időpontja, majd zárójelben hogy mennyi idős ('2 éves és 8 hónapos')
    * a `Child` modelben (`app/models/child.rb`) definiáltam egy `age` metódust, amit a `@child` objektumon lehet meghívni (`@child.age`)
    * a metódus egy `Hash` adatstruktúrával tér vissza, amelynek `:years` és `:months` kulcsai adják meg, hogy hány éves, illetve hány hónapos
    * a `Hash` megfelelő kulcsához tartozó értéket a `[]` segítségével lehet elérni: `@child.age[:years]`, `@child.years[:months]`
  * hány nap van hátra a következő születésnapjáig ('123 nap múlva lesz a születésnapja')
    * a megfelelő számot a `Child` model `days_until_next_birthday` metódusa adja meg -->

A `ChildrenController` `index` és `show` action-je közötti átjárást kellene biztosítani.

* A `show.html.erb` végére kellene egy link, ami az `index`-re (`/children`) mutat
* Az `index` view template-ben pedig a táblázatban található neveket kellene linkké alakítani, ami a megfelelő gyermek `show`-jára mutat
  * A link `href` attribútuma határozza meg, hogy hová mutat, a nyitó és záró tag közötti szöveg pedig hogy mi a szövege
