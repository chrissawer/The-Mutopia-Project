\score {
  \new StaffGroup <<
    \newStaff <<
      \instrumentName \markup { \concat { P \super res } Flûtes }
      \global \includeNotes "flute1"
    >>
    \newStaff <<
      \instrumentName \markup { \concat { 2 \super es } Flûtes }
      \global \includeNotes "flute2"
    >>
    \newStaff <<
      \instrumentName \markup { \concat { P \super rs } Violons }
      \global \includeNotes "violon1"
    >>
    \newStaff <<
      \instrumentName \markup { \concat { 2 \super es } Violons }
      \global \includeNotes "violon2"
    >>
    \newStaff <<
      \instrumentName \markup Haute-contre
      \global \includeNotes "haute-contre"
    >>
    \newStaff <<
      \instrumentName \markup Taille
      \global \includeNotes "taille"
    >>
    \newStaff <<
      \instrumentName \markup \instruments { Basse continue }
      \global \includeNotes "basse"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 132 4) } }
}
