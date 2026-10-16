#import "../template.typ": *
#show: book-setup.with(title: "Werden der Form: Inhaltsverzeichnis", lang: "de", running: "Werden der Form: Inhaltsverzeichnis v0.1")

= Werden der Form: Inhaltsverzeichnis
#draftline[Inhaltsverzeichnis v0.1, Projekt secret3, Reihe B, 25. August 2026]

Die sechzehn Kapitel nach Plan v0.56, mit den Abschnitten der übersetzten Kapitel und ihrer Seite im zusammengestellten Entwurf (werden-der-form-buch-entwurf.pdf). Sechs Kapitel liegen auf Deutsch vor. Rückstand: Kapitel 2, 3 und 4, sowie der Abgleich des Gefäßes mit der englischen v0.5.

#table(
  columns: (2em, 1fr, 9em, 3.5em),
  align: (right, left, left, right),
  stroke: none,
  inset: (x: 6pt, y: 4pt),
  table.header([], [Kapitel], [Status], [Seite]),
  table.cell(colspan: 4, fill: luma(240))[#strong[Erster Teil, Form: Das Land der Form]],
  [1], [#strong[Zwei Züge]], [übersetzt v0.12], [4],
  [], [#h(1.2em)Das Gesetz der Drei], [], [5],
  [], [#h(1.2em)Der Preis des Vergessens], [], [8],
  [], [#h(1.2em)Die Antwort], [], [10],
  [], [#h(1.2em)Das Gesetz der Sieben, und der Kreis], [], [13],
  [2], [Alles aus Zwei], [Übersetzung ausstehend], [],
  [3], [Die Unerreichbaren], [Übersetzung ausstehend], [],
  [4], [Die Preisliste], [Übersetzung ausstehend], [],
  [5], [#strong[Das Gefäß]], [übersetzt v0.3, Abgleich mit v0.5 ausstehend], [17],
  [], [#h(1.2em)Der Kolben und die Vorlesungen], [], [17],
  [], [#h(1.2em)Der erste Abend], [], [18],
  [], [#h(1.2em)Das Gesetz der Prägung], [], [19],
  [], [#h(1.2em)Der Ofen], [], [19],
  [], [#h(1.2em)Glas, Gas und die geschäftige Mitte], [], [20],
  [], [#h(1.2em)Was aufstieg, und das Kontobuch geschlossen], [], [21],
  [6], [#strong[Die Maschine, die sich selbst laufen lässt]], [übersetzt v0.5], [23],
  [], [#h(1.2em)Der Wald], [], [23],
  [], [#h(1.2em)Die Lieder], [], [24],
  [], [#h(1.2em)Der Liederleser], [], [24],
  [], [#h(1.2em)Der Nestbauer], [], [25],
  [], [#h(1.2em)Der Seher und das Lied des Waldes], [], [26],
  table.cell(colspan: 4, fill: luma(240))[#strong[Zweiter Teil, Denken]],
  [7], [#strong[Die Frage]], [übersetzt v0.4], [29],
  [], [#h(1.2em)Die Frage, empfangen], [], [29],
  [], [#h(1.2em)Ein Satz, drei Sprecher], [], [29],
  [], [#h(1.2em)Die Münze], [], [30],
  [], [#h(1.2em)Die Grenze], [], [31],
  [8], [#strong[Die andere Seite der Münze]], [übersetzt v0.10], [33],
  [], [#h(1.2em)Der Kartenzeichner], [], [33],
  [], [#h(1.2em)Die zwei Gesetze], [], [34],
  [], [#h(1.2em)Den Beweis laufen lassen], [], [36],
  [], [#h(1.2em)Die Lehre des Kartenzeichners], [], [37],
  [], [#h(1.2em)Der Garten und der Rückspuler], [], [38],
  [], [#h(1.2em)Die drei Sätze], [], [41],
  [9], [Der Maschinenraum], [geplant], [],
  [10], [Denken entfesselt], [geplant], [],
  table.cell(colspan: 4, fill: luma(240))[#strong[Dritter Teil, Bewusstsein]],
  [11], [Der Zeuge], [geplant], [],
  [12], [Der Empfänger], [geplant], [],
  [13], [Die unvollendete Physik], [geplant], [],
  table.cell(colspan: 4, fill: luma(240))[#strong[Finale]],
  [14], [Geist, Seele und Form], [geplant], [],
  [15], [Die zwei Kurse], [geplant], [],
  [16], [#strong[Die Lesart]], [übersetzt v0.2], [45],
  [], [#h(1.2em)Die Rückkehr], [], [45],
  [], [#h(1.2em)Die zwei Lesarten], [], [45],
  [], [#h(1.2em)Das erstarrte Jahrhundert], [], [46],
  [], [#h(1.2em)Die letzten Worte], [], [48],
)

== Anmerkungen

Die Kapitelnummern folgen dem Plan; die Dateinamen in chapters/de tragen dieselben Nummern. Seitenzahlen verschieben sich mit jeder Revision; die Tabelle wird von toc.py aus dem zusammengestellten Entwurf erzeugt, nicht von Hand gepflegt.
