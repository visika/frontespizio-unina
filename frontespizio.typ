#let title = "Inserire qui il titolo della tesi"
#let relatore_1 = "Inserire qui il primo relatore"
#let relatore_2 = "Inserire qui il secondo relatore"
#let candidato = "Nome e cognome del candidato"
#let matricola = "Numero di matricola"
#let annoaccademico = "1900/1901"

// Imposta i metadati del documento
#set document(title: title, author: candidato)

// Imposta un font tipo LaTeX
#set text(font: "New Computer Modern", size: 12pt)

#set page(
  paper: "a4",
  margin: (right: 3cm, left: 3.5cm, top: 4.5cm, bottom: 3.5cm),
  numbering: "i",
  // Imposta un footer vuoto, in modo che non appaia la numerazione nel frontespizio
  footer: [],
)

#[ // Title page
  #set align(center)

  #text(1.5em, [*UNIVERSITÀ DEGLI STUDI DI NAPOLI \ "FEDERICO II"*])

  #v(3mm)

  // University Logo
  #image("University_Federico_II_Logo.svg", width: 25%)

  #v(1cm)

  *Scuola Politecnica e delle Scienze di Base*

  *Area Didattica di Scienze Matematiche Fisiche e Naturali*

  #v(8mm)

  *Dipartimento di XXXX "Nome Cognome"*

  #v(20mm)

  _Laurea Magistrale in YYYY_

  #v(5mm)

  #text(1.5em, title)

  #v(25mm)

  #grid(
    columns: 2,
    align: (left, right),
    column-gutter: 1fr,
    row-gutter: 2.5mm,
    [*Relatori*], [*Candidato*],
    relatore_1, candidato,
    relatore_2, [Matr. #matricola],
  )

  #v(5.5mm)

  #text(1.2em, [Anno Accademico #annoaccademico])

  #pagebreak() ]

#set page(
  paper: "a4",
  margin: (right: 3cm, left: 3.5cm, top: 3.5cm, bottom: 3.5cm),
  numbering: "i",
  // Lascia il footer secondo le impostazioni predefinite di Typst, in modo da mostrare da ora in poi la numerazione delle pagine
  footer: none,
)

// Qui inserisci abstract e indice
#par(justify: true)[
  = Abstract
  #lorem(50)
]

#outline()

// Da qui in poi la numerazione è in numeri arabi e ricomincia da uno
#set page(numbering: "1")
#counter(page).update(1)
#pagebreak()

= Introduzione

