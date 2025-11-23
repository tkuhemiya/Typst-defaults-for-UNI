
#let template(body) = {
  set text(font: "Times New Roman", size: 12pt)
  set par(leading: 2pt, spacing: 0.5in)

  // exportable heading rules
  show heading.where(level: 1): set text(size: 16pt, weight: "bold")
  show heading.where(level: 2): set text(size: 14pt, weight: "bold")
  show heading.where(level: 3): set text(size: 12pt, weight: "bold")

  set list(indent: 1em)
  set enum(indent: 1em)

  body
}



#let cover_page(name: "Bababa", uowNo: "w2120000", iitNo: "20240000", cource: "Computer Science", module: "Databases", body) = {
  page(margin: (x: 0cm, top: 0.5cm))[
    #grid(
      columns: (50%, 50%),
      align(left)[
        #figure(
          image("./figures/iit.png", width: 70%),
        )
      ],
      align(right)[
        #v(1cm)
        #figure(
          image("./figures/wm.png", width: 70%),
        )
      ]
  )
  #align(center)[
    #text(weight: "bold", size: 20pt)[
      #cource\
      #module\
      #name\
      #uowNo\
      #iitNo\
    ]
  ]

  #pagebreak()
  ]

  body
}


