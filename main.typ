#import "style/report.typ": *
#show: style.with(
  title: "typst template",
  authors: (
    (
      name: "n.takana",
      organization: [University of xxx, yyyyyyyyy],
      email: "name@xxx.ac.jp"
    ),
  ),
  abstract: none,
  index-terms: ("typst", "template", "report"),
  bibliography-file: none,
)

#let quote_block(body) = {
  block(
    width: 100%,
    fill: silver,
    inset: 8pt,
    body
  )
}

= Section
#quote_block()[
  #lorem(20)
]

#lorem(50)

= Listing
列挙は以下の通り．
- xxx
- yyy
- zzz

数字の列挙は+を使う．
+ abc
+ def
+ ghi

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

