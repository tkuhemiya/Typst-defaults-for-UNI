
#let template(body) = [

#set page("us-letter", margin: (x: 1cm, top: 1cm, bottom: 1cm))

#set heading(numbering: "I.1:")
#set par(justify: true)
#set list(indent: 1em)
#set enum(indent: 1em)

// for syntaxt
#show "Fuck": strong[Nice things]
#show emph: set text(blue)
#show heading.where(level: 1): it => {
  // center it
  set align(center)
  // set size and weight
  set text(12pt, weight: "regular")
  // see more about blocks and boxes
  // in corresponding chapter
  block(smallcaps(it.body))
}
]
