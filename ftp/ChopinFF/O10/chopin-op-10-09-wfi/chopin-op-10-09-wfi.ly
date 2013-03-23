\version "2.16.0"
%lastupdated = #(strftime "Fassung vom %d. %B %Y, %H:%M Uhr" (localtime (current-time)))
footer = #(strftime "Mutopia-%Y/%B/%d-xxx" (localtime (current-time)))

\header {
  filename      =       "chopin-10-09-wfi-a4.ly"
  title         =       \markup \fontsize #1 { "Etüde f-moll" }
  %subsubtitle   =       \lastupdated
  composer      =       \markup \large { "Frédéric Chopin (1810 - 1849)" }
  opus          =       "Opus 10 Nr. 9"
  enteredby     =       "Roland Goretzki"

 mutopiatitle           =       "Etüde f-moll"
 mutopiacomposer        =       "ChopinFF"
 mutopiaopus            =       "Op. 10, No. 9"
 mutopiainstrument      =       "Piano"
 date                   =       "1829-1832"
 source                 =       "Peters, Herrmann Scholtz, 1900b"
 style                  =       "Romantic"
 copyright              =       "Public Domain"
 maintainer             =       "Roland Goretzki"
 maintainerEmail        =       "roland@roland-goretzki.de"
 maintainerWeb          =       "http://www.roland-goretzki.de/"
 moreInfo               =       "Proofread by Hildegard Böhme"
 lastupdated            =       "2006/05/25"

 footer = "Mutopia-2006/05/25-484"
}

\include "deutsch.ly"

#(set-global-staff-size 19)

global =   {
  \key f \minor
  \time 6/8
  s2.*67
  \bar "|."
}

%%%%%%%%%   Beginn des Definitionsteils   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                       %
Axdefault = \accidentalStyle "default"
Axpiano = \accidentalStyle "piano"
Axmodern = \accidentalStyle "modern"
%
oben = \change Staff = up
unten = \change Staff = down
%
PH = \sustainOff
PR = \sustainOn
%
mcresc = \markup { cresc. }
ritard = \markup { ritard. }
rit = \markup { rit. }
%%%%%%%%%   Ende des Definitionsteils   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

rechts =  \context Staff \relative c'{
\set Staff.midiMinimumVolume = #-.5
\set Staff.midiMaximumVolume = #1
  \tempo "Allegro, molto agitato" 4. = 96
    r8 f-.( g-.) r as-.( b-.)                                | % Takt  1
  %%%%======== ------------------------------------------------ ---------
    r c(-. des-. c-. as'-. g-.                             | % Takt  2
  %%%%======== ------------------------------------------------ ---------
    f-. c-. des-. c-. as-. f-.                                      | % Takt  3
  %%%%======== ------------------------------------------------ ---------
  \once \override Script #'avoid-slur = #'outside
    c2.^^)                                                      | % Takt  4
  %%%%======== ------------------------------------------------ ---------
    r8 f-.( g-.) r as-.( b-.)                                   | % Takt  5
  %%%%======== ------------------------------------------------ ---------
    r c-.( des-. c-. c'-. as-.                                    | % Takt  6
  %%%%======== ------------------------------------------------ ---------
    g-. c,-. des-. c-. g-. c,-.                                 | % Takt  7
  %%%%======== ------------------------------------------------ ---------
    f16 g as2)_>^\ritard r8           | % Takt  8
  %%%%======== ------------------------------------------------ ---------
    r8^\markup { a tempo } f-.( g-.) r as-.( b-.)                                      | % Takt  9
  %%%%======== ------------------------------------------------ ---------
    r c-.( des-. c-. as'-. g-.                      | % Takt 10
  %%%%======== ------------------------------------------------ ---------
    f-. c-. des-. c-. as-. f-.                                  | % Takt 11
  %%%%======== ------------------------------------------------ ---------
  \once \override Script #'avoid-slur = #'outside
    c2.^^)                                                      | % Takt 12
  %%%%======== ------------------------------------------------ ---------
    r8 f-.( g-.) r as-.( b-.)                                   | % Takt 13
  %%%%======== ------------------------------------------------ ---------
    r c-.( des-. c-. c'-. as-.                                    | % Takt 14
  %%%%======== ------------------------------------------------ ---------
    g-. c,-. des-. c-. g-. c,-.                                 | % Takt 15
  %%%%======== ------------------------------------------------ ---------
    f2.->)                                                      | % Takt 16
  %%%%======== ------------------------------------------------ ---------
    as4.\( \acciaccatura b8 as g8. as16   | % Takt 17
  %%%%======== ------------------------------------------------ ---------
    b4. c                                                       | % Takt 18
  %%%%======== ------------------------------------------------ ---------
    des8-. as-. b-. as-.  f-. des-.                          | % Takt 19
  %%%%======== ------------------------------------------------ ---------
    as4_>\) r8 r4 es'8\(                                | % Takt 20
  %%%%======== ------------------------------------------------ ---------
    es'4. \appoggiatura { es16[ f] } es8 d es                   | % Takt 21
  %%%%======== ------------------------------------------------ ---------
    f4.\) ges-> ~                                                     | % Takt 22
  %%%%======== ------------------------------------------------ ---------
    ges8 des-.( es-. des-. b-. ges-.               | % Takt 23
  %%%%======== ------------------------------------------------ ---------
  des^.) des'-.[( es-.] des-. as-. fes-.                             | % Takt 24
  %%%%======== ------------------------------------------------ ---------
    des-.) <des des'>-.[( <es es'>-.])
    r <fes fes'>-.[( <ges ges'>-.])                             | % Takt 25
  %%%%======== ------------------------------------------------ ---------
    r <g! g'!>-.[( <a a'>-.])
    r <b b'>-.[( <c c'>-.])                                     | % Takt 26
  %%%%======== ------------------------------------------------ ---------
    \ottava #1 <des des'>( <es es'>) <fes fes'>(
    <ges ges'>) <g! g'!>( <a a'>)                               | % Takt 27
  %%%%======== ------------------------------------------------ ---------
    <b b'>16( <c c'> <des des'>4) \ottava #0 r4 r8            | % Takt 28
  %%%%======== ------------------------------------------------ ---------
    <des, des'>-.( <des des'>-.
    <des des'>-.) <des des'>4( <c c'>8)                         | % Takt 29
  %%%%======== ------------------------------------------------ ---------
    des-.( des-. des-.) des4->( c8)                                                 | % Takt 30
  %%%%======== ------------------------------------------------ ---------
    <b b'>-.( <as as'>-.  <b b'>-. <c c'>4.)                                          | % Takt 31
  %%%%======== ------------------------------------------------ ---------
    b8( as b c4.)                                           | % Takt 32
  %%%%======== ------------------------------------------------ ---------
  \ottava #1
  \times 3/5 {
      <des' des'>8-.(
      <des des'>-.
      <des des'>-. <des des'>-.
  \ottava #0
      <des, des'>-.^\markup { \fontsize #-1 loco })
  }
    <des des'>4^>( <c c'>8)                                     | % Takt 33
  %%%%======== ------------------------------------------------ ---------
  \times 3/5 {
      des'8-.( des-. des-. des-. des,-.)
  }
    des4->( c8)                                                 | % Takt 34
  %%%%======== ------------------------------------------------ ---------
  \times 3/5 {
      <b b'>8( <c c'> <b b'> <as as'> <b b'>
  }
    <c c'>4.)                                                   | % Takt 35
  %%%%======== ------------------------------------------------ ---------
  \times 3/5 {
      b8^\markup { poco  rallentando }( c b as b
  }
    c4.)                                                        | % Takt 36
  %%%%======== ------------------------------------------------ ---------
    r8^\markup { a tempo } f,-.( g-.) r as-.( b-.)           | % Takt 37
  %%%%======== ------------------------------------------------ ---------
    r c-.\( des-\prall ( c-.) as'-. g-.              | % Takt 38
  %%%%======== ------------------------------------------------ ---------
    f-. c-.  des-\prall ( c-.) as-. f-.               | % Takt 39
  %%%%======== ------------------------------------------------ ---------
  \once \override Script #'avoid-slur = #'outside
    c2.^^\)                                                     | % Takt 40
  %%%%======== ------------------------------------------------ ---------
    r8 f-.( g-.) r as-.( b-.)                                   | % Takt 41
  %%%%======== ------------------------------------------------ ---------
    r c-.( des-.-\prall c-.  c'-. as-.         | % Takt 42
  %%%%======== ------------------------------------------------ ---------
    g-.c,-. des-.  c-. g-. c,-.                                                | % Takt 43
  %%%%======== ------------------------------------------------ ---------
    f16 g as2) r8                                               | % Takt 44
  %%%%======== ------------------------------------------------ ---------
    r^\markup { con forza }
    <f f'>-.( <g g'>-.) r <as as'>-.( <b b'>-.)                 | % Takt 45
  %%%%======== ------------------------------------------------ ---------
    r <c c'>-.( <des des'>-. <c c'>-.  <as' as'>-.  <g g'>-.    | % Takt 46
  %%%%======== ------------------------------------------------ ---------
    <f f'>-. <c c'>-. <des des'>-. <c c'>-. <as as'>-.
    <f f'>-.                                                    | % Takt 47
  %%%%======== ------------------------------------------------ ---------
    <c c'>2.)                           | % Takt 48
  %%%%======== ------------------------------------------------ ---------
    r8 <f f'>-.(
    <g g'>-.) r <a a'>-.( <b b'>-.)                          | % Takt 49
  %%%%======== ------------------------------------------------ ---------
    r <c c'>( <des des'> <es es'>4.)                                      | % Takt 50
  %%%%======== ------------------------------------------------ ---------
    r8 <h h'>-.( <c c'>-.) r <d d'>-.( <e e'>-.)                  | % Takt 51
  %%%%======== ------------------------------------------------ ---------
    r <f f'>( <g g'> <as! as'!>4.)                                | % Takt 52
  %%%%======== ------------------------------------------------ ---------
    r8 <e, e'>( <f f'> <as as'> <g g'> <as as'>                             | % Takt 53
  %%%%======== ------------------------------------------------ ---------
  <c c'> <b b'> <c c'>
    \Axdefault <es es'> \Axmodern <des des'> <es es'>           | % Takt 54
  %%%%======== ------------------------------------------------ ---------
    <f f'> <e e'> <f f'>
  \ottava #1
    <as as'> <g g'> <as as'>)                  | % Takt 55
  %%%%======== ------------------------------------------------ ---------
    <a a'>16( <b b'>) <des des'>2->
  \ottava #0
    <e,, e'>8(                            | % Takt 56
  %%%%======== ------------------------------------------------ ---------
    <g g'>-. <g g'>-. <g g'>-.)
    <g g'>4^>( <f f'>8)                                         | % Takt 57
  %%%%======== ------------------------------------------------ ---------
    g-.( g-. g-.) g4^>( f8)                                                   | % Takt 58
  %%%%======== ------------------------------------------------ ---------
    <e e'>-.( <dis dis'>-.  <e e'>-. <f f'>4.^\markup { ten. })                                  | % Takt 59
  %%%%======== ------------------------------------------------ ---------
    e8^\markup { smorz. }( dis e f4.)                                              | % Takt 60
  %%%%======== ------------------------------------------------ ---------
  \times 4/5 {
    <g' g'>16-.[( <g g'>-. <g g'>-. <g g'>-. <g g'>-.]
  }
    <g g'>-.)[ r32 <g, g'>]
    <g g'>4^>( <f f'>8)                                         | % Takt 61
  %%%%======== ------------------------------------------------ ---------
  \times 4/5 {
    g'16-.[( g-. g-. g-. g-.]
  }
    g-.)[ r32 g,]
    g4->( f8)                                                   | % Takt 62
  %%%%======== ------------------------------------------------ ---------
    <e e'>16-.^\markup { riten. }(
    <f f'>-. <g g'>-. <as as'>-. <b b'>-. <as as'>-.) <f f'>4.  | % Takt 63
  %%%%======== ------------------------------------------------ ---------
    e16-.( f-. g-. as-. b-. as-.) f4.  | % Takt 64
  %%%%======== ------------------------------------------------ ---------
  \ottava #1
    b''16( c, as' c, b' c, as' c, b' c, as' c,)                           | % Takt 65
  %%%%======== ------------------------------------------------ ---------
    g'( as, f' as, g' as, f' as, g' as, f' as,                             | % Takt 66
  %%%%======== ------------------------------------------------ ---------
    f''8-.)
  \ottava #0
    r r r4 r8                                                   | % Takt 67
  %%%%======== ------------------------------------------------ ---------
}

links =  \context Staff \relative c{
  %%% =========   Für das Pedal:   ==========================================
  \set Staff.pedalSustainStyle = #'mixed
  \override SustainPedalLineSpanner #'outside-staff-priority = #0
  \override TextScript #'outside-staff-priority = #1000
  %%% =======================================================================
\Axpiano
    f,16( \PR c'_\markup { legatissimo } as' c, b' c,)
    <f,>( \PH\PR c' c' c, des' c,)                              | % Takt  1
  %%%%======== ------------------------------------------------ ---------
    <f,>( \PH\PR c' c' c, b' c,)
    f,( \PH\PR c' as' c, b' c,)         | % Takt  2
  %%%%======== ------------------------------------------------ ---------
    f,( \PH\PR c' as' c, b' c,)
    f,( \PH\PR c' as' c, c' c,)                                 | % Takt  3
  %%%%======== ------------------------------------------------ ---------
    f,( \PH\PR c' g' c, as' c,)
    f,( \PH\PR c' b' c, g' c,)                                  | % Takt  4
  %%%%======== ------------------------------------------------ ---------
    f,( \PH\PR c' as' c, b' c,)
    f,( \PH\PR c' c' c, des' c,)                                | % Takt  5
  %%%%======== ------------------------------------------------ ---------
    f,( \PH\PR c'c' c, b' c,)
    f,( \PH\PR c' as' c, c' c,)                              | % Takt  6
  %%%%======== ------------------------------------------------ ---------
  f,( \PH\PR c' b' c, g' c,) f,( c' b' c,
    g' c,)                                                   | % Takt  7
  %%%%======== ------------------------------------------------ ---------
    f,( \PH\PR h as' h, des'! h,)
    f( h as' h, des' h,)                                        | % Takt  8
  %%%%======== ------------------------------------------------ ---------
    f ( \PH\PR c' as' c, b' c,)
    f,( c' c' c, des' c,)                                       | % Takt  9
  %%%%======== ------------------------------------------------ ---------
    f,_\markup { sempre legatissimo } \PH\PR c' c' c, b' c,
    f, c' as' c, b' c,                                       | % Takt 10
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR c' as' c, b' c, f, c' as' c, c' c,                | % Takt 11
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR c' g' c, as' c, f, c' b' c, g' c,                 | % Takt 12
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR c' as' c, b' c, f, \PH\PR c' c' c, des' c,        | % Takt 13
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR c' c' c, b' c, f, c' as' c, c' c,                                       | % Takt 14
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR c' b' c, g' c, f, c' b' c, g' c,                  | % Takt 15
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR c' as' c, c' c, f, c' as' c, c' c,                | % Takt 16
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR d' as' d, b' d, f, \PH\PR
    b as' b, b' b,                                           | % Takt 17
  %%%%======== ------------------------------------------------ ---------
    es, \PH\PR b' ges' b, b' b, 
    es, \PH\PR as ges' as, as' as,                           | % Takt 18
  %%%%======== ------------------------------------------------ ---------
    des, \PH\PR as' f' as, as' as,
    des, as' f' as, as' as,                                     | % Takt 19
  %%%%======== ------------------------------------------------ ---------
    c, \PH\PR as' es' as, as' as,
    c, as' \> es' as, as' as, \!               | % Takt 20
  %%%%======== ------------------------------------------------ ---------
    ces,( \PH\PR ges' es' ges, ges' ges,)
    ces,( ges' es' ges, ges' ges,)                              | % Takt 21
  %%%%======== ------------------------------------------------ ---------
    ces,( \PH\PR as' des as as' as,)
    b,( \PH\PR ges' des' ges, ges'
    ges,)                                                       | % Takt 22
  %%%%======== ------------------------------------------------ ---------
    b,( \PH\PR ges' des' ges, ges' ges,) b,(
      ges' des' ges, ges' ges,)                                 | % Takt 23
  %%%%======== ------------------------------------------------ ---------
    as,( \PH\PR f' des' f, f' f,)
    as,( \PH\PR fes' des' fes, fes' fes,)                       | % Takt 24
  %%%%======== ------------------------------------------------ ---------
    ases,( \PH\PR fes' des' fes, fes' fes,)
    b,( \PH\PR ases' fes' ases, ases' ases,)                    | % Takt 25
  %%%%======== ------------------------------------------------ ---------
    h,( \PH\PR g'! e' g, g'!  g,)
    c,( \PH\PR g' e' g, g' g,)                                  | % Takt 26
  %%%%======== ------------------------------------------------ ---------
    fes( \PH\PR des' b'! des,) g,!( \PH\PR fes' des'
    fes,) b,( \PH\PR g'! fes' g,)                             | % Takt 27
  %%%%======== ------------------------------------------------ ---------
    des( \PH\PR b' g'! b,)
    e,( des' \clef violin b' des, b' des, b' des,)              | % Takt 28
  %%%%======== ------------------------------------------------ ---------
    \clef bass c,( \PH\PR as' f' as, as' as,)
    c,( \PH\PR g' e' g, g' g,)                            | % Takt 29
  %%%%======== ------------------------------------------------ ---------
    c, \PH\PR as' f' as, as' as,
    c, \PH\PR g' e' g, g' g,                                    | % Takt 30
  %%%%======== ------------------------------------------------ ---------
    c, \PH\PR f des' f, f' f,
    c \PH\PR g' e' g, g' g,                                     | % Takt 31
  %%%%======== ------------------------------------------------ ---------
    c, \PH\PR f des' f, f' f,
    c \PH\PR g' e' g, g' g,                                     | % Takt 32
  %%%%======== ------------------------------------------------ ---------
    c, \PH\PR as' f' as, as' as,
    c, \PH\PR g' e' g, g' g,                                    | % Takt 33
  %%%%======== ------------------------------------------------ ---------
    c, \PH\PR as' f' as, as' as,
    c, \PH\PR g' e' g, g' g,                                    | % Takt 34
  %%%%======== ------------------------------------------------ ---------
    c, \PH\PR f des' f, f' f,
    c \PH\PR g' e' g, g' g,                                     | % Takt 35
  %%%%======== ------------------------------------------------ ---------
    c, \PH\PR f des' f, f' f,
    c \PH\PR g' e' g, g' g,                                     | % Takt 36
  %%%%======== ------------------------------------------------ ---------
    f,( \PH\PR c' as' c, b' c,)
    f,( c' c' c, des' c,)                                       | % Takt 37
  %%%%======== ------------------------------------------------ ---------
    f,_\markup { sempre legato }
      \PH\PR c' c' c, b' c,
    f, \PH\PR c' as' c, b' c,                                | % Takt 38
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR c' as' c, b' c,
    f, \PH\PR c' as' c, c' c,                                   | % Takt 39
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR c' g' c, as' c,
    f, \PH\PR c' b' c, g' c,                                    | % Takt 40
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR c' as' c, b' c,
    f, \PH\PR c' c' c, des' c,                                  | % Takt 41
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR c' c' c, b' c,
    f, \PH\PR c' as' c, c' c,                                | % Takt 42
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR c' b' c, g' c,
    f, c' b' c, g' c,                                           | % Takt 43
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR h as' h, des'! h,
    f h as' h, des' h,                                          | % Takt 44
  %%%%======== ------------------------------------------------ ---------
    f16 \PH\PR c' as' c, b' c,
    f, \PH\PR c' c' c, des' c,                                  | % Takt 45
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR c' c' c, b' c,
    f, \PH\PR c' as' c, b' c,                                | % Takt 46
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR c' as' c, b' c,
    f, c' as' c, c' c,                                       | % Takt 47
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR c' g' c, as' c, f, c' b' c, g' c,                 | % Takt 48
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR c' a' c, b' c, f, \PH\PR c' c' c, des' c,         | % Takt 49
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR ges' es' ges, f' ges,
    f, \PH\PR ges' ges' ges, ges' ges,                       | % Takt 50
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR d' gis d a' d, f, \PH\PR
    d' h' d, cis' d,                                     | % Takt 51
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR d' d' d, e' d, f, \PH\PR d' \oben f'^\markup { m.d. }
    \unten d, \oben f' \unten d,                                            | % Takt 52
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR des'! b' des, des'! des,
    f, des' b' des, des' des,                                   | % Takt 53
  %%%%======== ------------------------------------------------ ---------
    f, des' b' des, des' des, f, des' b' des, des' des,         | % Takt 54
  %%%%======== ------------------------------------------------ ---------
    f, des' b' des, des' des, f,
    des' b' des, des' des,                                | % Takt 55
  %%%%======== ------------------------------------------------ ---------
    f, des' b' des, des' des,
    f, des' b' des, des' des,                                   | % Takt 56
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR des' b' des, des' des,
    f, \PH\PR c' as' c, c' c,                                   | % Takt 57
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR des' b' des, des' des,
    f, \PH\PR c' as' c, c' c,                                   | % Takt 58
  %%%%======== ------------------------------------------------ ---------
\Axmodern
    f, \PH\PR des' b' des, des' des,
    f, \PH\PR c' as' c, c' c,                                | % Takt 59
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR des' b' des, des' des,
    f, \PH\PR c' as' c, c' c,                                   | % Takt 60
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR des' b' des, des' des,
    f, \PH\PR c' as' c, c' c,                                   | % Takt 61
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR des' b' des, des' des,
    f, \PH\PR c' as' c, c' c,                                   | % Takt 62
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR des' b' des, des' des,
    f, \PH\PR c' as' c, c' c,                                   | % Takt 63
  %%%%======== ------------------------------------------------ ---------
    f, \PH\PR des' b' des, des' des,
    f, \PH\PR c' as' c, c' c,                                   | % Takt 64
  %%%%======== ------------------------------------------------ ---------
    f,8 r \clef violin
    des''''16( f, des' f, des' f, des' f,)                      | % Takt 65
  %%%%======== ------------------------------------------------ ---------
    b( f b f b f b f b f b f                                    | % Takt 66
  %%%%======== ------------------------------------------------ ---------
    f,8-.) \PH r r r4 r8                                        | % Takt 67
  %%%%======== ------------------------------------------------ ---------
}

dynamics = \new Dynamics {
    s8 \p s8*5                                | % Takt  1
  %%%%======== ------------------------------------------------ ---------
    s8 s-\mcresc s\< s s\! s                             | % Takt  2
  %%%%======== ------------------------------------------------ ---------
    s-\markup { con forza } s8*5                                      | % Takt  3
  %%%%======== ------------------------------------------------ ---------
    s2.*2                                                      | % Takt  4
  %%%%======== ------------------------------------------------ ---------
    s8 s\< s s s s8\!                                                      | % Takt  6
  %%%%======== ------------------------------------------------ ---------
    s8*4 s8 s\<                                                      | % Takt  7
  %%%%======== ------------------------------------------------ ---------
    s16 s\! s8*4-\mcresc s8           | % Takt  8
  %%%%======== ------------------------------------------------ ---------
    s8-\markup { sotto voce } s8*5                     | % Takt  9
  %%%%======== ------------------------------------------------ ---------
    s8 s16\< s4. s16\! s8                                      | % Takt  10
  %%%%======== ------------------------------------------------ ---------
    s2.*3                                      | % Takt  11
  %%%%======== ------------------------------------------------ ---------
    s8 s16\< s4. s16\! s8                                      | % Takt  14
  %%%%======== ------------------------------------------------ ---------
    s2.*2                                      | % Takt  15
  %%%%======== ------------------------------------------------ ---------
    s8\p\< s2 s16\! s16                                      | % Takt  17
  %%%%======== ------------------------------------------------ ---------
    s2.\cresc                                                   | % Takt 18
  %%%%======== ------------------------------------------------ ---------
    s8 \f s8*5                          | % Takt 19
  %%%%======== ------------------------------------------------ ---------
    s4 \fz s s8 s \p                               | % Takt 20
  %%%%======== ------------------------------------------------ ---------
    s2.                   | % Takt 21
  %%%%======== ------------------------------------------------ ---------
    s4.  s16\cresc s16*5                                                       | % Takt 22
  %%%%======== ------------------------------------------------ ---------
    s4.
    \crescTextCresc
    \once\set crescendoText = \markup { sempre \hspace #9.5 stretto
      \hspace #9.5 e \hspace #9.5 "più" }
    s16\< s16*5                                                       | % Takt 23
  %%%%======== ------------------------------------------------ ---------
    s2.                       | % Takt 24
  %%%%======== ------------------------------------------------ ---------
    s8 \f s8*5                             | % Takt 25
  %%%%======== ------------------------------------------------ ---------
    s4 s16-\markup { accelerando }  s16*7                                  | % Takt 26
  %%%%======== ------------------------------------------------ ---------
    s16\cresc( s16*10 s16\!                            | % Takt 27
  %%%%======== ------------------------------------------------ ---------
    s16 \ff s16*11            | % Takt 28
  %%%%======== ------------------------------------------------ ---------
    \crescHairpin
    s4. s16 s\> s s s s\!                         | % Takt 29
  %%%%======== ------------------------------------------------ ---------
    s8 \pp s8*5                                                | % Takt 30
  %%%%======== ------------------------------------------------ ---------
    s8 \f s-\markup { stretto } s2                     | % Takt 31
  %%%%======== ------------------------------------------------ ---------
    s8 \pp s8*5                                          | % Takt 32
  %%%%======== ------------------------------------------------ ---------
  \times 3/5 {
      s8 \f s-\markup { appassionato } s s s
  }
    s4.                                     | % Takt 33
  %%%%======== ------------------------------------------------ ---------
  \times 3/5 {
      s8 \pp s2
  }
    s4.                                                 | % Takt 34
  %%%%======== ------------------------------------------------ ---------
  \times 3/5 {
      s8 \f s2
  }
    s4.                                                 | % Takt 35
  %%%%======== ------------------------------------------------ ---------
  \times 3/5 {
      s8 \pp s2
  }
    s4.)                                                        | % Takt 36
  %%%%======== ------------------------------------------------ ---------
    s8 \p-\markup { sempre agitato} s8*5           | % Takt 37
  %%%%======== ------------------------------------------------ ---------
    s8 s16\< s16*7 s16\! s            | % Takt 38
  %%%%======== ------------------------------------------------ ---------
    s2.              | % Takt 39
  %%%%======== ------------------------------------------------ ---------
    s8 \f s8*5                 | % Takt 40
  %%%%======== ------------------------------------------------ ---------
    s2.    | % Takt 41
  %%%%======== ------------------------------------------------ ---------
    s8 s16\< s16*7 s16\! s            | % Takt 42
  %%%%======== ------------------------------------------------ ---------
    s2.    | % Takt 43
  %%%%======== ------------------------------------------------ ---------
    s16\< s s\! s16*9            | % Takt 44
  %%%%======== ------------------------------------------------ ---------
    s2.    | % Takt 45
  %%%%======== ------------------------------------------------ ---------
    s8 s16\< s16*7 s16\! s            | % Takt 46
  %%%%======== ------------------------------------------------ ---------
    s16 s\> s8*3 s16\! s16*3            | % Takt 47
  %%%%======== ------------------------------------------------ ---------
    s2. \fz                          | % Takt 48
  %%%%======== ------------------------------------------------ ---------
    s8 \p s
    \crescTextCresc
    \once\set crescendoText = \markup { cresc. }
    s \< s s s                          | % Takt 49
  %%%%======== ------------------------------------------------ ---------
    s
    \crescHairpin
    s\< s s s s                                     | % Takt 50
  %%%%======== ------------------------------------------------ ---------
    s16\p s
  \crescTextCresc
  \once\set crescendoText = \markup { cre }
    s\< s s
  \once\set crescendoText = \markup { scen }
    s\< s s s
  \once\set crescendoText = \markup { do }
    s\< s s\!                                     | % Takt 51
  %%%%======== ------------------------------------------------ ---------
    s8-\markup { e \hspace #3.8 stretto } s8*5                                | % Takt 52
  %%%%======== ------------------------------------------------ ---------
    s8 \p
    s-\markup { sempre \hspace #3.8 più \hspace #3.8
    cresc. \hspace #3.8 ed \hspace #3.8 accelerando }(
    s2                             | % Takt 53
  %%%%======== ------------------------------------------------ ---------
    s2.           | % Takt 54
  %%%%======== ------------------------------------------------ ---------
  \crescHairpin
    s8 s s s\< s s\!                                 | % Takt 55
  %%%%======== ------------------------------------------------ ---------
    s8 s2 \fz s8( \p                           | % Takt 56
  %%%%======== ------------------------------------------------ ---------
    s-\markup { sotto voce } s8*5                                         | % Takt 57
  %%%%======== ------------------------------------------------ ---------
    s8 \pp s8*5                                                  | % Takt 58
  %%%%======== ------------------------------------------------ ---------
    s8 \p\< s s s4.\!                                 | % Takt 59
  %%%%======== ------------------------------------------------ ---------
    s8 \pp s8*5                                              | % Takt 60
  %%%%======== ------------------------------------------------ ---------
  \times 4/5 {
    s16 \f s4
  }
    s2                                         | % Takt 61
  %%%%======== ------------------------------------------------ ---------
  \times 4/5 {
    s16 \pp s4
  }
    s2                                                   | % Takt 62
  %%%%======== ------------------------------------------------ ---------
    s16 \ff s16*11  | % Takt 63
  %%%%======== ------------------------------------------------ ---------
    s16 \pp s16*11  | % Takt 64
  %%%%======== ------------------------------------------------ ---------
    s16 s-\markup { leggierissimo } s8*5                           | % Takt 65
  %%%%======== ------------------------------------------------ ---------
    s16-\markup { smorz. } s16*11                             | % Takt 66
  %%%%======== ------------------------------------------------ ---------
    s2.                                                   | % Takt 67
}

\score {
  \context PianoStaff
  <<
  \set GrandStaff.instrumentName = \markup { \huge { 9. } }
    \context Staff = "up" <<
      \global 
      \clef violin
      \rechts
    >>
    \dynamics
    \context Staff = "down" <<
      \global
      \clef bass
      \links
    >>
  >>
  \layout {
    \context Staff
    \override TextScript #'font-shape = #'italic
  }
\midi {
  \tempo 8=288
}
}
