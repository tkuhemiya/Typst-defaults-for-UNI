
#let uni-template(body) = [

#set page("A4", margin: (x: 1in, top: 1in, bottom: 1in))
#set text(font: "Times New Roman", size: 12pt, fractions: true)
#set par(leading: 2.0, spacing: 0.5in)

#show heading.where(level: 1): #set text(size: 16pt, weight: "bold")
#show heading.where(level: 2): #set text(size: 14pt, weight: "bold")
#show heading.where(level: 3): #set text(size: 12pt, weight: "bold")

#set list(indent: 1em)
#set enum(indent: 1em)

// for syntaxt
#show "Fuck": strong[Nice things]
#show emph: set text(blue)
#show heading.where(level: 1): it => {
  // center it
  set align(left)
  // set size and weight
  set text(12pt, weight: "regular")
  // see more about blocks and boxes
  // in corresponding chapter
  block(smallcaps(it.body))
}
]
