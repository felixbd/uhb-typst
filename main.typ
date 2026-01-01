#let num-of-lines = 8  // 12

#let f(n) = 2 * n + 1


#let hb-flag(n: num-of-lines) = rect(inset: 0mm, grid(
  columns: (1cm, 1cm, 1fr),
  rows: 1cm,
  gutter: 0mm,
  // stroke: .1mm,
  ..range(3 * n).map(i => [
    #box(
      fill: if i.bit-and(1) == 0 { red } else { white },
      width: 100%, height: 100%,
      // str(i)
    ) 
  ])
))


#hb-flag()

#place(dy: 3cm, rotate(90deg)[
  #hb-flag(n: 12)
])


#page(
  paper: "presentation-16-9",
  margin: 5cm,
  background: [
    #place(bottom + left)[
      #grid(
        columns: (1.25cm,) * 3,
        rows: 1.25cm,
        gutter: 0mm,
        ..range(3 * 9).map(i => [
          #box(
            fill: if i == 26 { red.darken(25%) }
            else if i == 24 or i == 25 { red }
            else if calc.rem(i, 3) != 2 and calc.rem(i, 6) > 2 { blue }
            else { blue.darken(25%) },
            width: 100%, height: 100%,
            // str(   calc.rem(i, 3)  ) + ", " + str( calc.rem(i, 6) )
          ) 
        ])
      )
    ]
  ]
)[

  #v(2cm)
  
  #text(size: 25pt)[= Example Presentation title]

  = Subtitle or so

  author ...
 
]



