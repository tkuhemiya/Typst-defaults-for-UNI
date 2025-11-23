
#let template(body) = {


  set page(paper: "a4", margin: (x: 1in, top: 1in, bottom: 1in), numbering: "1")
  set text(font: "Times New Roman", size: 12pt)
  set par(leading: 2pt, spacing: 0.5in)

  set heading(numbering: "1.1")
  show heading.where(level: 1): set text(size: 16pt, weight: "bold")
  show heading.where(level: 2): set text(size: 14pt, weight: "bold")
  show heading.where(level: 3): set text(size: 12pt, weight: "bold")

  set list(marker: ([•], [⁃]))
  set enum(indent: 1em)

  set bibliography(style: "ieee") // use @key
  bibliography("./chapters/reference.bib")
  //set cite() // form: normal, prose, full, author, year

  // table of indexes

  counter(page).update(1) // startes numbering from here
  body

  // references
}



#let cover_page(name: "Bababa", uowNo: "w2120000", iitNo: "20240000", cource: "Computer Science", module: "Databases", body) = {

  set document(title: cource+module, author: name, keywords: (cource, module, name, uowNo, iitNo)) // does nothing 

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


