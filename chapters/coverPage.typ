#let cover-page(name: "themiya deemantha", uowNo: "w2120000", iitNo: "20240000", cource: "Computer Science", module: "Databases", body) = {
  page(margin: (x: 0cm, top: 0.5cm))[
    #grid(
      columns: (50%, 50%),
      align(left)[
        #figure(
          image("../figures/iit.png", width: 70%),
        )
      ],
      align(right)[
        #v(1cm)
        #figure(
          image("../figures/wm.png", width: 70%),
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

