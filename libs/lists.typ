// Copyright 2026 Felix Schladt https://github.com/FelixSchladt

#import "../colors.typ": hm-green-dark, hm-red

#let _list-marker(fill) = move(
  dy: 0.11cm,
  square(width: 0.4em, height: 0.4em, fill: fill),
)

#let pro-list(..items) = list(
  marker: _list-marker(hm-green-dark),
  ..items,
)

#let con-list(..items) = list(
  marker: _list-marker(hm-red),
  ..items,
)

#let pro(body) = pro-list(body)
#let con(body) = con-list(body)

#let pro-con-list(..items) = items.pos().join()
