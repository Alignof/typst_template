#set heading(numbering: "1.")
#set terms(indent: 1em)
#set list(indent: 1em)
#set page(numbering: "1")
#set text(lang: "ja")

#set raw(theme: "monokai.tmTheme", tab-size: 4)
#show raw: it => block(
  width: 100%,
  fill: rgb("#1d2433"),
  inset: 8pt,
  radius: 5pt,
  text(fill: rgb("#c2cacc"), it)
)
#show raw.line: it => {
  box(
    width: 100%,
    align(horizon, stack(
      dir: ltr,
      box(
        width: 17pt,
        inset: (x: 7pt),
        align(right, text(white)[
            #it.number
        ]
      )),
      it.body,
    ))
  )
}

//#set quote(block: true)
//#show quote: set pad(x: 1em)

#let quote_block(body) = {
  block(
    width: 100%,
    fill: silver,
    inset: 8pt,
    body
  )
}

#let terminal(body) = {
  block(
    width: 100%,
    fill: black,
    inset: 8pt,
    text(white, body)
  )
}

#let title = [title]
#let affiliation = [affiliation]
#let name = [name]

#align(center, text(20pt)[*#title*])
#align(center, text(13pt)[*#affiliation*])
#align(center, text(16pt)[*#name*])


= Section
#quote_block()[
  #lorem(20)
]

#lorem(50)

= Code
```typst
#show raw.line: it => {
  box(
    width: 100%,
    align(horizon, stack(
      dir: ltr,
      box(
        width: 17pt,
        inset: (x: 7pt),
        align(right, text(white)[
            #it.number
        ]
      )),
      it.body,
    ))
  )
}
```
