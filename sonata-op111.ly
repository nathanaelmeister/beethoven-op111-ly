%===========================================================================
%    Piano Sonata Op.111 (L.Beethoven)
%===========================================================================
%
%--- Notes -----------------------------------------------------------------
%
%  * The Arietta section is comprised of several variations on a theme.
%    The third and fourth variations use implied tuplets. Their first
%    measures are both exactly the length of a quaver.
%
%---------------------------------------------------------------------------
%
%--- Author ----------------------------------------------------------------
%
%    (C) 2016, Michiel Sikma <michiel@sikma.org>
%    Licensed under CC BY-SA 4.0.
%
%---------------------------------------------------------------------------


AUTHORS = "M.Sikma"
HEADERS-DIR = "./includes/"
COMPOSED = "Composed 1822"

\version "2.18.2"
\language "english"
\include "includes/ms.ily"
\include "includes/markup.ily"

% todo
maestoso-section-one = {
  \key c \minor
  \time 4/4
  \partial 32
  \tempo "Maestoso"
}

% Main theme and variation 1.
arietta-section-one = {
  \key c \major
  \time 9/16
  \partial 8.
  \tempo "Adagio molto semplice e cantabile"
}

% Variation 2.
arietta-section-two = {
  \key c \major
  \time 6/16
  \tempo "L'istesso tempo"
}

% Variation 3.
arietta-section-three = {
  \key c \major
  \time 12/32
  \tempo "L'istesso tempo"
}

% Variation 4-7.
arietta-section-four = {
  \key c \major
  \time 9/16
}

% Variation 4, bar 35-49.
arietta-section-four-minor = {
  \key c \minor
}

\bookpart {
  \paper {
    markup-system-spacing = \std-padding-page-n
    bookTitleMarkup = \std-title-markup-page-n
  }
  \header {
    subtitle = "Arietta"
    copyright = ##f
    tagline = \ms-tagline-en-cc-by-sa-four
  }
  \score {
    \new PianoStaff \with {
      \std-staff-spacing
    } <<
      \set PianoStaff.connectArpeggios = ##t
      %---------------------------------------------------------------------
      %    Right hand
      %---------------------------------------------------------------------
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } {
        \clef treble \relative c'' {
          \arietta-section-one

          %-----------------------------------------------------------------
          %    Main theme, part 1
          %-----------------------------------------------------------------
          <<
            \new Voice {
              \voiceOne
              \repeat volta 2 {
                \relative c'' {
                  c8( \p g16) |
                  g4. d'8( g,16) |
                  g4. g8. |
                  g8.-[( e' c]) |
                  c8.-[ b <b g>] |
                  c8.-[( e g]) |
                  g8.-[( f d8 c16]) |
                  b8.-[( c d8 g,16]) |
                }
              }
              \alternative {
                {
                  \relative c'' {
                    \set Timing.measureLength = #(ly:make-moment 6/16)
                    g4.
                  }
                }
                {
                  \relative c'' {
                    \set Timing.measureLength = #(ly:make-moment 9/16)
                    g4. e8.
                  }
                }
              }
            }
            \new Voice {
              \voiceTwo
              \relative c' {
                e8. |
                e8.-[( f8. d8.]) |
                d8.-[( e f]) |
                s8. e8.-[ g] |
                e8.-[ d d] |
                g4.\< g8.\! |
                a4.\> a8-[ <d, a'>16]\! |
                <d g>8.-[ <c g'> <d g>8 d16]~ |
                d8-[\< d16^(\! <c e>8\> <b f'>16)\!] |
                % todo fix this slur
                \once \override Slur.control-points = #'((1.5 . -1.5) (3.5 . 0.5) (6 . 1) (8.5 . -0.83))
                d8-[^(\<\repeatTie <c e>16\! <b f'>8\> <c e>16)]\! s8. |
              }
            }
          >>

          %-----------------------------------------------------------------
          %    Main theme, part 2
          %-----------------------------------------------------------------
          <<
            \new Voice {
              \voiceOne
              \repeat volta 2 {
                \relative c'' {
                  c4. \p c8( b16) |
                  b4. b8( e16) |
                  <b e>8.-[ <c e>_( <b d>8 <a c>16]) |
                  <a c>8.-[_( <gs b> <e a c>]) |
                  <g b d>4. \cresc <g b d>8. |
                  <g c e>4. <a c f>8. |
                  <g b d>8.-[ <g b d>] <b d>8-[( <d g>16]) \!
                }
              }
              \alternative {
                {
                  \relative c'' {
                    \stemDown <b d g>8(\sf\> <g c e>16) <g c e>8.\! \p \stemUp e8. \stemNeutral
                  }
                }
                {
                  \relative c'' {
                    <b d g>8(\sf\> <g c e>16) <g c e>8.\! \p c8_( \dolce e,16
                  }
                }
              }

              %-------------------------------------------------------------
              %    Variation 1, part 1
              %-------------------------------------------------------------
              \repeat volta 2 {
                \relative c'' {
                  a8 e16 g8 f16 d'8 d,16 |
                  g8 \sempreLegato d16 f8 e16 g8 f16 |
                  a8 g16 e'8 e,16 c'8 e,16) |
                  <ef c'>8( <d b'>16 <c a'>8 <b g'>16 <c a'>8 <d b'>16 |
                  \stemUp
                  c'8\< e,16 e'8 g,16 g'8 bf,16)\! |
                  g'8(\> a,16 f'8 a,16 d8 c16)\! |
                  c8-[( b16 c8 cs16] cs16 <d g,> g,) |
                }
              }
              \alternative {
                {
                  \relative c'' {
                    % Move down the volta brackets, since there's just one
                    % slur pushing them up.
                    % todo fixme
                    \once \override Score.VoltaBracket.extra-offset = #'(0 . -1.8)
                    g4. c8( e,16)
                  }
                }
                {
                  \relative c'' {
                    \once \override Score.VoltaBracket.extra-offset = #'(0 . -1.8)
                    g8.~g16\>-[( gs a\! b e, e]) |
                    \set Timing.measureLength = #(ly:make-moment 3/16)
                    c'8^\( e,16
                  }
                }
              }

              %-------------------------------------------------------------
              %    Variation 1, part 2
              %-------------------------------------------------------------
              \repeat volta 2 {
                \set Timing.measureLength = #(ly:make-moment 6/16)
                f,8\> e16\! c'8 <e, c>16 |
                \set Timing.measureLength = #(ly:make-moment 9/16)
                % todo check with manuscript
                b'8\< <b, e>16\)\!_\( <c e>16\> c' b\! c( <e, b'>\)) <e' b>( |
                \override Tie.minimum-length = #3.25
                f8 e16) e8( d16) d c c~ |
                <c a>16 \cresc <b gs>
                \once \override Tie.minimum-length = #2.75
                <b gs>_~_( <b gs> <c e,>) <c e,>_~_( <c e,> <d b>)\! <d b> \p |
                \mergeDifferentlyDottedOn
                <d b>4. <ds b>8. |
                e8. e8( g16) g8( f16) |
                e8-[ d16 cs8 d16] d16 a' g |
              }
              \alternative {
                {
                  \relative c'' {
                    g'16-[\sf f\> e] f-[ e]\! e,-[ f e e]_( |
                    \set Timing.measureLength = #(ly:make-moment 3/16)
                    c'8 <c, e>16)
                  }
                }
                {
                  \relative c'' {
                    \set Timing.measureLength = #(ly:make-moment 6/16)
                    \stemDown <g' d>16-[\sf <f b,>\> <e c>] <f c>-[ <e c> <e c>]\! |
                  }
                }
              }
              
              %-----------------------------------------------------------------
              %    Variation 2, part 1
              %-----------------------------------------------------------------
              \repeat volta 2 {
                \relative c' {
                  \arietta-section-two
                  \set Timing.measureLength = #(ly:make-moment 2/16)
                  b'8\rest |
                  \set Timing.measureLength = #(ly:make-moment 6/16)
                  \stemUp
                  \implicitTuplets
                  \tuplet 3/2 { e16-[( \manoSinistra c32 b16 c32] }
                  \tuplet 3/2 { d16-[ b32 as16 b32]) }
                  b8\rest |
                  \change Staff = "left"
                  \tuplet 3/2 { f,16-[( d32 cs16 d32] }
                  \change Staff = "right"
                  \tuplet 3/2 { g'16-[ e32 ds16 e32] }
                  \tuplet 3/2 { g16-[ e32 g16 f32] } |
                  \tuplet 3/2 { a16-[ fs32 a16 g32]) } \stemDown
                  <g e'>8\noBeam <g c>8 |
                  \stemUp
                  \tuplet 3/2 { c16-[ b32 d16 c32] }
                  \tuplet 3/2 { c16-[ \sempreLegato as32 c!16 b32] } b8 |
                  c8\cresc \tuplet 3/2 { e16-[( d32 f16 e32] } g8)~ |
                  g16-[\! g~]\> \tuplet 3/2 { g16-[ e32 g16 f32] }
                  \tuplet 3/2 { e16-[ cs32 e16 d32]\! } |
                  c!16-[( b c cs
                  \once \override TupletBracket.transparent = ##t                  
                  \tuplet 3/2 { d16 s32 d16 g,32]) } |
                }
              }
              \alternative {
                {
                  \relative c'' {
                    \set Timing.measureLength = #(ly:make-moment 4/16)
                    g16-[ g]~ g-[ g] |
                  }
                }
                {
                  \relative c' {
                    \set Timing.measureLength = #(ly:make-moment 6/16)
                    g'16-[ g]~
                    \tuplet 3/2 { g16-[ gs32 a16 b32] }
                    \tuplet 3/2 { e,16-[ e32~e16 e32] }
                  }
                }
              }
              
              %-----------------------------------------------------------------
              %    Variation 2, part 2
              %-----------------------------------------------------------------
              \repeat volta 2 {
                \relative c'' {
                  \override Tie.minimum-length = #3.25
                  \set Timing.measureLength = #(ly:make-moment 6/16)
                  \tuplet 5/4 { c16-[(~c16 b32] }
                  \tuplet 5/4 { c16-[~c16 b32] }
                  \tuplet 5/4 { c16-[~c16 b32] } |
                  \tuplet 5/4 { b16-[~b16 c32] }
                  \tuplet 5/4 { b16-[~b16 c32] }
                  \tuplet 5/4 { b16-[~b16 e32]) } |
                  \omit Dots
                  \tuplet 3/2 { <b e>16.-[~<b e>16 <c e>32] }
                  \tuplet 3/2 { <c e>16.-[~<c e>16 <gs b d>32] }
                  \tuplet 3/2 { <e b' d>16-[_( <f a c>32 <fs a c>16 <b, g' b>32]) }
                  \undo \omit Dots |
                  \tuplet 3/2 { <b gs' b>16-[ <b gs' b>32~ <b gs' b>16 <b gs' b>32~] }
                  \tuplet 3/2 { <b gs' b>16-[ <c a' c>32~ <c a' c>16 <c a' c>32~] }
                  \stemNeutral
                  \tuplet 3/2 { <c a' c>16-[ <d b' d>32~ <d b' d>16 <d' b' d>32] } |
                  \stemUp
                  \tuplet 3/2 { <d b' d>16-[ d32_( cs16 d32)] }
                  d8~
                  \tuplet 3/2 { d16-[ cs32 f16 e32] } |
                  e8~ e16-[ e16]~
                  \tuplet 3/2 { e16-[ e32 g16 f32] } |
                  \tuplet 3/2 { d16-[ fs32 a16 g32]~ }
                  \tuplet 3/2 { g16-[ s32 a16 g32]~ }
                  \tuplet 3/2 { g16-[ s32 a16 g32] } |
                  \revert Tie.minimum-length
                }
              }
              \alternative {
                {
                  \relative c''' {
                    \override Tie.minimum-length = #3.25
                    \omit Dots
                    \tuplet 3/2 { g16.-[~g16 f32] }
                    \undo \omit Dots
                    e16 r16
                    \once \override TupletBracket.transparent = ##t
                    \tuplet 3/2 { r16 e,32-[~ e16 e32] }
                    \revert Tie.minimum-length
                  }
                }
                {
                  \relative c''' {
                    \set Timing.measureLength = #(ly:make-moment 4/16)
                    \override Tie.minimum-length = #3.25
                    \tuplet 3/2 { g16.-[~\sf\> g16 f32] }
                    \tuplet 3/2 { e16-[\!\p g32~ g16 g32] }
                    \revert Tie.minimum-length
                  }
                }
              }
              
              %-----------------------------------------------------------------
              %    Variation 3, part 1
              %-----------------------------------------------------------------
              \repeat volta 2 {
                \relative c''' {
                  \arietta-section-three
                  \override Tie.minimum-length = #3
                  \set Timing.measureLength = #(ly:make-moment 4/32)
                  \stemNeutral
                  \tuplet 3/2 { c32-[^(\f g64 e32 c64] }
                  \tuplet 3/2 { g32-[ e64 c32 g64]) } |
                  \set Timing.measureLength = #(ly:make-moment 12/32)
                  \omit Dots
                  \tuplet 3/2 { <e'_~ g^~>32.-[ <e g>32 <e_~ g^~>64 <e_~ g^~>32. <e g>32 <e g>64] }
                  \tuplet 3/2 { <f_~ g^~>32.-[ <f g>32 <f_~ g^~>64 <f_~ g^~>32. <f g>32 <f g>64] }
                  \tuplet 3/2 { f''32-[^( d64 b32 g64 f32 d64 b32 g64]) } |
                  \tuplet 3/2 { <f_~ g^~>32.-[ <f g>32 <f_~ g^~>64 <f_~ g^~>32. <f g>32 <f g>64] }
                  \tuplet 3/2 { g32.~-[ g32 g64~ g32.~ g32 g64] }
                  \tuplet 3/2 { g''32-[( e64 c32 g64 e32 c64 g32 g'64]) } |
                  % todo clean up these ties a little
                  \tuplet 3/2 { <g,_~ bf_~ cs^~ g'^~>32.-[ <g bf cs g'>32 <g_~ bf_~ cs^~ g'^~>64 <g_~ b^~ d^~ g^~>32. <g b d g>32 <g b d g>64] }
                  \tuplet 3/2 { <g_~ b^~ g'^~>32.-[ <g b g'>32 <g_~ b^~ g'^~>64] }
                  \tuplet 3/2 { <g_~ c g'^~>32.-[ <g c g'>32 <g c g'>64] }
                  \tuplet 3/2 { <e'_~ g^~ e'^~>32.-[ <e g e'>32 <e_~ g^~ e'^~>64 <e_~ g^~ e'^~>32. <e g e'>32 <c e c'>64] } |
                  \tuplet 3/2 { c'32-[( a64 fs32 ef64 c32 a64 fs32 <ef c'>64)] }
                  \tuplet 3/2 { b''32-[( g64 d32 b64 g32 d64 b32) <af''_~ b^~ d,_~ b_~>64] }
                  \tuplet 3/2 { <af_~ b^~ d,_~ b_~>32.-[ <af b d, b>32 <af_~ b^~ d,_~ b_~>64 <af_~ b^~ d,_~ b_~>32 <af b d, b>32. <af b d, b>64] } |
                  \tuplet 3/2 { c32-[( g64 e!32\sf c64 g32 e64 e'32\sf c64)] }
                  \tuplet 3/2 { e32-[ c64 g'32\sf e64 c32 g64\sf e'32 c64] }
                  \tuplet 3/2 { g'32-[ e64 c'32\sf g64 e32 c64 g'32\sf e64] } |
                  \stemDown
                  \once \override TupletBracket.transparent = ##t
                  \tuplet 3/2 { r32 s64 g32-[\sf e64 cs32 e64 g32\sf e64] }
                  \tuplet 3/2 { f32-[ d64 f32\sf a,64 f'32 f,64 a32\sf f64] }
                  \tuplet 3/2 { a32-[ f64 f'32\sf d64 a32 a'64\sf f32 d64] } |
                  \tuplet 3/2 { c!32-[ b64 f'32 d64\sf b'32 f64 d32\sf b64] }
                  \tuplet 3/2 { d32-[ c64 af'32\sf f64 c'32 a64 f32\sf c64] }
                  \tuplet 3/2 { ef32-[ d64 d'32\sf d,64 d'32 d,64 d'32\sf <d, g>64] }
                  \undo \omit Dots
                }
              }
              \alternative {
                {
                  \relative c''' {
                    \stemUp
                    \set Timing.measureLength = #(ly:make-moment 8/32)
                    \omit Dots
                    \tuplet 3/2 { g32.~-[ g32 g64]~ }
                    \tuplet 3/2 { g32.~-[ g32 g64]~ }
                    \tuplet 3/2 { g32.~-[ g32 g64]( }
                    \tuplet 3/2 { f32-[ g64 a32 b64)] }
                    \undo \omit Dots
                  }
                }
                {
                  \relative c''' {
                    \stemUp
                    \set Timing.measureLength = #(ly:make-moment 12/32)
                    \omit Dots
                    \tuplet 3/2 { g32.~-[ g32 g64]~ }
                    \tuplet 3/2 { g32.~-[ g32 g64]~ }
                    \tuplet 3/2 { g32.~-[ g32 g64]~ }
                    \tuplet 3/2 { g32.~-[ g32 g64] }
                    \tuplet 3/2 { gs32-[ a64 b32 e,,64~] }
                    \tuplet 3/2 { e32~ e64~ e32 e64 }
                    \undo \omit Dots
                  }
                }
              }
              
              %-----------------------------------------------------------------
              %    Variation 3, part 2
              %-----------------------------------------------------------------
              \repeat volta 2 {
                \relative c' {
                  \omit Dots
                  \stemNeutral
                  \tuplet 3/2 { <e_~ c'^~>32.-[\f <e c'>32 <e_~ c'^~>64 <e_~ c'^~>32. <e c'>32 <e c'>64] }
                  \tuplet 3/2 { c''32-[\p gs64 a32 e64 d32 c64 e32 c64] }
                  \tuplet 3/2 { b32-[ a64 c32 a64 b32 a64 c32 <d, f b>64] } |
                  \tuplet 3/2 { <d_~ e^~ b'^~>32.-[ \f <d e b'>32 <d_~ e^~ b'^~>64 <d_~ e^~ b'^~>32. <d_~ e^~ b'^~>32 <d e b'>64] }
                  \tuplet 3/2 { c''32-[( \p b64 e32 b64 a32 gs64 b32 e,64] }
                  \tuplet 3/2 { b'32-[ e,64 f32 d64 c32 b64 e32 b64)] } |
                  \tuplet 3/2 { c32-[\( b64 e32 b64 d32 c64 e32 c64 e32 d64 gs32 d64 f32 e64 a32 e64 a32 f64 a32 b,64 a'32 fs64 a32 c,64~] } |
                  \tuplet 3/2 { <c a'>32-[\f b64 a'32 gs64\) <d_~ b'^~>16.]^\(\sf }
                  \tuplet 3/2 { <d b'>32-[ c64 b'32 a64\) <e_~ c'^~>16.]^\(\sf }
                  \once \override TupletBracket.transparent = ##t
                  \tuplet 3/2 { <e c'>32-[ d64 c'32 b64\) <f_~ d'^~>32.\sf <f d'>32 <f d'>64] } |
                  \tuplet 3/2 { <f_~ g^~ b^~ d^~>32.-[ <f g b d>32 <f_~ g^~ b^~ d^~>64 <f_~ g^~ b^~ d^~>32. <f g b d>32 <f_~ g^~ b^~ d^~>64] }
                  \tuplet 3/2 { <f g b d>32-[ b64( f'32 d64 c32 b64 d32 b64] }
                  \tuplet 3/2 { g32-[ f64 a32 f64 e32 d64 f32 d64)] } |
                  \stemUp
                  \tuplet 3/2 { <g,_~ c_~ e^~>32.-[ <g c e>32 <g_~ c_~ e^~>64 <g_~ c_~ e^~>32. <g c e>32 <g_~ c_~ e^~>64] }
                  \once \override TupletBracket.transparent = ##t
                  \tuplet 3/2 { <g c e>32-[( <g b>64 <a c>32 <b d>64]) e16.~ e32-[( cs64 d32 e64 f16.~]) } |
                  \stemUp
                  \tuplet 3/2 { <f b,>32-[( <as, cs>64 <b d>32 <c e>64 d16.]~) }
                  \tuplet 3/2 { d32-[( cs64 d32 e64 d16.)]~ }
                  \tuplet 3/2 { d32-[( e64 f32 fs64 g16.~]) } |
                }
              }
              \alternative {
                {
                  \tuplet 3/2 { g32-[ a64 g32 a64 g32 <d f>64 e32 <d f>64] }
                  \tuplet 3/2 { e32-[ <g, d' f>64^( <g e'>32 d'64 c32 b64 c32 e64]) }
                  \tuplet 3/2 { e,32-[_( <c' e>64 e,32 <b' d>64 e,32 <a c>64 e32 <gs b>64)] }
                }
                {
                  \set Timing.measureLength = #(ly:make-moment 8/32)
                  \tuplet 3/2 { g'32-[\repeatTie a64 g32 a64 g32 <d f>64 e32 <d f>64] }
                  \tuplet 3/2 { e32-[ <c, f>64 <b e>32 <a d>64] }
                  \clef bass
                  \stemDown
                  \tuplet 3/2 { g32-[ a64 g32 f64] }
                  \bar "||"
                }
              }
              
              %-----------------------------------------------------------------
              %    Variation 4
              %-----------------------------------------------------------------
              \arietta-section-four
              \set Timing.measureLength = #(ly:make-moment 3/16)
              <e c'>16 <e_~ g^~ c^~>16 <e g c> |
              \set Timing.measureLength = #(ly:make-moment 9/16)
              d16\rest <b_~ d_~ f^~ g^~> <b d f g>
              d16\rest <b_~ d_~ f^~ g^~> <b d f g>
              d16\rest <f_~ g_~ b^~ d^~> <f g b d> |
              \set doubleSlurs = ##t
              % todo fix all the other legato chords
              d16\rest <d f^~ g^~>( <c e g>)
              d16\rest <c_~ e^~ g^~> <c e g>
              \override Tie.minimum-length = #4
              d16\rest <d_~ f^~ g^~> <d f g> |
              d16\rest <ds fs g^~>( <e g>)
              \set doubleSlurs = ##f
              d16\rest <e_~ g^~ e'^~> <e g e'>
              d16\rest <ef_~ fs^~ a^~ c^~> <ef fs a c> |
              d16\rest <d_~ f_~ af^~ c^~> <d f af c>
              d16\rest <d_~ f_~ af^~ b^~> <d f af b>
              d16\rest <d_~ f_~ g^~ b^~> <d f g b> |
              d16\rest <ds fs c'^~> <e g c>
              d16\rest <g_~ b e^~> <g c e>
              d16\rest \stemUp \clef treble <bf'_~ df_~ e^~ g^~> <bf df e g> |
              b'16\rest <bf,_~ df_~ e^~ g^~> <bf df e g>
              b'16\rest \stemDown \clef bass <f,_~ c'^~ f^~> <f c' f>
              d16\rest <f_~ af^~ d^~> <f af d> |
              d16\rest <f_~ af^~ b^~> <f af b>
              d16\rest <f e c'^~> <e g c>
              d16\rest <f g d'>^( <d f g>) \clef treble |
              \explicitTuplets
              \stemUp
              \override TupletBracket.bracket-visibility = ##t
              \tuplet 3/2 { g32-[ a b c d e f g a] }
              \override TupletBracket.transparent = ##t
              \implicitTuplets
              \stemNeutral
              \tuplet 3/2 { b-[ c d }
              \tuplet 3/2 { e f g }
              \tuplet 3/2 { a g b] }
              \tuplet 3/2 { c-[ \pp d c }
              \tuplet 3/2 { b c b }
              \tuplet 3/2 { c d c] } |
              \tuplet 3/2 { g32-[ a g fs g fs g a g] fs-[ g fs g a g cs d cs] d-[ e d cs d cs d e d] } |
              \tuplet 3/2 { cs32-[ d cs d e d g, a g] a-[ b a g a g b c b] c-[ d c d e d ds e ds] } |
              \tuplet 3/2 { e32-[ a, g fs a g fs a g] fs-[ g gs a bf b c cs d] e-[ f e d e d c d c] } |
              \tuplet 3/2 { b32-[ d c as c b c d e] b-[ c b as b as b c b] cs-[ e d e f e f g f] } |
              \tuplet 3/2 { g,32-[ g' g, c! g' c, b g' b,] c-[ g' d ds g e f g fs] g-[ a fs g fs g cs, a' g] } |
              \tuplet 3/2 { cs,32-[ a' g cs, f! e cs a' g] cs,-[ a' g d! g f a, e' d] af-[ e' d g, e' d g, d' c] } |
              \tuplet 3/2 { g32-[ d' c f, c' b g d' c] g-[ d' c g d' cs a! e' d] a-[ e' d b e d cs d g,] } |
              \tuplet 3/2 { a32-[ fs g a fs g a fs g] a-[ fs g a fs g a gs e'] b-[ a e' c b e] } b,16\rest \pp |
              b16\rest \clef bass <a, b~>16 <g b>
              d16\rest <a' b~>16 <g b>
              d16\rest <a' b~>16 <g b> |
              d16\rest \semprePp <a' b~> <gs b>
              d16\rest <a' b~> <gs b>
              d16\rest <a' b~ e~> <gs b e> |
              d16\rest <gs c~ e~> <a c e>
              d,16\rest <gs c~ e~> <a c e>
              d,16\rest <b' d> <a c> |
              d,16\rest <ds_~ fs_~ a^~ c^~> <ds fs a c>
              d16\rest <d_~ f_~ gs^~ b^~> <d f gs b>
              d16\rest <e_~ a^~ c^~> <e a c> |
              d16\rest <f_~ c'_~ d^~> <f c' d>
              d16\rest <c d^~> <b d>
              d16\rest <f_~ c'_~ d^~> <f c' d> |
              d16\rest <g_~ d' e^~> <g c e>
              d16\rest <d e^~> <c e>
              d16\rest <af' b_~ d^~ f^~> <g b d f> |
              d16\rest <c d~> <b d>
              d16\rest <c d~ g~> <b d g>
              d16\rest \clef treble <c' d_~ g^~> <b d g> \clef bass |
              d,16\rest <b d g>^( <c e>)
              d16\rest <c' e>^( e,)
              d16\rest \clef treble <d'' e>_( <d, e>) |
              \explicitTuplets
              \override TupletBracket.bracket-visibility = ##t
              \override TupletBracket.transparent = ##f
              \override TupletBracket.direction = #-1
              <e c' e>16 \tuplet 3/2 { c''32-[ \ppLeggiermente d b c b a] }
              \implicitTuplets
              \override TupletBracket.bracket-visibility = #'if-no-beam
              \tuplet 3/2 { gs32-[ a b a b c b c d] }
              \tuplet 3/2 { c32-[ d b c c d c b a] } |
              \tuplet 3/2 { b32-[ c d c b a gs a b] }
              \tuplet 3/2 { gs32-[ a b a b c b c d] }
              \tuplet 3/2 { b32-[ c d f e d c b e] } |
              \tuplet 3/2 { a,32-[ gs e' \semprePp b a e' c b e] }
              \tuplet 3/2 { d32-[ c e c b e d c e] }
              \tuplet 3/2 { d32-[ c e c b d b a c] } |
              \tuplet 3/2 { b32-[ a c b d c b a c] }
              \tuplet 3/2 { a32-[ gs b a c b a gs b] }
              \tuplet 3/2 { c32-[ d c b c b c d c] } |
              \tuplet 3/2 { d32-[ e cs d b c as b a] }
              \tuplet 3/2 { b32-[ a c b d c d cs ef] }
              \tuplet 3/2 { d32-[ e d f d e ds f ds] } |
              \tuplet 3/2 { e32-[ f ds e cs d b d c] }
              \tuplet 3/2 { d32-[ e d e f e f ds e] }
              \tuplet 3/2 { f32-[ g e f e f e g f] } |
              \tuplet 3/2 { d!32-[ f d f d f d f d] }
              \tuplet 3/2 { f32-[ d f d fs d fs d fs] }
              \tuplet 3/2 { d32-[ fs d g d g d g d] } |
              \tuplet 3/2 { g32-[ d g f! g d f d e] }
              \tuplet 3/2 { g32-[ f e f e d f e c] }
              \tuplet 3/2 { g'32-[ f e f e d f e c] } |
              \tuplet 3/2 { f32-[ e d e d b d c b] }
              \tuplet 3/2 { f'32-[ e d e d b d c b] }
              \tuplet 3/2 { f'32-[ e d e d b d c b] } |
              \tuplet 3/2 { g'32-[ f e f e d f e c] }
              \undo \omit Dots
              % note I would rather keep this rest at the same height as the other notes
              r8.
              \tuplet 3/2 { g32-[ f e f e d f e c] } |
              \tuplet 3/2 { f32-[ e d e d b d c b] }
              \tuplet 3/2 { f'32-[ e d e d b d c b] }
              \tuplet 3/2 { f'32-[ e d e d b d c b] } |
              \relative c'' { b8.\rest }
              <c e>8.-[ <c_~ e^~>8.] |
              <c e>8. <e c' e>8.-[ <e c' e>] |
              <e c' e>8.-[ <e c' e> <d b' d>8] \clef bass
              \explicitTuplets
              \tuplet 3/2 { g,,,,32-[ a b] }
              \implicitTuplets |
              \tuplet 3/2 { c32-[ e g] }
              \relative c { d16\rest }
              \clef treble
              \tuplet 3/2 { c'32-[ e g] }
              \omit Dots
              \tuplet 3/2 { c32-[ e g e g c e16.~] }
              \undo \omit Dots
              \tuplet 3/2 { e32-[ b c d b c e b c] } |
              \relative c'' { b16\rest }
              \clef bass
              \tuplet 3/2 { a,,,32-[ c e] }
              \relative c { d16\rest }
              \clef treble
              % Note: hack to accommodate Beethoven's weird notation.
              % This should actually be e32.~e32, but Beethoven uses
              % a 64th. Since a tie cannot pass through a space, we
              % use a slur instead.
              \tuplet 3/2 { a'32-[ c e c e a e64 a c e64^(] s32 }
              \tuplet 3/2 { e32-[) b c e, b' c e b c] } |
              \relative c'' { b16\rest }
              \tuplet 3/2 { e32-[ c e, e' cs e,] }
              \relative c'' { b16\rest }
              \tuplet 3/2 { f'32-[ d f, f' d f,] }
              \tuplet 3/2 { e'32-[ cs e, f' d f, d' b d,] } |
              \stemUp \grace cs32 \stemNeutral
              \trillSpanDown
              d4._~ \startTrillSpan d8._~ |
              d4._~ d8._~ |
              d8. \stopTrillSpan \pitchedTrill d4._~ \startTrillSpan ef |
              d4._~ d8._~ |
              d4._~ d8._~ |
              d4._~ d8._~ \stopTrillSpan |
              \pitchedTrill d4._~ \startTrillSpan ef d8._~ |
              % Note: this trill ends before the final note, as per the manuscript.
              d4._~ d8._~ \stopTrillSpan |
              d8.-[ a'8. bf8.]~ |
              bf8.-[ b8.]
            }
            \new Voice {
              \voiceTwo
              \relative c' {
                e4. e8. |
                e4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s8. s8. g8 b16 |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. bf8 g16 |
                a8 g16 a8 s16 a8 fs16 |
                <f d>8. <f d>8.~<f d>16 <f d> <f d> |
                % todo fix this slur
                <d f>16^(\< e d\! c\> d b)\! s8 s16 |
                <d f>16\<-[ e f\! e <d e> <c e>] <b e> <c e> d |
                s8 c16 |
                <b d>8. s8. |
                s8
                \stemUp
                \override NoteColumn.ignore-collision = ##t
                \single \hide Stem
                e16^~^[
                \single \hide Stem
                e16]
                \revert NoteColumn.ignore-collision
                s8 s8 \stemDown
                \single \hide Stem
                b'16~ |
                b16\< b\! c\> c8\! gs16 gs16 a a~ |
                \single \hide Stem
                a16 s8 s8. s8. \stemDown |
                b8-[_( \cresc f16 e8 f16]) b8-[ f16] |
                bf8 e,16 <bf' g>8 <bf e>16 a8. |
                <f b>8. <f b>8. <b d>8 d16\! |
                d16 b c~c-[~c] s8 s8 |
                s8. |
                s16 s
                \override NoteColumn.ignore-collision = ##t
                \single \hide Stem c-[~ \single \hide Stem c~ \single \hide Stem c]
                \revert NoteColumn.ignore-collision
                s16 |
                s8 |
                \implicitTuplets
                \tuplet 3/2 { g16-[ e32 d16 e32] }
                \tuplet 3/2 { f16-[ d32 cs16 d32] } s8 |
                s4 s8 |
                s4 s8 |
                \tuplet 3/2 { e16-[ d32 f16 e32] } 
                \tuplet 3/2 { e16-[ cs32 e16 d32] }
                <d g>8 |
                g8 e16-[ g] \tuplet 3/2 { d'16-[ cs32 e16 d32] } |
                \tuplet 3/2 { cs16-[ b32 d16 cs32] } a16-[ a]~a-[ a] |
                a16-[ d,16] \tuplet 3/2 { g16-[ e32 g16 f32~] }
                \tuplet 3/2 { f16-[ d32 <f af>16 <d f>32] } |
                \tuplet 3/2 { <d f>16-[ d32 b16 c32] }
                \tuplet 3/2 { d16-[ c32 f16 e32] } |
                \tuplet 3/2 { <d f>16-[ d32 <b f'>16 <c e>32] }
                % todo maybe move this tie up a bit
                \tuplet 3/2 { e16-[ <d e>32~<c e>16 <b e>32~] }
                \tuplet 3/2 { b16-[ <b d>32 <a c>16 <gs d'>32] } | 
                \tuplet 5/4 { a16-[( ds32 e16]~ }
                \tuplet 5/4 { e16-[ ds32 e16]~ }
                \tuplet 5/4 { e16-[ ds32 e16]~ } |
                \tuplet 5/4 { e16-[ ds32 e16]~ }
                \tuplet 5/4 { e16-[ ds32 e16]~ }
                \tuplet 5/4 { e16-[ ds32 e16]) } |
                \override Tie.minimum-length = #3.25
                s4 s8 |
                s4 s8 |
                s8
                \stemDown
                \tuplet 3/2 { d'16-[ b32 gs16 b32] }
                g16 g16~ |
                \tuplet 3/2 { g16-[ c32 b16 c32] }
                \tuplet 3/2 { c16-[ bf32 a16 bf32]~ }
                \tuplet 3/2 { bf16-[ s32 bf16 a32] } |
                \omit Dots
                \tuplet 3/2 { a16-[ c32 d16.]~ }
                \undo \omit Dots
                \tuplet 3/2 { d16-[ ds32 e16 s32] }
                \tuplet 3/2 { e16-[ f32 <b, f'>16 <b d>32] } |
                \tuplet 3/2 { <b d>16-[ b32 c16 d32] }
                \tuplet 3/2 { g,16-[ b,32 c16 d32] }
                \tuplet 3/2 { c16-[ b32 a16 <gs d'>32] } |
                \tuplet 3/2 { <b' d>16-[ b32 c16 d32] }
                \tuplet 3/2 { g,16-[ d'32 e16 f32] }
                \revert Tie.minimum-length |
                s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                \tuplet 3/2 { d32-[( e64 f32) <f d>64]( }
                \tuplet 3/2 { b,32-[ c64 d32) c64]( }
                \tuplet 3/2 { d32-[ e64 f32) e64] }
                s16 |
                \tuplet 3/2 { d32-[( e64 f32) <f d>64]( }
                \tuplet 3/2 { b,32-[ c64 d32) c64]( }
                \tuplet 3/2 { d32-[ e64 f32) e64]( }
                \tuplet 3/2 { f32-[ d64 f32) e64] }
                \once \override TupletBracket.transparent = ##t
                \tuplet 3/2 { d32-[ c64 b32] e,,64\rest }
                \tuplet 3/2 { b'32-[ c64 d32 c64] } |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s8.
                \once \override TupletBracket.transparent = ##t
                \omit Dots
                \tuplet 3/2 { g'32-[( e64 f32 g64] a16.~) }
                \tuplet 3/2 { a32-[( f64 g32 a64] } |
                % Some hackery to properly integrate two voices.
                \hideNotes
                \stemUp
                \once \override TupletBracket.transparent = ##t
                \override NoteColumn.ignore-collision = ##t
                \tuplet 3/2 { \single \hide Stem \single \hide Flag b32) \unHideNotes s64 s32 s64 \single \hide Flag b16.(\noBeam }
                \once \override TupletBracket.transparent = ##t
                \tuplet 3/2 { \stemDown g16.)~ g32-[ a64 b32 c64] b16.\noBeam r32 e64-[ d32 c64] } |
                \stemDown
                \once \override TupletBracket.transparent = ##t
                \tuplet 3/2 { d32-[ d64~ d32 d64]~ \stemUp \single \hide Flag d32 \noBeam s64 s32 s64 } s4
                \revert NoteColumn.ignore-collision |
                \stemDown
                \tuplet 3/2 { d32-[ d64~ d32 d64]~ }
                \tuplet 3/2 { d32-[ g,64~ g32 g64]~ }
                \once \override TupletBracket.transparent = ##t
                \tuplet 3/2 { g16. } \stemUp c,16 \stemNeutral
                \undo \omit Dots |
                s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                \stemUp
                s4. a''8^( g16) |
                g4. af8^( g16) |
                g8.-[ g8. g8.] |
                g8.-[ af8. af8.] |
                af8.-[ af8. af8.] |
                \trillSpanUp
                \pitchedTrill
                af4.^~ \startTrillSpan bf af8.^~ |
                af4.^~ af8.^~ |
                \once \override NoteColumn.ignore-collision = ##t
                \stemDown \omit Flag af8. s8. s8. \stopTrillSpan |
              }
            }
            \new Voice {
              \voiceThree
              \relative c' {
                \implicitTuplets
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 |
                s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                \stemDown
                s16
                \once \override NoteColumn.ignore-collision = ##t
                \once \override TupletBracket.transparent = ##t
                \tuplet 3/2 {
                  g'32-[ g64_~ g32 g64_~]
                  \stemUp
                  \once \override NoteColumn.force-hshift = #0
                  \single \hide Flag
                  g32
                }
              }
            }
          >>
        }
      }

      %---------------------------------------------------------------------
      %    Left hand
      %---------------------------------------------------------------------
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } {
        \clef bass \relative c, {
          \arietta-section-one
          <<
            \new Voice {
              \voiceOne
              \relative c, {
                <c g'>8. |
                <c g'>8.-[ <d g> <b g'>] |
                <b g'>8.-[ <c g'> <d g>] |
                <e g>8.-[ <c g'> <e g>] |
                \once \override PhrasingSlur.eccentricity = #1.75
                \once \override PhrasingSlur.height-limit = #7
                g,8.-[_\( g' g8^( f16 ] |
                % todo fix slur
                <e, e'>4.)\) <e e'>8. |
                <d d'>4. <f f'>8_( <fs fs'>16) |
                g'8.-[( a b8) b16]_~ |
                b8-[ b16_( c8 d16)] |
                b8-[_(_\repeatTie c16 d8 c16]) e8. |
              }
            }
            \new Voice {
              \voiceTwo
              \relative c, {
                s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                g4.~g8 f16 |
                s4. s8.
                s4. s8. |
                g4. s8. |
              }
            }
          >>
          <<
            \new Voice {
              \voiceOne
              \relative c {
                a8.-[ e'8. e8.] |
                gs,8.-[ e'8. e8.] |
                <gs, e'>8.-[ <a e'>8. <a e'>8.] |
                e8.-[ e'8. <a, a,>8.] |
                <g, g'>4. <g g'>8. |
                <c c'>4. <f, f'>8. |
                <g g'>8.-[ <g g'>8. <g g'>8 <g g'>16] |
                <g g'>8_( <c c'>16) <c c'>8. e'8. |
                <g,, g'>8_( <c c'>16) <c c'>16( g'' f \stemDown e c g')~ \stemNeutral |
                g16\( cs, g'~g d g~g as, g'~ |
                g16 b, g'~g c, g' e d g~ |
                g16 ds e g c, g'~g e g~ |
                g16 fs, g'16~g g, g'~g f, g'~ |
                g16 e, g'~g c,, e'~e c, e'~ |
                e16\) cs, e'~e d, f' fs fs, a' |
                af16^( g, g' a g, bf'~bf) b b |
                b16^( c f, e f d) e c
                % Moving the LV tie up a bit for clarity.
                \once \override LaissezVibrerTie.Y-offset = #'0.2
                g'\laissezVibrer |
                b16-[^( c d c b a gs a b]) |
                c16 a, e'~ |
                e16_( gs, e'~e a, e'~ |
                e16 gs, e'~e a, e'~e gs, gs'~ |
                gs16) \sempreLegato gs a~a a b~b c d |
                ds16 c c~c a a~a g g~_( |
                g16 g, g'~g g, g'~g g, g'~ |
                g16) c,, c'~c c, c'~c f,, f' |
                g16 g, g'~g g, g'~g g, b' |
                s16 \stemUp g'16 g( a g) s4 |
                s16 s16 s16 |
                s16 g-[ g] a g g \stemNeutral |
                \implicitTuplets
                \tuplet 3/2 { c16-[( \dolce g32 fs16 g32)] } |
                g16-[ g~g g] \stemDown \tuplet 3/2 { d-[^( g,32 fs16 g32]) } |
                s4 s8 |
                s8 \stemNeutral \tuplet 3/2 { d'16-[( b32 d16 c32] }
                \tuplet 3/2 { f16-[ ds32 f16 e32]) } |
                g8\noBeam g,8 \tuplet 3/2 { f16-[_( e32 g16 f32] } |
                \tuplet 3/2 { e16-[ d32 f16 e32]) }
                \tuplet 3/2 { c16-[_( b32 d16 c32] }
                \tuplet 3/2 { bf16-[ a32 c16 bf32]) } |
                a16-[ a'16] d,16-[ d'16] f,16-[ fs16]~ |
                \tuplet 3/2 { fs16-[ fs32_( a16 g32]) }
                a16-[ bf16]~bf-[ b16~] |
                b16 s16 s8 |
                b16\repeatTie s16 s4 |
                \stemUp
                \tuplet 5/4 { a16-[ ds32 e16~] }
                \tuplet 5/4 { e16-[ ds32 e16~] }
                \tuplet 5/4 { e16-[ ds32 e16~] } |
                \tuplet 5/4 { e16-[ ds32 e16~] }
                \tuplet 5/4 { e16-[ ds32 e16~] }
                \tuplet 5/4 { e16-[ ds32 e16] } |
                s4 s8 |
                s4 s8 |
                \tuplet 3/2 { s16 f'32-[ e16 f32] }
                \tuplet 3/2 { f16-[ d32 cs16 d32] }
                \tuplet 3/2 { b16-[ s32 d16 c32] } |
                \tuplet 3/2 { c16-[ e32 d16 e32] }
                \tuplet 3/2 { e16-[ g32 fs16 g32]~ }
                \tuplet 3/2 { g16-[ g32 e16 f32] } |
                \tuplet 3/2 { c16-[ s32 c16 b32] }
                \tuplet 3/2 { b16-[ b32 c16 s32] }
                \tuplet 3/2 { cs16-[ d32 <d f!>16 <d f>32] } |
                \stemDown
                \tuplet 3/2 { <g, d' f>16-[ <g, g'>32^( <a a'>16 <b b'>32] }
                \tuplet 3/2 { <c! c'!>16-[) d32^( e16 f32] }
                \tuplet 3/2 { e16-[ d32 c16 b32)] } |
                \tuplet 3/2 { <g' d' f>16-[ <g, g'>32^( <a a'>16 <b b'>32] }
                \tuplet 3/2 { <c! c'!>16-[) \clef treble b''32^( c16 d32)] } \clef bass |
                d,,8\rest |
                \stemUp
                \tuplet 3/2 { c,32-[ e64 g32 c64 e32 g64 b32 c64] }
                \tuplet 3/2 { d,,32-[ g64 b32 d64 g32 b64 cs32 d64] }
                d,8\rest |
                \tuplet 3/2 { d,32-[ g64 b32 d64 g32 b64 cs32 d64] }
                \tuplet 3/2 { e,,32-[ g64 c!32 e64 g32 c64 ds32 e64] }
                d,8\rest |
                \tuplet 3/2 { e,32-[ bf'64 cs32 e64 f32 b64 d32 f64] }
                \tuplet 3/2 { ds,32-[ g64 b32 ds64 e,32 g64 c!32 e64] }
                \tuplet 3/2 { c,32-[ e64 g32 c64] }
                \tuplet 3/2 { c,,32-[ e64 g32 c64] } |
                \omit Dots
                \tuplet 3/2 { <g, g'>32.-[~ <g g'>32 <g g'>64~ <g g'>32.~ <g g'>32 <g g'>64]~ }
                \tuplet 3/2 { <g g'>32.-[~ <g g'>32 <g g'>64~ <g g'>32.~ <g g'>32 <f f'>64] }
                \tuplet 3/2 { f32-[ b64 d32 f64 b32 d64 e32 f64] }
                \undo \omit Dots |
                <e, e'>32 d'32\rest d32\rest
                \stemDown
                \tuplet 3/2 { g'32-[ e64] }
                \tuplet 3/2 { c32-[ g64 e32 c64] }
                \tuplet 3/2 { e'32-[ c64 g32 e64] }
                \tuplet 3/2 { e'32-[ c64 g32 e64] }
                \tuplet 3/2 { c'32-[ g64 e32 c64] } |
                \tuplet 3/2 { a'32-[ g64 e32 cs64 a32 g'64 e32 cs64] }
                \tuplet 3/2 { a'32-[ f64 d32 f64 d32 d'64 f32 d64] }
                \tuplet 3/2 { f32-[ d64 a32 f64 f'32 d64 a32 f64] }
                \clef treble |
                \stemUp
                \tuplet 3/2 { g32-[ f'64 d32 b64] }
                \tuplet 3/2 { g32-[ b64 d32 f64] }
                \tuplet 3/2 { af,32-[ af'64 f32 c64 a32 c64 f32 a64] }
                \tuplet 3/2 { bf,32-[ bf'64 bf,32 bf'64 bf,32 bf'64 b,32 b'64] } |
                \stemNeutral
                \tuplet 3/2 { b,32-[_( c64 d32) b64]_( }
                \tuplet 3/2 { d32-[ e64 f32) e64]^( }
                \tuplet 3/2 { b'32-[ c64 d32) c64]^( }
                \tuplet 3/2 { d32-[ e64 f32 e64]) } |
                \tuplet 3/2 { b,32-[_( c64 d32) b64]_( }
                \tuplet 3/2 { d32-[ e64 f32) e64]^( }
                \tuplet 3/2 { b'32-[ c64 d32) c64]^( }
                \tuplet 3/2 { d32-[ b64 d32) c64]^( }
                \once \override TupletBracket.transparent = ##t
                \tuplet 3/2 { b32-[ a64 gs32]) d'64\rest }
                \clef bass
                \tuplet 3/2 { gs,,,,32-[_( a64 b32 a64])_~ } |
                \omit Dots
                \tuplet 3/2 { a32-[_( c64 e32 gs64 a32 c64 e32 gs64]) }
                \tuplet 3/2 { a32.-[~ a32 <a_~ c^~ e^~>64 <a_~ c^~ e^~>32. <a c e>32 <a_~ c^~ e^~>64] }
                \once \override TupletBracket.transparent = ##t
                \tuplet 3/2 { <a_~ c^~ e^~>32.-[ <a c e>32 <a_~ c^~ e^~>64~ <a_~ c^~ e^~>32. <a c e>32] <a,, a'>64 } |
                \tuplet 3/2 { gs32-[_( b64 e32 gs64 b32 e64 gs32 a64)] }
                \tuplet 3/2 { <gs_~ b^~ e^~>32.-[ <gs b e>32 <gs_~ b^~ e^~>64 <gs_~ b^~ e^~>32. <gs b e>32 <gs_~ b^~ e^~>64] }
                \tuplet 3/2 { <gs_~ b^~ e^~>32.-[ <gs b e>32 <gs_~ b^~ e^~>64 <gs_~ b^~ e^~>32. <gs b e>32 <gs b e>64] } |
                \stemDown
                \tuplet 3/2 { gs,32.~-[ gs32 gs'64 a,32.~ a32 a'64] }
                \tuplet 3/2 { b,32.~-[ b32 b'64 c,32.~ c32 c'64] }
                \tuplet 3/2 { d,32.~-[ d32 d'64 ds,32.~ ds32 ds'64] } |
                % todo put 32nd flags in the same direction
                \tuplet 3/2 { e16.~-[ e32 e,64 f32 e64] }
                \tuplet 3/2 { a16.~-[ a32 a,64 b32 a64] }
                \stemNeutral
                \tuplet 3/2 { g16._~-[ g32 g,64_( af32 g64]_~ } |
                \tuplet 3/2 { g32-[ b64 d32 g64 b32 d64 fs32 g64]) }
                \override Tie.minimum-length = #2.65
                \tuplet 3/2 { <g,_~ b^~ d^~ f^~>32.-[ <g b d f>32 <g_~ b^~ d^~ f^~>64 <g_~ b^~ d^~ f^~>32. <g b d f>32 <g_~ b^~ d^~ f^~>64] }
                \tuplet 3/2 { <g_~ b^~ d^~ f^~>32.-[ <g b d f>32 <g_~ b^~ d^~ f^~>64 <g_~ b^~ d^~ f^~>32. <g b d f>32 <g b d f>64] } |
                \tuplet 3/2 { c,32-[_( e64 g32 b64 c32 e64 g32 b64)] }
                \once \override TupletBracket.transparent = ##t
                \override Beam.auto-knee-gap = #1
                % Ignore the warning about the beam slope.
                #(ly:expect-warning "no viable")
                \tuplet 3/2 { c32-[^( f64 e32 d64] c32-[) c,,64_( d32 e64] f32-[) g'64_( f32 e64] d32-[) d,64_( e32 f64] }
                \revert Beam.auto-knee-gap |
                \once \override TupletBracket.transparent = ##t
                \tuplet 3/2 { g16.) g'32-[ fs64 g32 a64] b16.~ b32-[ c64 d32 e64] f!32-[ e64 d32 c64] b32-[ c64 b32 g64] } |
                \once \override TupletBracket.transparent = ##t
                \tuplet 3/2 { b32-[ b64~ b32 b64~] b32-[ b64( c32 b64)] c32-[( b64 c32 d64 e32 d64 e32 c64]) \stemNeutral d,32.\rest d32\rest e,64~ e32.-[ e32 e64] } |
                \once \override TupletBracket.transparent = ##t
                \tuplet 3/2 { b''32-[ b64~ b32 b64~] b32-[ b64( c32 b64] c32-[) a,64^( g32 f64] e32-[ f64 e32 d64]) }
                \undo \omit Dots |
                \tuplet 3/2 { c32-[ g' c, g' c, g' c, g' c,] } |
                \tuplet 3/2 { g'32-[ c, g' c, g' c, g' c, g'] }
                \tuplet 3/2 { c,32-[ g' c, g' c, g' c, g' c,] }
                \tuplet 3/2 { g'32-[ c, g' c, g' c, g' c, g'] } |
                \tuplet 3/2 { c,32-[ g' c, g' c, g' c, g' c,] }
                \tuplet 3/2 { g'32-[ c, g' c, g' c, g' c, g'] }
                \tuplet 3/2 { c,32-[ g' c, g' c, g' c, g' c,] } |
                \tuplet 3/2 { g'32-[ c, g' c, g' c, g' c, g'] }
                \tuplet 3/2 { c,32-[ g' c, g' c, g' c, g' c,] }
                \tuplet 3/2 { g'32-[ c, g' c, g' c, g' c, g'] } |
                \tuplet 3/2 { c,32-[ g' c, g' c, g' c, g' c,] }
                \tuplet 3/2 { g'32-[ c, g' c, g' c, g' c, g'] }
                \tuplet 3/2 { c,32-[ g' c, g' c, g' c, g' c,] } |
                \tuplet 3/2 { g'32-[ c, g' c, g' c, g' c, g'] }
                \tuplet 3/2 { c,32-[ g' c, g' c, g' c, g' c,] }
                \tuplet 3/2 { g'32-[ c, g' c, g' c, g' c, g'] } |
                \tuplet 3/2 { c,32-[ g' c, g' c, g' c, g' c,] }
                \tuplet 3/2 { a'32-[ c, a' c, a' c, a' c, a'] }
                \tuplet 3/2 { c,32-[ b' c, b' c, b' c, b' c,] } |
                \tuplet 3/2 { d'32-[ c, d' c, d' c, d' c, d'] }
                \tuplet 3/2 { c,32-[ c' c, c' c, c' c, c' c,] }
                \tuplet 3/2 { b'32-[ c, b' c, b' c, b' c, b'] } |
                \explicitTuplets
                \stemDown
                \override TupletBracket.bracket-visibility = ##t
                \override TupletBracket.direction = #-1
                \tuplet 3/2 { b32-[ c d e f g a b c] }
                \override TupletBracket.transparent = ##t
                \implicitTuplets
                \clef treble
                \stemUp
                \tuplet 3/2 { d-[ e f }
                \tuplet 3/2 { g a b }
                \tuplet 3/2 { c e d] }
                \stemDown
                e16-.-[ e-. e-.] |
                e-.-[ ds-. e-.]
                ds-.-[ e-. <e g>-.]
                <f g>-.-[ <e g>-. <f g>-.] |
                <e g>-.-[ <f g>-. <b, f'>-.]
                <c! f>-.-[ <b f'>-. <d f>-.]
                <e g>-.-[ <f g>-. <fs g>-.] |
                \tuplet 3/2 { g32-[ f! e ds f e ds f e] }
                \tuplet 3/2 { ds32-[ e f fs g gs a as b] }
                c16-.-[ <f, g>-. <e g>-.] |
                <e g>-.-[ <d g>-. <e g>-.]
                <d g>-.-[ <cs g'>-. <d g>-.]
                <f g>-.-[ <cs g'>-. <d g>-.] |
                e-.-[ e-. e-.]
                e-.-[ c'-. d-.]
                e-.-[ e-. <e, bf'>-.] |
                <e bf'>-.-[ \sempreStaccato <e g>-. <e bf'>-.]
                <e bf'>-.-[ <f a> f]
                f-[ f e] |
                e16-[ d e]
                e-[ e f]
                fs-[ g <b, f'>] |
                <b f'>-[ <c e> <d f>]
                <d f>-[ <c e> <b d>]
                \stemUp <a c>-[ <gs b>] \clef bass \tuplet 3/2 { e,32-[ e, e'] } |
                \tuplet 3/2 { e,32-[ e' e, e' e, e' e, e' e,] }
                \tuplet 3/2 { e'32-[ e, e' e, e' e, e' e, e'] }
                \tuplet 3/2 { e,32-[ e' e, e' e, e' e, e' e,] } |
                \tuplet 3/2 { e'32-[ e, e' e, e' e, e' e, e'] }
                \tuplet 3/2 { e,32-[ e' e, e' e, e' e, e' e,] }
                \tuplet 3/2 { e'32-[ e, e' e, e' e, e' e, e'] } |
                \tuplet 3/2 { e,32-[ e' e, e' e, e' e, e' e,] }
                \tuplet 3/2 { e'32-[ e, e' e, e' e, e' e, e'] }
                \tuplet 3/2 { e,32-[ e' e, e' e, e' e, e' e,] } |
                \tuplet 3/2 { e'32-[ e, e' e, e' e, e' e, e'] }
                \tuplet 3/2 { e,32-[ e' e, e' e, e' e, e' e,] }
                \tuplet 3/2 { a32-[ a, a' a, a' a, a' a, a'] } |
                \tuplet 3/2 { g,!32-[ g'! g, g' g, g' g, g' g,] }
                \tuplet 3/2 { g'32-[ g, g' g, g' g, g' g, g'] }
                \tuplet 3/2 { g,32-[ g' g, g' g, g' g, g' g,] } |
                \tuplet 3/2 { g'32-[ g, g' g, g' g, g' g, g'] }
                \tuplet 3/2 { g,32-[ g' g, g' g, g' g, g' g,] }
                \tuplet 3/2 { g'32-[ g, g' g, g' g, g' g, g'] } |
                \tuplet 3/2 { g,32-[ g' g, g' g, g' g, g' g,] }
                \tuplet 3/2 { g'32-[ g, g' g, g' g, g' g, g'] }
                \tuplet 3/2 { g,32-[ g' g, g' g, g' g, g' g,] } |
                \tuplet 3/2 { g'32-[ g, g' g, g' g, g' c, g'] }
                \tuplet 3/2 { c,32-[ g' c, g' c, g' c, g' c,] }
                \tuplet 3/2 { gs'32-[ b, gs' b, gs' b, gs' b, gs'] } |
                <a, a'>16 \clef treble
                \stemNeutral
                e''''16-.-[ e-.] e-.-[ e-. e-.] e-.-[ e-. e-.] |
                e16-.-[ e-. e-.] e-.-[ e-. e-.] e-.-[ e-. e-.] |
                e16-[ e e] e-[ e e] e-[ e e] |
                e16-[ e e] e-[ e e] c-[ a' af] |
                g16-[ g g] g16-[ g g] g16-[ g g] |
                g16-[ g g] g16-[ g g] a-[ gs a] |
                bf16-[ bf bf] bf-[ bf bf] b-[ b b] |
                b16-[ <g b> c] c-[ <c, e g> <c e g>] <c e g>-[ <c e g> <c e g>] |
                <c d f g>16-[ <c d f g> <c d f g>] <c d f g>-[ <c d f g> <c d f g>] <c d f g>-[ <c d f g> <c d f g>] |
                <c e g>16-[ <c e g> <c e g>]
                \tuplet 3/2 { g'32-[ f e f e d f e c] }
                c16-[ <c, e g> <c e g>] |
                <c d f g>16-[ <c d f g> <c d f g>] <c d f g>-[ <c d f g> <c d f g>] <c d f g>-[ <c d f g> <c d f g>] \clef bass |
                \tuplet 3/2 { c,32-[ c' e e, c' e g, c e] }
                \tuplet 3/2 { b32-[ c e g, c e f, c' e] }
                \tuplet 3/2 { e,32-[ c' e d, c' e c, c' e] } |
                \tuplet 3/2 { a,,32-[ c' e c, c' e e, c' e] }
                \tuplet 3/2 { gs,32-[ a c e, a c d, a' c] }
                \tuplet 3/2 { c,32-[ a' c b, a' c a, a' c] } |
                \tuplet 3/2 { g,!32-[ g'! c c, g' c e, g c] }
                \tuplet 3/2 { g,32-[ g' b b, g' b d, g b] }
                \stemDown
                \tuplet 3/2 { g,32-[ d' g g, f' g g, a b] } |
                \relative c { d16\rest }
                \tuplet 3/2 { c32-[ e g] }
                \relative c { d16\rest d8.\rest d8.\rest } |
                \stemNeutral
                \tuplet 3/2 { a,,32-[ c e] }
                \relative c { d16\rest }
                \tuplet 3/2 { a'32-[ c e] }
                \relative c { d8.\rest d8.\rest } |
                \omit Dots
                \tuplet 3/2 { g,,,32-[ c e g c e g16.] }
                \tuplet 3/2 { g,,32-[ c e g c e g16.] }
                \undo \omit Dots
                \relative c { d8.\rest } |
                \relative c { d8.\rest d8.\rest }
                <c, c,>8( <g g,>16) |
                <g g,>4. \clef treble c''8^( b16) |
                b4. c8^( b16) |
                b8.-[ b8. b8.] |
                b8.-[ bf8.] \clef bass <f, f,>8_( <bf, bf,>16) |
                <bf bf,>4. \clef treble f''8_( bf,16) |
                \trillSpanUp
                f'4.^~ \startTrillSpan f8.^~ |
                f4.^~ f8.^~ |
                f8. \stopTrillSpan
                \relative c'' { b8.\rest b8.\rest } |
              }
            }
            \new Voice {
              \voiceTwo
              \relative c {
                a4. a8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                b16 g c~c~c e^( f e) e^~ |
                e16 a,
                e'^\laissezVibrer |
                b16 g c~c8 c16 |
                s8 |
                s4 s8 |
                a16(-[ b]~b-[ c] cs-[ d] |
                ds16-[ e]) s8 s8 |
                s4 s8 |
                s4 s8 |
                s4 s8 |
                s8 g,8~g16-[ g~] |
                \implicitTuplets
                \tuplet 3/2 { g16-[ b32^( d16 e32] }
                \tuplet 3/2 { f16-[ e32 d16 c32]) } |
                \stemDown
                \tuplet 3/2 { g16-[ b32 d16 c32] }
                \stemNeutral
                \tuplet 3/2 { c16-[ b32 a16 gs32]~ }
                \tuplet 3/2 { gs16-[ gs32 a16 b32] } |
                \stemDown
                \tuplet 5/4 { a16-[~ a gs32] }
                \tuplet 5/4 { a16-[~ a gs32] }
                \tuplet 5/4 { a16-[~ a gs32] } |
                \tuplet 5/4 { gs16-[~ gs a32] }
                \tuplet 5/4 { gs16-[~ gs a32] }
                \tuplet 5/4 { gs16-[~ gs gs32]~ } |
                \stemUp
                \omit Dots
                \tuplet 3/2 { gs16-[ <gs,! gs'!>32\( <a a'>16.]~ }
                \tuplet 3/2 { <a a'>16-[\) <a a'>32\( <b b'>16.]( }
                \tuplet 3/2 { <c c'>16-[) <d d'>32 <ds ds'>16 <e e'>32\)] }
                \undo \omit Dots | 
                \tuplet 3/2 { <e e'>16-[ <e e'>32~ <e e'>16 <e e'>32]~ }
                \tuplet 3/2 { <e e'>16-[ <a, a'>32~ <a a'>16 <a a'>32]~ }
                \tuplet 3/2 { <a a'>16-[ <g! g'!>32~ <g g'>16 <g g'>32] } |
                <g g'>16\noBeam \stemDown g''16~ g8~ g16-[~ g16] |
                g16-[ c16]~ c16-[ c16]~ c16-[ f,16] |
                \tuplet 3/2 { fs16-[ a32 fs16 g32]~ }
                g16-[ g16]~
                \tuplet 3/2 { g16-[ s32 g16 g32] } |
              }
            }
          >>
        }
      }
    >>
    \layout {
      %#(layout-set-staff-size 17.52)
      %ragged-right = ##t
      \context {
        \Score
        % Set the score to a good default spacing value.
        \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8)
        \consists #Span_stem_engraver
      }
    }
    \midi {
      \tempo 4 = 96
    }
  }
}
