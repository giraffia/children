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

### Üdvözlő oldal

A gyökér (root) útvonalon (`http://0.0.0.0:3000/`) a welcome/index.html fogad minket, ezt a fájlt kellene átírni, hogy a következőket tartalmazza:

* egy címet (h1): Üdv a Gyerekek alkalmazásban!
* egy bekezdést (p): Itt eltárolhatsz, és visszakereshetsz mindent a gyermekekkel kapcsolatban.
* valamint egy linket (a) a `/children` oldalra (href attribútum)
