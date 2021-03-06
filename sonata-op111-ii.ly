%===========================================================================
%    Piano Sonata Op.111 (L.Beethoven) - II
%===========================================================================
%
%    (C) 2016-2017, Michiel Sikma <michiel@sikma.org>
%    Licensed under CC BY-SA 4.0.
%
%---------------------------------------------------------------------------

\include "sonata-op111-headers.ily"

%---------------------------------------------------------------------------
%    II. Arietta - Adagio molto semplice e cantabile
%---------------------------------------------------------------------------

% Main theme and variation 1.
two-section-one = {
  \key c \major
  \time 9/16
  \partial 8.
  \tempo "Adagio molto semplice e cantabile"
}

% Variation 2.
two-section-two = {
  \key c \major
  \time 6/16
  \tempo "L'istesso tempo"
}

% Variation 3.
two-section-three = {
  \key c \major
  \time 12/32
  \tempo "L'istesso tempo"
}

% Variation 4-7.
two-section-four = {
  \key c \major
  \time 9/16
}

% Variation 4, bar 35-49.
two-section-four-ef = {
  \key ef \major
}
% Variation 5.
two-section-five = {
  \key c \major
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
      \new Staff = "right" \with {
        \std-magnification
        \stdDynSize
        midiInstrument = "acoustic grand"
      } {
        \clef treble \relative c'' {
          \two-section-one
          \override DynamicTextSpanner.font-size = #0

          %-----------------------------------------------------------------
          %    Main theme, part 1
          %-----------------------------------------------------------------
          <<
            \new Voice {
              \voiceOne
              \repeat volta 2 {
                \relative c'' {
                  \autoPageBreaksOff
                  c8(-5 \p g16)-3 |
                  g4. d'8( g,16)\finger \markup \tied-finger-up #"3" #"4" |
                  g4.-4 g8.-4 |
                  \noPageBreak
                  g8.-[(-2 e'-5 c])\finger \markup \tied-finger-up #"4" #"5" |
                  c8.-[-5 b-4 <b g>] |
                  c8.-[(-2 e g-5]) |
                  g8.-[( f\finger \markup \tied-finger-up #"4" #"5" d8\finger \markup \tied-finger-up #"4" #"5" c16])\finger \markup \tied-finger-up #"4" #"5" |
                  \break
                  b8.-[(-4 c\finger \markup \tied-finger-up #"5" #"4" d8 g,16])\finger \markup \tied-finger-up #"3" #"5" |
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
                    g4. e8.\finger \markup \tied-finger-up #"4" #"1"
                  }
                }
              }
            }
            \new Voice {
              \voiceTwo
              \relative c' {
                e8. |
                e8.-[( f8.^2 d8.]) |
                d8.-[( e^2 f]) |
                s8. e8.-[ g] |
                e8.-[ d d] |
                g4.\< g8. |
                a4.\!\> a8-[
                -\tweak X-offset #-0.75
                -\tweak Y-offset #-6.1
                _\finger \markup \tied-lyric #"1~2" <d, a'>16]\! |
                <d g>8.-[ <c g'> <d g>8 d16]~\finger \markup \tied-lyric #"1~2" |
                d8-[ d16^(^2\< <c e-3>8\!\> <b f'-4>16)\!] |
                \once \override Slur.control-points = #'((1.3 . -1.4) (3.0 . 0.5) (6 . 0.85) (7.8 . -0.75))
                d8-[^(\repeatTie <c e-4>16\< <b f'-5>8\!\> <c e-4>16)]\! s8. |
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
                  \shortestNoteDuration 4
                  c4. \p c8( b16)-4 |
                  b4.\finger \markup \tied-finger-up #"4" #"3" b8(-2 e16) |
                  \noPageBreak
                  <b e>8.-[
                  \once \override Slur.height-limit = #3
                  <c e>_(-3-5 <b d>8-2-\finger \markup \tied-finger-up #"4" #"5" <a c>16-1-\finger \markup \tied-finger-up #"4" #"5"]) |
                  \once \override Slur.height-limit = #3
                  <a c>8.-[_(-3-5 <gs b>-2-4 <e a c>])-3-5
                  \once \override DynamicLineSpanner.staff-padding = #3 |
                  <g b d>4.-3-5 \cresc 
                  <g b d>8.-2-4 |
                  <g c e>4.-3-\finger \markup \tied-finger-up #"5" #"4" <a c f>8.-2-3-\finger \markup \tied-finger-up #"5" #"4" |
                  \break
                  <g b d>8.-[-4 <g b d>] <b d>8-[(-\finger \markup \tied-finger-up #"4" #"3" <d g>16])
                }
              }
              \alternative {
                {
                  \relative c'' {
                    \shortestNoteDuration 16
                    \stemDown <b d g>8(\!\sf\> <g c e>16) <g c e>8.\! \p \stemUp e8. \stemNeutral
                    \shortestNoteDuration 4
                  }
                }
                {
                  \relative c'' {
                    <b d g>8(\sf\> <g c e>16) <g c e>8.\! \p
                    \once \override Slur.height-limit = #3
                    c8_(_\markup { \italic "dolce" } e,16
                  }
                }
              }

              %-------------------------------------------------------------
              %    Variation 1, part 1
              %-------------------------------------------------------------
              \repeat volta 2 {
                \relative c'' {
                  a8 e16 g8 f16 d'8 d,16 |
                  \noPageBreak
                  g8_\markup { \italic "sempre legato" } d16 f8 e16 g8 f16 |
                  \noBreak
                  a8 g16 e'8 e,16 c'8 e,16) |
                  \break
                  \once \override Slur.height-limit = #5
                  <ef c'>8( <d b'>16 <c a'>8 <b g'>16 <c a'>8 <d b'>16 |
                  \stemUp
                  c'8\< e,16 e'8 g,16 g'8 bf,16)\! |
                  \once \override Slur.height-limit = #3
                  g'8(\> a,16 f'8 a,16 d8 c16)\! |
                  \noPageBreak
                  \once \override Slur.height-limit = #3
                  c8-[( b16 c8 cs16] cs16 <d g,> g,) |
                }
              }
              \alternative {
                {
                  \relative c'' {
                    g4. c8( e,16)
                  }
                }
                {
                  \relative c'' {
                    % Note: move down the volta bracket, since there's just one
                    % slur pushing it up.
                    \once \override Score.VoltaBracket.extra-offset = #'(0 . -2.2)
                    g8.~g16\>-[( gs a\! b e, e]) |
                    \set Timing.measureLength = #(ly:make-moment 3/16)
                    \once \override PhrasingSlur.height-limit = #5
                    c'8^\( e,16
                  }
                }
              }

              %-------------------------------------------------------------
              %    Variation 1, part 2
              %-------------------------------------------------------------
              \repeat volta 2 {
                \set Timing.measureLength = #(ly:make-moment 6/16)
                f,8\> e16\! c'8 <e, c>16
                \override DynamicLineSpanner.staff-padding = #4.5 |
                \set Timing.measureLength = #(ly:make-moment 9/16)
                % Note: we've used the Schlesinger copy as leading here.
                b'8-[\< \set stemLeftBeamCount = #2 \set stemRightBeamCount = #1 <b, e>16\!_(\> \set stemLeftBeamCount = #1 <c e>16 c' b]\)\! c\( <e, b'>\)) <e' b>( |
                \override Tie.minimum-length = #3.25
                f8 e16) e8( d16) d c c~ |
                \noPageBreak
                \override DynamicLineSpanner.staff-padding = #3
                <c a>16 \cresc <b gs>
                \once \override Tie.minimum-length = #2.75
                \once \override Slur.height-limit = #4 <b gs>_~_( <b gs> <c e,>) \once \override Slur.height-limit = #4 <c e,>_~_( <c e,> <d b>) <d b>\!\p |
                \mergeDifferentlyDottedOn
                \revert DynamicLineSpanner.staff-padding
                <d b>4. <ds b>8. |
                e8. e8( g16) g8( f16) |
                e8-[ d16 cs8 d16] d16 a' g |
              }
              \alternative {
                {
                  \relative c'' {
                    g'16-[^( f e] f-[ e]) e,-[ f e e]_( |
                    \set Timing.measureLength = #(ly:make-moment 3/16)
                    c'8 <c, e>16)
                    \noPageBreak
                  }
                }
                {
                  \relative c'' {
                    \set Timing.measureLength = #(ly:make-moment 6/16)
                    \autoPageBreaksOn
                    \stemDown <g' d>16-[\sf\> <f b,> <e c>] <f c>-[ <e c> <e c>]\! |
                    \pageBreak
                  }
                }
              }
              
              %-----------------------------------------------------------------
              %    Variation 2, part 1
              %-----------------------------------------------------------------
              \repeat volta 2 {
                \relative c' {
                  \two-section-two
                  \set Timing.measureLength = #(ly:make-moment 2/16)
                  b'8\rest |
                  \set Timing.measureLength = #(ly:make-moment 6/16)
                  \stemUp
                  \implicitTuplets
                  \tuplet 3/2 { e16-[( \manoSinistra c32 b16 c32] }
                  \tuplet 3/2 { d16-[ b32 as16 b32]) }
                  b8\rest |
                  \change Staff = "left"
                  \once \override PhrasingSlur.eccentricity = #0.25
                  \tuplet 3/2 { f,16-[\( d32 cs16 d32] }
                  \change Staff = "right"
                  \tuplet 3/2 { g'16-[ e32 ds16 e32] }
                  \tuplet 3/2 { g16-[ e32 g16 f32] } |
                  \tuplet 3/2 { a16-[ fs32 a16 g32]\) } \stemDown
                  <g e'>8\noBeam <g c>8 |
                  \stemUp
                  \tuplet 3/2 { c16-[ b32 d16 c32] }
                  \tuplet 3/2 { c16-[ \sempreLegato as32 c!16 b32] } b8 |
                  c8\cresc \tuplet 3/2 { e16-[( d32 f16 e32] } g8)~ |
                  g16-[\! g~]\> \tuplet 3/2 { g16-[ e32 g16 f32] }
                  \tuplet 3/2 { e16-[ cs32 e16 d32]\! } |
                  \once \override Slur.height-limit = #3 c!16-[( b c cs
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
                  \tuplet 5/4 {
                    \once \override Slur.height-limit = #4 c16-[(-5 ~c16 b32
                    -\tweak Y-offset #3.6
                    ^4]
                  }
                  \tuplet 5/4 { c16-[~c16 b32] }
                  \tuplet 5/4 { c16-[~c16 b32] } |
                  \tuplet 5/4 { b16-[~b16 c32] }
                  \tuplet 5/4 { b16-[~b16 c32] }
                  \tuplet 5/4 { b16-[~b16 e32]) } |
                  \omit Dots
                  \tuplet 3/2 { <b_~ e^~>16.-[ <b e>16 <c e>32] }
                  \tuplet 3/2 { <c_~ e^~>16.-[ <c e>16 <gs b d>32] }
                  \tuplet 3/2 { <e b' d>16-[_( <f a c>32 <fs a c>16 <b, g' b>32]) }
                  \undo \omit Dots |
                  \tuplet 3/2 { <b gs' b>16-[\cresc <b_~ gs'^~ b^~>32 <b gs' b>16 <b_~ gs'^~ b^~>32] }
                  \tuplet 3/2 { <b gs' b>16-[ <c_~ a'^~ c^~>32 <c a' c>16 <c_~ a'^~ c^~>32] }
                  \stemNeutral
                  \tuplet 3/2 { <c a' c>16-[ <d_~ b'^~ d^~>32 <d b' d>16 <d' b' d>32]\!\p } |
                  
                  \tuplet 3/2 { <d b' d>16-[ d32^( cs16 d32)] }
                  \stemUp
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
                    \omit Dots
                    \tuplet 3/2 { g16.-[~\sf\> g16 f32] }
                    \tuplet 3/2 { e16-[\!\p g32~ g16 g32] }
                    \undo \omit Dots
                    \revert Tie.minimum-length
                  }
                }
              }
              
              %-----------------------------------------------------------------
              %    Variation 3, part 1
              %-----------------------------------------------------------------
              \repeat volta 2 {
                \relative c''' {
                  \two-section-three
                  \override Tie.minimum-length = #3
                  \set Timing.measureLength = #(ly:make-moment 4/32)
                  \stemNeutral
                  \tuplet 3/2 { \once \override Slur.height-limit = #4 c32-[^(\f g64 e32 c64] }
                  \tuplet 3/2 { g32-[ e64 c32 g64]) } |
                  \set Timing.measureLength = #(ly:make-moment 12/32)
                  \omit Dots
                  \tuplet 3/2 { <e'_~ g^~>32.-[ <e g>32 <e_~ g^~>64 <e_~ g^~>32. <e g>32 <e g>64] }
                  \tuplet 3/2 { <f_~ g^~>32.-[ <f g>32 <f_~ g^~>64 <f_~ g^~>32. <f g>32 <f g>64] }
                  \tuplet 3/2 { \once \override Slur.height-limit = #6 f''32-[^( d64 b32 g64 f32 d64 b32 g64]) } |
                  \tuplet 3/2 { <f_~ g^~>32.-[ <f g>32 <f_~ g^~>64 <f_~ g^~>32. <f g>32 <f g>64] }
                  \tuplet 3/2 { g32.~-[ g32 g64~ g32.~ g32 g64] }
                  \tuplet 3/2 { \once \override Slur.height-limit = #6 g''32-[( e64 c32 g64 e32 c64 g32 g'64]) } |
                  % todo clean up these ties a little
                  \tuplet 3/2 { <g,_~ bf_~ cs^~ g'^~>32.-[ <g bf cs g'>32 <g_~ bf_~ cs^~ g'^~>64 <g_~ b^~ d^~ g^~>32. <g b d g>32 <g b d g>64] }
                  \tuplet 3/2 { <g_~ b^~ g'^~>32.-[ <g b g'>32 <g_~ b^~ g'^~>64] }
                  \tuplet 3/2 { <g_~ c g'^~>32.-[ <g c g'>32 <g c g'>64] }
                  \tuplet 3/2 { <e'_~ g^~ e'^~>32.-[ <e g e'>32 <e_~ g^~ e'^~>64 <e_~ g^~ e'^~>32. <e g e'>32 <c e c'>64] } |
                  \tuplet 3/2 { \once \override Slur.height-limit = #6 c'32-[( a64 fs32 ef64 c32 a64 fs32 <ef c'>64)] }
                  \tuplet 3/2 { \once \override Slur.height-limit = #6 b''32-[( g64 d32 b64 g32 d64 b32) <af''_~ b^~ d,_~ b_~>64] }
                  % todo: clean up ties
                  \tuplet 3/2 { <af_~ b^~ d,_~ b_~>32.-[ <af b d, b>32 <af_~ b^~ d,_~ b_~>64 <af_~ b^~ d,_~ b_~>32 <af b d, b>32. <af b d, b>64] } |
                  \tuplet 3/2 { \once \override Slur.height-limit = #6 c32-[( g64 e!32\sf c64 g32 e64 e'32\sf c64)] }
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
                    \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
                      #'((alignment-distances . (12.5)))
                    \tuplet 3/2 { g32.~-[ g32 g64]~ }
                    \tuplet 3/2 { g32.~-[ g32 g64]~ }
                    \tuplet 3/2 { \once \override Slur.height-limit = #6 g32.~-[ g32 g64]( }
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
                  \tuplet 3/2 { \once \override Slur.height-limit = #6 c''32-[( \p b64 e32 b64 a32 gs64 b32 e,64] }
                  \tuplet 3/2 { b'32-[ e,64 f32 d64 c32 b64 e32 b64)] } |
                  \tuplet 3/2 { \once \override PhrasingSlur.height-limit = #6 c32-[\( b64 e32 b64 d32 c64 e32 c64 e32 d64 gs32 d64 f32 e64 a32 e64 a32 f64 a32 b,64 a'32 fs64 a32 c,64~] } |
                  \tuplet 3/2 { <c a'>32-[\f b64 a'32 gs64\) \once \override PhrasingSlur.height-limit = #4 <d_~ b'^~>16.]^\(\sf }
                  \tuplet 3/2 { <d b'>32-[ c64 b'32 a64\) \once \override PhrasingSlur.height-limit = #4 <e_~ c'^~>16.]^\(\sf }
                  \once \override TupletBracket.transparent = ##t
                  \tuplet 3/2 { <e c'>32-[ d64 c'32 b64\) <f_~ d'^~>32.\sf <f d'>32 <f d'>64] } |
                  \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
                    #'((alignment-distances . (13)))
                  \tuplet 3/2 { <f_~ g^~ b^~ d^~>32.-[ <f g b d>32 <f_~ g^~ b^~ d^~>64 <f_~ g^~ b^~ d^~>32. <f g b d>32 <f_~ g^~ b^~ d^~>64] }
                  \tuplet 3/2 { <f g b d>32-[ \once \override Slur.height-limit = #6 b64( f'32 d64 c32 b64 d32 b64] }
                  \tuplet 3/2 { g32-[ f64 a32 f64 e32 d64 f32 d64)] } |
                  \stemUp
                  \tuplet 3/2 { <g,_~ c_~ e^~>32.-[ <g c e>32 <g_~ c_~ e^~>64 <g_~ c_~ e^~>32. <g c e>32 <g_~ c_~ e^~>64] }
                  \once \override TupletBracket.transparent = ##t
                  \tuplet 3/2 { <g c e>32-[( <g b>64 <a c>32 <b d>64]) e16.~ e32-[( cs64 d32 e64 f16.~]) } |
                  \stemUp
                  \tuplet 3/2 { \once \override Slur.height-limit = #3 <f b,>32-[( <as, cs>64 <b d>32 <c e>64 d16.]~) }
                  \tuplet 3/2 { d32-[( cs64 d32 e64 d16.)]~ }
                  \tuplet 3/2 { d32-[( e64 f32 fs64 g16.~]) } |
                }
              }
              \alternative {
                {
                  \tuplet 3/2 { g32-[ a64 g32 a64 g32 <d f>64 e32 <d f>64] }
                  \tuplet 3/2 { e32-[ \once \override Slur.height-limit = #3 <g, d' f>64^( <g e'>32 d'64 c32 b64 c32 e64]) }
                  \tuplet 3/2 { \once \override Slur.height-limit = #3 e,32-[_( <c' e>64 e,32 <b' d>64 e,32 <a c>64 e32 <gs b>64)] }
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
              \two-section-four
              \set Timing.measureLength = #(ly:make-moment 3/16)
              <e c'>16 <e_~ g^~ c^~>16 <e g c> |
              \set Timing.measureLength = #(ly:make-moment 9/16)
              d16\rest <b_~ d_~ f^~ g^~> <b d f g>
              d16\rest <b_~ d_~ f^~ g^~> <b d f g>
              d16\rest <f_~ g_~ b^~ d^~> <f g b d> |
              % todo fix all the other legato chords
              d16\rest <d f^~ g^~>_( <c e g>)
              d16\rest <c_~ e^~ g^~> <c e g>
              \override Tie.minimum-length = #4
              d16\rest <d_~ f^~ g^~> <d f g> |
              d16\rest <ds fs g^~>_( <e g>)
              d16\rest <e_~ g^~ e'^~> <e g e'>
              d16\rest <ef_~ fs^~ a^~ c^~> <ef fs a c> |
              d16\rest <d_~ f_~ af^~ c^~> <d f af c>
              d16\rest <d_~ f_~ af^~ b^~> <d f af b>
              d16\rest <d_~ f_~ g^~ b^~> <d f g b> |
              d16\rest <ds fs c'^~>_( <e g c>)
              d16\rest <g_~ b e^~>_( <g c e>)
              d16\rest \stemUp \clef treble <bf'_~ df_~ e^~ g^~> <bf df e g> |
              b'16\rest <bf,_~ df_~ e^~ g^~> <bf df e g>
              b'16\rest \stemDown \clef bass <f,_~ c'^~ f^~> <f c' f>
              d16\rest <f_~ af^~ d^~> <f af d> |
              d16\rest <f_~ af^~ b^~> <f af b>
              d16\rest <f e c'^~>_( <e g c>)
              d16\rest <f g d'>_( <d f g>) \clef treble |
              \explicitTuplets
              \stemUp
              \override TupletBracket.bracket-visibility = #'if-no-beam
              \tuplet 3/2 { g32-[ a b }
              \tuplet 3/2 { c d e }
              \tuplet 3/2 { f g a] }
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
              \override DynamicLineSpanner.staff-padding = #1.8
              \tuplet 3/2 { a32-[ fs g a fs g a fs g] a-[ fs g a fs g a gs e'] b-[ a e' c b e] } b,16\rest \pp |
              \revert DynamicLineSpanner.staff-padding
              b16\rest \clef bass <a, b~>16_( <g b>)
              d16\rest <a' b~>16_( <g b>)
              d16\rest <a' b~>16_( <g b>) |
              \override DynamicLineSpanner.staff-padding = #1.8
              d16\rest \semprePp <a' b~>_( <gs b>)
              \revert DynamicLineSpanner.staff-padding
              d16\rest <a' b~>_( <gs b>)
              d16\rest <a' b~ e~>_( <gs b e>) |
              d16\rest <gs c~ e~>_( <a c e>)
              d,16\rest <gs c~ e~>_( <a c e>)
              d,16\rest <b' d>_( <a c>) |
              d,16\rest <ds_~ fs_~ a^~ c^~> <ds fs a c>
              d16\rest <d_~ f_~ gs^~ b^~> <d f gs b>
              d16\rest <e_~ a^~ c^~> <e a c> |
              d16\rest <f_~ c'_~ d^~> <f c' d>
              d16\rest <c d^~>^( <b d>)
              d16\rest <f_~ c'_~ d^~> <f c' d> |
              d16\rest <g_~ d' e^~>_( <g c e>)
              d16\rest <d e^~>_( <c e>)
              d16\rest <af' b_~ d^~ f^~>_( <g b d f>) |
              d16\rest <c d~>^( <b d>)
              d16\rest <c d~ g~>_( <b d g>)
              d16\rest \clef treble <c' d_~ g^~>^( <b d g>) \clef bass |
              d,16\rest <b d g>_( <c e>)
              d16\rest <c' e>_( e,)
              d16\rest \clef treble <d'' e>^( <d, e>) |
              \explicitTuplets
              \override TupletBracket.bracket-visibility = #'if-no-beam
              \override TupletBracket.transparent = ##f
              \override TupletBracket.direction = #-1
              <e c' e>16 \tuplet 3/2 { c''32-[ \ppLeggiermente d b } \tuplet 3/2 { c b a] }
              \implicitTuplets
              \override TupletBracket.bracket-visibility = #'if-no-beam
              \tuplet 3/2 { gs32-[ a b a b c b c d] }
              \tuplet 3/2 { c32-[ d b c c d c b a] } |
              \tuplet 3/2 { b32-[ c d c b a gs a b] }
              \tuplet 3/2 { gs32-[ a b a b c b c d] }
              \tuplet 3/2 { b32-[ c d f e d c b e] } |
              \override DynamicLineSpanner.staff-padding = #1.8
              \tuplet 3/2 { a,32-[ gs e' \semprePp b a e' c b e] }
              \revert DynamicLineSpanner.staff-padding
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
              \relative c'' { b8.\rest }
              \tuplet 3/2 { g32-[ f e f e d f e c] } |
              \tuplet 3/2 { f32-[ e d e d b d c b] }
              \tuplet 3/2 { f'32-[ e d e d b d c b] }
              \tuplet 3/2 { f'32-[ e d e d b d c b] } |
              \relative c'' { b8.\rest }
              <c e>8.-[ <c_~ e^~>8.] |
              <c e>8. <e c' e>8.-[ <e c' e>] |
              <e c' e>8.-[ <e c' e> <d b' d>8] \clef bass
              \explicitTuplets
              \override TupletBracket.direction = #1
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
              % a 64th. We've manually set the amount of beams to 4 for
              % the last note.
              \omit Dots
              \tuplet 3/2 { a'32-[ c e c e a e64 a \set stemRightBeamCount = #4 c \set stemLeftBeamCount = #4 e32.^~] }
              \undo \omit Dots
              \tuplet 3/2 { e32-[ b c e, b' c e b c] } |
              \relative c'' { b16\rest }
              \tuplet 3/2 { e32-[ c e, e' cs e,] }
              \relative c'' { b16\rest }
              \tuplet 3/2 { f'32-[ d f, f' d f,] }
              \tuplet 3/2 { e'32-[ cs e, f' d f, d' b d,] } |
              % Ensure trills don't pass the bar line.
              \override TrillSpanner.to-barline = ##t
              \stemUp \grace cs32
              % todo: shortest note duration, space this a little
              \stemNeutral
              \trillSpanDown
              % Make some space for the flat sign in front of the next trill.
              \once \override TrillSpanner.bound-details.right.padding = #2.8
              % todo: perfectly align the dynamics
              d4._~ \f
              \startTrillSpan d8._~ |
              d4._~ d8._~ \p |
              d8.-\textDecresc "dimin."
              \flatTrill
              % Give a little bit of breathing space, since it goes to the bar line.
              \once \override TrillSpanner.bound-details.right.padding = #1.0
              d4._~ \stopTrillSpan
              \startTrillSpan |
              d4._~
              d8._~ |
              d4._~\!\pp d8._~ |
              d4._~ d8. |
              \once \override TrillSpanner.bound-details.right.padding = #1.0
              d4._~\< \stopTrillSpan \startTrillSpan d8._~\! |
              % Note: this trill ends before the final note, as per the manuscript.
              d4._~\> d8._~\! |
              \once \override TrillSpanner.to-barline = ##t
              \override DynamicLineSpanner.staff-padding = #2
              d8.-[ \stopTrillSpan \p \cresc a'8. \regularTrill bf8.]~ |
              \revert DynamicLineSpanner.staff-padding
              bf8.-[ b8. c8.^~] \bar "||" |
              \two-section-four-ef
              c8.-[ cs8. d8.]^~\!\sf\> |
              d4.^~
              \afterGrace d8. { \stemUp c32-[ d32]\! \stemNeutral } |
              \once \override PhrasingSlur.height-limit = #8
              ef8.-[^\( \p \cresc g bf~] |
              bf8-[ a16] af16-[\!-\textDecresc "dimin." bf, <af bf,>]\) c,8-[ c16] |
              \set beatStructure = #'(3 3 3)
              \stemDown
              <f, af>16^\markup { \italic "espressivo" } \!\p <f af>16 <f af>16 <f af>16 <f af>16 <f af>16 <f af>16 <f af>16 <f af>16 |
              \break
              \override DynamicLineSpanner.staff-padding = #4.55
              g16 \p -\textDecresc "dimin." g g g g g <ef g> <ef g> <ef g> |
              <f g>16 <f g> <f g> <f g>16 <f g> <f g> <f g>16 <f g> f |
              ef16\!\pp ef ef ef ef ef <c ef> <c ef> <c ef> |
              \revert DynamicLineSpanner.staff-padding
              <df ef>16 <df ef> <df ef> <df ef>16 <df ef> <df ef> <df ef>16 <df ef> df |
              df16 c c c <c d> c c b b |
              bf!16 <bf df> bf bf a a s8. \clef bass |
              af16 g g g g g g fs <fs a> |
              <f af>16 <f g> f f e <g e> <gf e> <f e> e |
              ef16 df <df f> <df ef> <df ef> df c \cresc c ef \clef treble |
              c'16 c ef d d d
              
              %-----------------------------------------------------------------
              %    Variation 5
              %-----------------------------------------------------------------
              \two-section-five <c e> <c e> <c e> |
              e16 d e f e f d c <d f> |
              d16 e d e f e f e f |
              \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
                #'((alignment-distances . (13.5)))
              c16 b c e d e g f e |
              e ds e d d d <d g> <d g> <d g> |
              % Todo make this spanner a bit more pretty
              \once \override TextSpanner.to-barline = ##t
              \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
                #'((alignment-distances . (13.5)))
              g\!\f fs g e g g d' cs d |
              cs\sf\> b cs d cs d f, f fs |
              \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
                #'((alignment-distances . (13.5)))
              g16\! a g fs g fs f f f |
              <d f> <c e> <b f'> <b f'> <c e> d d c b |
              % todo: add padding for the cresc
              \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
                #'((alignment-distances . (13.5)))
              <c e>\cresc e e e e e e e e |
              e e e e e e e e <e b'> |
              \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
                #'((alignment-distances . (13.5)))
              <e b'> <e b'> <e b'> <e c'> <e c'> <e c'> b' gs a |
              <e a>\!\sf\> <e a> <e a> <e gs> <e gs> <e gs> <e a>\!\p <e a> <e a> |
              <g b>16\cresc <g b> <g b> <g b> <g b> <g b> <f b> <f b> <f b> |
              <e bf'>16 <e bf'> <e bf'> <e bf'> <e bf'> <e bf'> <f a> <a c> <af c> |
              \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
                #'((alignment-distances . (14.5)))
              <g c>16 <g c> <g c> <g c> <g c> <g c> <g b> <g c> <g d'> |
              d'16\!\sf\> b g e\!\p ds e b'\sf\> gs e |
              \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
                #'((alignment-distances . (12.5)))
              e16\!\p e e g'\sf\> e c c\!\p <cs g'> <d f> |
              e16\sf\> cs a a\!\p a a
              \override DynamicLineSpanner.staff-padding = #3.5
              af\cresc af af |
              %%
              g16 g g g g g <g b> <g c> <g d'> |
              g16 g g <g bf> <g bf> <g bf> a a <a c> |
              <e g> <e g> <e g> <f g> <f g> <f g>
              \tuplet 3/2 { b32\!\sf\> d b' b, d g c, g' c } |
              \tuplet 3/2 { c,\!\p g' c b, g' b c, g' c }
              \revert DynamicLineSpanner.staff-padding
              \tuplet 3/2 { gs\sf\> b gs' gs, b e a, e' a }
              \tuplet 3/2 { a,\!\p e' a b, e gs a, e' a } |
              \tuplet 3/2 { e,\sf\> g e' e, g c f, c' f }
              \tuplet 3/2 { f,\!\p c' f e, c' e f, c' f }
              e16\sf\> cs a |
              \override DynamicLineSpanner.staff-padding = #2.0
              a16\!\p a a <a d>\cresc <a d> <a d> <af d> <af d> <af d> |
              \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
                #'((alignment-distances . (9.5)))
              \repeat unfold 9 { <g d> } |
              \repeat unfold 9 { <c d> } |
              \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
                #'((alignment-distances . (9.5)))
              <c e> <g c e> <g c e> \repeat unfold 6 { <g b> } |
              <g b>\!\f \repeat unfold 4 { <g b> } <g c> <g c> <g b> <g c> |
              \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
                #'((alignment-distances . (9.5)))
              \revert DynamicLineSpanner.staff-padding
              g g g\sf g g g\sf <g bf> <g b> <g b>\sf |
              \stemUp
              \trillSpanUp
              \once \override TrillSpanner.bound-details.right.padding = #1.5
              d'8.\startTrillSpan \grace { cs32-[\stopTrillSpan d] fs16 } \stemDown
              \once \override TrillSpanner.bound-details.right.padding = #1.5
              g4.~\startTrillSpan\sf\> |
              g4. \stemUp
              \once \override TrillSpanner.bound-details.right.padding = #0
              
              %-----------------------------------------------------------------
              %    Variation 6
              %-----------------------------------------------------------------
              g8.~\!\pp\stopTrillSpan \startTrillSpan |
              \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
                #'((alignment-distances . (9.0)))
              g4.~g8.~ |
              g4.~g8.~ |
              \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
                #'((alignment-distances . (10.0)))
              g4.~g8.~ |
              % Trill must span until just before the b.
              g4. \grace { s64\stopTrillSpan }
              \trillSpanDown
              b,8.\startTrillSpan |
              \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
                #'((alignment-distances . (9.0)))
              c8.-[ e g] |
              g-[ f d8 c16] |
              b8.-[ c d8 \grace { s64\stopTrillSpan } \trillSpanUp g,16]\startTrillSpan |
              g4.~g8. |
              \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
                #'((alignment-distances . (13.5)))
              g8.-[~g8 \grace { s64\stopTrillSpan } \trillSpanDown
              \once \override TrillSpanner.bound-details.right.padding = #1.0
              c16]^(\startTrillSpan cs16-[ d) g,] |
              \trillSpanUp g4.\stopTrillSpan\startTrillSpan~g8. |
              \stemNeutral
              \tuplet 3/2 { g32\stopTrillSpan\pp a g fs g a b c a }
              \tuplet 3/2 { b c b a b c d e c }
              \tuplet 3/2 { d e d cs d e f! g e } |
              \once \override Staff.OttavaBracket.shorten-pair = #'(0 . 0.2)
              \ottava #1
              \set Staff.ottavation = #"8"
              \tuplet 3/2 { f g f e f e d e d }
              \tuplet 3/2 { c d c b c b c d c }
              \tuplet 3/2 { d e d e f g a g b } |
              \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
                #'((alignment-distances . (12.5)))
              \tuplet 3/2 { \override DynamicLineSpanner.staff-padding = #3.2 c\cresc b a g f e d c b }
              \ottava #0
              \tuplet 3/2 { c b a g f e d c b }
              \tuplet 3/2 { c b a g f e d c b } |
              % Note: space out the final notes a bit more.
              \shortestNoteDuration 16
              \once \override DynamicText.Y-offset = #-0.9
              c8-[_(\!\f g16]) g8. f''8-[^(\sf b,16]) |
              \shortestNoteDuration 64
              f''8-[^(\sf\> b,16]) <d f, d>8-[^(\!\p
              \override DynamicLineSpanner.staff-padding = #2.7
              % todo move dim to the left
              <c e, c>16)]-\textDecresc "dimin." <c e, c>8 \relative c'' { b16\rest } |
              <c e, c>8\pp \relative c'' { b16\rest }
              \change Staff = "left"
              \stemUp
              <e,,, g c>8
              \change Staff = "right"
              \relative c'' { b16\rest } \bar "|."
              \shortestNoteDuration 16
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
                <f d>8. <f d>8.~<f d>16 <f d> <f d>
                \override DynamicLineSpanner.staff-padding = #5.5 |
                \shape #'((0.5 . -0.2) (0.8 . -0.1) (0.4 . 0) (0 . 0)) Slur
                <d f>16^(\< e d\! c\> d b)\! s8 s16 |
                \revert DynamicLineSpanner.staff-padding
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
                \override DynamicLineSpanner.staff-padding = #3
                b16\< b\! c\> c8\! gs16 gs16 a a~ |
                \revert DynamicLineSpanner.staff-padding
                \single \hide Stem
                a16 s8 s8. s8. \stemDown |
                \once \override Slur.control-points = #'((2.1 . 0.3) (3.1 . 0.7) (8.5 . 1.2) (10.1 . -0.58))
                b8-[^( \cresc f16 e8 f16]) b8-[ f16] |
                bf8 e,16 <bf' g>8 <bf e>16 a8. |
                <f b>8. <f b>8. <b d>8 d16 |
                \override Tie.minimum-length = #2
                d16\!\sf\> b c~c-[~c]\! s8 s8 |
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
                \override Tie.minimum-length = #2.65
                \tuplet 3/2 { e16-[ <d e>32~<c e>16 <b e>32~] }
                \tuplet 3/2 { b16-[ <b d>32 <a c>16 <gs d'>32] } |
                % todo fix the fingering positions
                \tuplet 5/4 {
                  \once \override Slur.height-limit = #4 a16-[( ds32
                  -\tweak Y-offset #-7.24
                  _2 e16-1]~
                }
                \tuplet 5/4 { e16-[ ds32-2 e16-1]~ }
                \tuplet 5/4 { e16-[ ds32 e16]~ } |
                \tuplet 5/4 { e16-[ f32 e16]~ }
                \tuplet 5/4 { e16-[ f32 e16]~ }
                \tuplet 5/4 { e16-[ f32 e16]) } |
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
                \tuplet 3/2 { d32-[( e64 f32) \once \override Slur.height-limit = #4 <f d>64]( }
                \tuplet 3/2 { b,32-[ c64 d32) \once \override Slur.height-limit = #5 c64]( }
                \tuplet 3/2 { d32-[ e64 f32) e64] }
                s16 |
                \tuplet 3/2 { d32-[( e64 f32) \once \override Slur.height-limit = #4 <f d>64]( }
                \tuplet 3/2 { b,32-[ c64 d32) \once \override Slur.height-limit = #5 c64]( }
                \tuplet 3/2 { d32-[ e64 f32) \once \override Slur.height-limit = #4 e64]( }
                \tuplet 3/2 { f32-[ d64 f32) e64] }
                \once \override TupletBracket.transparent = ##t
                % todo is this rest correctly placed? manuscript is ambiguous
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
                \tuplet 3/2 { \once \override Slur.height-limit = #4 g'32-[( e64 f32 g64] a16.~) }
                \tuplet 3/2 { \once \override Slur.height-limit = #4 a32-[( f64 g32 a64] } |
                % Some hackery to properly integrate two voices.
                \hideNotes
                \stemUp
                \once \override TupletBracket.transparent = ##t
                \override NoteColumn.ignore-collision = ##t
                \tuplet 3/2 { \single \hide Stem \single \hide Flag b32) \unHideNotes s64 s32 s64 \single \hide Flag \once \override Slur.height-limit = #4 b16.(\noBeam }
                \once \override TupletBracket.transparent = ##t
                \tuplet 3/2 {
                  \stemDown g16.)~ g32-[ a64 b32 c64] b16.\noBeam r32
                  e64-[ d32 c64]
                } |
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
                \flatTrill
                \once \override TrillSpanner.bound-details.right-broken.padding = #0
                \once \override TrillSpanner.bound-details.right.padding = #2.8
                af4.^~ \startTrillSpan af8.^~ |
                af4.^~ af8.^~ |
                \once \override NoteColumn.ignore-collision = ##t
                \stemDown \omit Flag af8. s8. s8. |
                \break
                \undo \omit Flag
                s8. s8. s8. |
                s8. s8. 
                % Attempt to position the next trill exactly at the same height
                % as the previous one.
                \override TrillSpanner.staff-padding = #5.41
                \once \override TrillSpanner.bound-details.right.padding = #-1.5
                s8.
                \stopTrillSpan \startTrillSpan |
                s8. s8. s8. \stopTrillSpan \regularTrill |
                s8. s8. s8. |
                \stemUp
                s8. s8. g16^( f) ef |
                ef16-[ d8] \relative c''' { a16\rest } ef8 \relative c''' { a16\rest } f16-[^( bf,]) |
                bf8 \relative c'' { f16\rest f8.\rest f8.\rest } |
                \relative c'' { f16\rest } b8 \relative c'' { f16\rest } c8 \relative c'' { f16\rest } d16-[^( g,]) |
                g8 \relative c'' { d16\rest d8.\rest d8.\rest } |
                \relative c'' { d16\rest } g8 \relative c'' { d16\rest } af8 \relative c'' { d16\rest } bf16-[^( ef,]) |
                \pageBreak
                \override DynamicLineSpanner.staff-padding = #5.56
                ef8-[\semprePp ef16] ef16-[ a^( d,]) d8-[ d16] |
                df16-[ g^( c,)] c8-[ c16] <af cf>16-[ <af bf f'>^( <af bf>)] |
                bf8-[ bf16] bf16-[ ef^( a,])
                % note: no slur in manuscript?
                a8-[ d16] |
                d16-[ d^( g,]) g16-[ g^( c]) c16-[ c^( f,]) |
                f16 f^( b) b b^( ef,) ef ef^( c') |
                ef16 ef^( c') c c^( b) c8^( g16) |
                g4. d'8^( g,16) |
                g4. g8. |
                g8.-[^( e' c]) |
                % Note: slur ends on second note.
                c8.-[^( b) b] |
                c8.-[^( e g)] |
                g8.-[^( f d8 c16)] |
                b8.-[^( c8. d8 g,16)] |
                % Note: the dot on this note has been manually adjusted.
                \once \override Dots.extra-offset = #'(0 . 1) g8.^~\< g8-[\!\> e16] e16-[^~\!\p e16 e16] |
                c'4. c8-[^( b16)] |
                b4. b8-[^( e16)] |
                e8.-[ e8. d8^( c16)] |
                c8.-[^( b8. c8.]) |
                d4. d8. |
                e4. f8. |
                d8.-[ d8.] d8 g16 |
                g8-[^( e16]) e8. e8-[^( c16]) |
                c8. c'8-[^( a16]) a8. |
                a8-[^( f16]) <d f>8.-[ <d f>] |
                <d f>4. f8. |
                e8.-[ g] g16-[^( f) d] |
                c8.-[^( e8 d16]) s8. |
                s4. s8. |
                s8. s8. a''8-[ f16] |
                f8. f8. f8. |
                f4. f8. |
                fs4. fs8. |
                g8. f!8. g8-[ a16] |
                a8.^~ a16 a^( g) g^( f) e |
                % Note: manuscript does indeed indicate a staccato.
                <c e>8 <e g>16 <ds fs>8 <d f>16 e f d^\staccato |
                s4. s8. |
                \stemDown
                s4. c!8-[_( g16)] |
                g4. d'8-[_( g,16)] |
                g4. g8. |
                g8.-[ e' c] |
                c-[ b] g8.~ |
                g4.~g8.~ |
                g4.~g8.~ |
                g4.~g8. |
                \relative c'' { g8.\rest g8.\rest } d8-[_( g,16)] |
                g8.-[_( g8) g'16]_~\< g8.\!\> |
                \relative c'' { g8.\rest\! b16\rest b16\rest } c,16-[_(\< cs\!\> d) g,]\! |
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

      \new Staff = "left" \with {
        \std-magnification
        \stdDynSize
        midiInstrument = "acoustic grand"
      } {
        \clef bass \relative c, {
          \two-section-one
          \override DynamicTextSpanner.font-size = #0
          <<
            \new Voice {
              \voiceOne
              \relative c, {
                % Some manual fixes to add parentheses to this fingering.
                % The fingering is only for the repeat.
                <c g'\finger \markup \concat {
                  \text \bold \fontsize #2.5 "("
                  \translate #'(0 . 2.98) \tied-finger-up #"2" #"1"
                  \text \bold \fontsize #2.5 ")"
                }>8. |
                <c g'>8.-[ <d_4 g> <b g'>] |
                <b g'>8.-[ <c_4 g'> <d_3 g>] |
                <e_2 g>8.-[ <c g'> <e_2 g>] |
                \once \override PhrasingSlur.eccentricity = #1.25
                \once \override PhrasingSlur.height-limit = #9.5
                g,8.-[_\( g'
                \once \override Slur.height-limit = #9
                g8^( f16 ] |
                <e, e'>4.)\) <e e'>8. |
                <d d'>4.
                \once \override Slur.height-limit = #9
                <f f'>8_( <fs fs'>16) |
                g'8.-[( a b8) b16]_~\finger \markup \tied-finger-up #"1" #"3" |
                b8-[ b16_(-3 c8-2 d16)]-1 |
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
                g4.~g8
                % Note: manually positioning the fingering.
                f16
                -\tweak X-offset #0.425
                -\tweak Y-offset #-8.6
                _4 |
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
                \shortestNoteDuration 16 <g,, g'>8_( <c c'>16) \shortestNoteDuration 8 \once \override Slur.height-limit = #5 <c c'>16( g'' f \stemDown e c g')_~ \stemNeutral |
                \once \override PhrasingSlur.height-limit = #4
                g16\( cs, g'~g d g~g as, g'~ |
                g16 b, g'~g c, g' e d g~ |
                g16 ds e g c, g'~g e g~ |
                \override Tie.minimum-length = #3.00
                g16 fs, g'16~g g, g'~g f, g'~ |
                g16 e, g'~g c,, e'~e c, e'~ |
                e16\) cs, e'~e d, f' fs fs, a' |
                af16^( g, g' a g, bf'~bf) b b |
                \once \override Slur.height-limit = #4
                b16^( c f, e f d) e c
                % Moving the LV tie up a bit for clarity.
                \once \override LaissezVibrerTie.Y-offset = #'0.2
                g'\laissezVibrer |
                \once \override Slur.height-limit = #4
                b16-[^( c d c b a gs a b]) |
                c16 a, e'~ |
                \once \override Slur.height-limit = #5
                e16_( gs, e'~e a, e'~ |
                e16 gs, e'~e a, e'~e gs, gs'~ |
                gs16) \sempreLegato gs a~a a b~b c d |
                ds16 c c~c a a~a g
                \once \override PhrasingSlur.height-limit = #5
                g~_\( |
                g16 g, g'~g g, g'~g g, g'~ |
                g16\) c,, c'~c c, c'~c f,, f' |
                g16 g, g'~g g, g'~g g, b' |
                s16 \stemUp g'16 g( a g) s4 |
                s16 s16 s16 |
                s16 g-[ g] a g g \stemNeutral |
                \implicitTuplets
                \tuplet 3/2 { c16-[(_\markup { \italic "dolce" } g32 fs16 g32)] } |
                g16-[ g~g g] \stemDown \tuplet 3/2 { d-[^( g,32 fs16 g32]) } |
                s4 s8 |
                s8 \stemNeutral \tuplet 3/2 { \once \override Slur.height-limit = #4.0 d'16-[( b32 d16 c32] }
                \tuplet 3/2 { f16-[ ds32 f16 e32]) } |
                g8\noBeam g,8 \tuplet 3/2 { \once \override Slur.height-limit = #3 f16-[_( e32 g16 f32] } |
                \tuplet 3/2 { e16-[ d32 f16 e32]) }
                \tuplet 3/2 { \once \override Slur.height-limit = #3 c16-[_( b32 d16 c32] }
                \tuplet 3/2 { bf16-[ a32 c16 bf32]) } |
                a16-[ a'16] d,16-[ d'16] f,16-[ fs16]~ |
                \tuplet 3/2 { fs16-[ fs32_( a16 g32]) }
                a16-[ bf16]~bf-[ b16~] |
                b16 s16 s8 |
                b16\repeatTie s16 s4 |
                \stemUp
                \tuplet 5/4 { a16-[ ds32-2 e16~-1] }
                \tuplet 5/4 { e16-[ ds32 e16~] }
                \tuplet 5/4 { e16-[ ds32 e16~] } |
                \tuplet 5/4 { e16-[ f32-2 e16~-1] }
                \tuplet 5/4 { e16-[ f32 e16~] }
                \tuplet 5/4 { e16-[ f32 e16] } |
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
                \tuplet 3/2 {
                  <g, d' f>16-[
                  \once \override PhrasingSlur.height-limit = #3.7
                  \once \override PhrasingSlur.eccentricity = #0.95
                  <g, g'>32^\(
                  <a a'>16 <b b'>32]
                }
                \tuplet 3/2 { <c! c'!>16-[\) \once \override Slur.height-limit = #4 d32^( e16 f32] }
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
                \tuplet 3/2 { <g,_~ g'^~>32.-[ <g g'>32 <g_~ g'^~>64 <g_~ g'^~>32. <g g'>32 <g_~ g'^~>64] }
                \tuplet 3/2 { <g_~ g'^~>32.-[ <g g'>32 <g_~ g'^~>64 <g_~ g'^~>32. <g g'>32 <f f'>64] }
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
                \tuplet 3/2 { d32-[ e64 f32) \once \override Slur.height-limit = #6 e64]^( }
                \tuplet 3/2 { b'32-[ c64 d32) \once \override Slur.height-limit = #3 c64]^( }
                \tuplet 3/2 { d32-[ e64 f32 e64]) } |
                \tuplet 3/2 { b,32-[_( c64 d32) b64]_( }
                \tuplet 3/2 { d32-[ e64 f32) \once \override Slur.height-limit = #6 e64]^( }
                \tuplet 3/2 { b'32-[ c64 d32) c64]^( }
                \tuplet 3/2 {
                  d32-[ b64 d32)
                  \shape #'((0.0 . -1.8) (0.0 . 0.2) (0.0 . 0.0) (0 . 0.0)) Slur
                  \once \override Slur.height-limit = #6 c64]^(
                }
                \once \override TupletBracket.transparent = ##t
                \tuplet 3/2 { b32-[ a64 gs32]) d'64\rest }
                \clef bass
                \tuplet 3/2 { gs,,,,32-[_( a64 b32 a64])_~ } |
                \omit Dots
                \tuplet 3/2 { \once \override Slur.height-limit = #6 a32-[_( c64 e32 gs64 a32 c64 e32 gs64]) }
                \tuplet 3/2 { a32.-[~ a32 <a_~ c^~ e^~>64 <a_~ c^~ e^~>32. <a c e>32 <a_~ c^~ e^~>64] }
                \once \override TupletBracket.transparent = ##t
                \tuplet 3/2 { <a_~ c^~ e^~>32.-[ <a c e>32 <a_~ c^~ e^~>64 <a_~ c^~ e^~>32. <a c e>32] <a,, a'>64 } |
                \tuplet 3/2 { \once \override Slur.height-limit = #6 gs32-[_( b64 e32 gs64 b32 e64 gs32 a64)] }
                \tuplet 3/2 { <gs_~ b^~ e^~>32.-[ <gs b e>32 <gs_~ b^~ e^~>64 <gs_~ b^~ e^~>32. <gs b e>32 <gs_~ b^~ e^~>64] }
                \tuplet 3/2 { <gs_~ b^~ e^~>32.-[ <gs b e>32 <gs_~ b^~ e^~>64 <gs_~ b^~ e^~>32. <gs b e>32 <gs b e>64] } |
                \stemDown
                \tuplet 3/2 { gs,32.~-[ gs32 gs'64 a,32.~ a32 a'64] }
                \tuplet 3/2 { b,32.~-[ b32 b'64 c,32.~ c32 c'64] }
                \tuplet 3/2 { d,32.~-[ d32 d'64 ds,32.~ ds32 ds'64] } |
                \tuplet 3/2 { e16.~-[ e32 \set stemLeftBeamCount = #4 \set stemRightBeamCount = #3 e,64 f32 e64] }
                \tuplet 3/2 { a16.~-[ a32 a,64 b32 a64] }
                \stemNeutral
                \tuplet 3/2 { \once \override Beam.damping = #+inf.0 g16._~-[ g32 \once \override Slur.height-limit = #6 \set stemLeftBeamCount = #4 \set stemRightBeamCount = #3 g,64_( af32 g64]_~ } |
                \tuplet 3/2 { g32-[ b64 d32 g64 b32 d64 fs32 g64]) }
                \override Tie.minimum-length = #2.65
                \tuplet 3/2 { <g,_~ b^~ d^~ f^~>32.-[ <g b d f>32 <g_~ b^~ d^~ f^~>64 <g_~ b^~ d^~ f^~>32. <g b d f>32 <g_~ b^~ d^~ f^~>64] }
                \tuplet 3/2 { <g_~ b^~ d^~ f^~>32.-[ <g b d f>32 <g_~ b^~ d^~ f^~>64 <g_~ b^~ d^~ f^~>32. <g b d f>32 <g b d f>64] } |
                \tuplet 3/2 { \once \override Slur.height-limit = #6 c,32-[_( e64 g32 b64 c32 e64 g32 b64)] }
                \once \override TupletBracket.transparent = ##t
                \override Beam.auto-knee-gap = #1
                % Ignore the warning about the beam slope.
                #(ly:expect-warning "no viable")
                \tuplet 3/2 { \once \override Slur.height-limit = #6 c32-[^( f64 e32 d64] c32-[) \once \override Slur.height-limit = #4 c,,64_( d32 e64] f32-[) \once \override Slur.height-limit = #4 g'64_( f32 e64] d32-[) \once \override Slur.height-limit = #4 d,64_( e32 f64] }
                \revert Beam.auto-knee-gap |
                \once \override TupletBracket.transparent = ##t
                \tuplet 3/2 { g16.) g'32-[ fs64 g32 a64] b16.~ b32-[ c64 d32 e64] f!32-[ e64 d32 c64] b32-[ c64 b32 g64] } |
                \once \override TupletBracket.transparent = ##t
                \tuplet 3/2 { b32-[ b64~ b32 b64~] b32-[ b64( c32 b64)] \once \override Slur.height-limit = #3 c32-[( b64 c32 d64 e32 d64 e32 c64]) \stemNeutral d,32.\rest d32\rest e,64~ e32.-[ e32 e64] } |
                \once \override TupletBracket.transparent = ##t
                \tuplet 3/2 { b''32-[ b64~ b32 b64~] b32-[ b64( c32 b64] c32-[) \once \override Slur.height-limit = #6 a,64^( g32 f64] e32-[ f64 e32 d64]) }
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
                \pageBreak
                \explicitTuplets
                \stemDown
                \override TupletBracket.bracket-visibility = #'if-no-beam
                \override TupletBracket.direction = #-1
                \tuplet 3/2 { b32-[ c d }
                \tuplet 3/2 { e f g }
                \tuplet 3/2 { a b c] }
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
                \override TextScript.staff-padding = #2.4
                <e bf'>-.-[_\markup { \italic "sempre staccato" } <e g>-. <e bf'>-.]
                \revert TextScript.staff-padding
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
                \relative c {
                  d8.\rest
                  % Move the forte dynamic closer to the next notes.
                  \once \override DynamicText.self-alignment-X = #-3.3
                  d8.\rest \f
                }
                <c, c,>8_( <g g,>16) |
                <g g,>4. \clef treble c''8^( b16) |
                b4. c8^( b16) |
                b8.-[ b8. b8.] |
                b8.-[ bf8.] \clef bass <f, f,>8_( <bf, bf,>16) |
                <bf bf,>4. \clef treble f''8_( bf,16) |
                \trillSpanUp
                % Ensure the trill ends clearly over the note.
                \once \override TrillSpanner.bound-details.right.padding = #-1.5
                f'4.^~ \startTrillSpan f8.^~ |
                f4.^~ f8.^~ |
                f8. \stopTrillSpan
                \relative c'' { b8.\rest b8.\rest } |
                \relative c'' { b8.\rest b8.\rest b8.\rest } \clef bass |
                \two-section-four-ef
                \relative c { d8.\rest d8.\rest } bf,,,8._~\sf\> |
                bf4._~ bf8_( af16)\!\p |
                \once \override PhrasingSlur.height-limit = #6
                g4._\( gf8. |
                f8._~ f8-[ g!16 af8 a16]\) |
                bf8 \relative c { d16\rest d8.\rest d8.\rest } |
                \relative c { d16\rest } <ef ef'>8 \relative c { d16\rest } <f f'>8 \relative c { d16\rest } <g g'>16_( <c, c'>) |
                <b b'>8 \relative c { d16\rest d8.\rest d8.\rest } |
                \relative c { d16\rest } <c c'>8 \relative c { d16\rest } <df df'>8 \relative c { d16\rest } <ef ef'>16_( <af, af'>) |
                <g g'>8 \relative c { d16\rest d8.\rest d8.\rest } |
                \relative c { d16\rest } <af' af'>8 \relative c { d16\rest } <fs fs'>8 \relative c { d16\rest } <g g'>8 \clef treble |
                \relative c'' { b16\rest } e'''8 \relative c'' { b16\rest } f8 \relative c'' { b16\rest } d8 \clef bass |
                \relative c { d16\rest } <ef,,, ef'>8 \relative c { d16\rest } <c c'>8 \relative c { d16\rest } <d d'>16_(-[ <c c'>)] |
                <b b'>16\noBeam \clef treble \stemNeutral b'''8 \relative c'' { b16\rest } c8 \relative c'' { b16\rest } a8 \clef bass |
                \relative c { d16\rest } <bf,,, bf'>8 \relative c { d16\rest } <g g'>8
                \explicitTuplets
                \tupletUp
                \tuplet 3/2 { af32-[ af' af, } \tuplet 3/2 { af' af, af' } \tuplet 3/2 { af, af' af,] } |
                \implicitTuplets
                \tuplet 3/2 { \repeat unfold 4 { fs' fs, } fs' }
                \tuplet 3/2 { \repeat unfold 4 { g, g' } g, }
                \stemUp
                \two-section-five
                \tuplet 3/2 { g'32-[ c, e g c e c e g] } |
                \stemNeutral \tuplet 3/2 { c,32 e g b, d g c, e g }
                \tuplet 3/2 { d32 f g c, e g d f g }
                \tuplet 3/2 { b, d g a, c g' b, d g } |
                \tuplet 3/2 { b, d g c, e g b, d g }
                \tuplet 3/2 { c, e g d f g c, e g }
                \tuplet 3/2 { d f g cs, e g d f g } |
                \tuplet 3/2 { e g e g e g e g e }
                \tuplet 3/2 { c g' c, g' c, g' c, g' c, } 
                \tuplet 3/2 { e g e g d g c, g' c, } |
                \tuplet 3/2 { g fs' g fs, fs' g g, fs' g }
                \tuplet 3/2 { g, fs' g fs, fs' g g, fs' g }
                \tuplet 3/2 { g, fs' g fs, fs' g f, fs'! g } |
                \tuplet 3/2 { e, c' g' ds, c' g' e, c' g' }
                \tuplet 3/2 { c, e g b, d g c, e g }
                \tuplet 3/2 { bf, d g a, e' g bf, d g } |
                \tuplet 3/2 { a, e' g a g e a, e' g }
                \tuplet 3/2 { a, d f a f d a d f }
                \stemDown
                \tuplet 3/2 { a, d f a, d f af, d fs } |
                \tuplet 3/2 { g, d' g g, d' g g, d' g }
                \tuplet 3/2 { g, d' a' g, d' a' g, d' a' }
                \tuplet 3/2 { g, g' b a, g' c b, g' d' } |
                \tuplet 3/2 { b, g' b c, e g d f g }
                \tuplet 3/2 { d f g c, e g b, e gs }
                \tuplet 3/2 { b, e gs a, e' a gs, e' gs } |
                \tuplet 3/2 { a, e' a gs, e' gs a, e' a }
                \tuplet 3/2 { a, e' a gs, e' gs a, e' a }
                \tuplet 3/2 { a, e' a a, e' a gs, e' b' } |
                \tuplet 3/2 { gs, e' b' a, e' b' gs, e' b' }
                \tuplet 3/2 { gs, e' b' a, e' b' gs, e' b' }
                \tuplet 3/2 { gs, e' b' a, e' b' gs, e' b' } |
                \tuplet 3/2 { gs, e' b' a, e' b' gs, e' b' }
                \tuplet 3/2 { a, e' c' b, e c' a, e' c' }
                \stemNeutral
                \tuplet 3/2 { f,, f' f, f' f, f' ds, ds' ds, } |
                \tuplet 3/2 { e ds' e ds, ds' e e, ds' e }
                \tuplet 3/2 { e, ds' e ds, ds' e e, ds' e }
                \tuplet 3/2 { a,, gs' a gs, gs' a a, gs' a } |
                \tuplet 3/2 { g, fs' g fs, fs' g g, fs' g }
                \tuplet 3/2 { g, fs' g fs, fs' g g, fs' g }
                \tuplet 3/2 { g, fs' g fs, fs' g g, fs' g } |
                \tuplet 3/2 { g, c g' fs, c' fs g, c g' }
                \tuplet 3/2 { g, c g' fs, c' fs g, c g' }
                \tuplet 3/2 { f, c' f f, c' f f, c' f } |
                \tuplet 3/2 { g, c d g c d g d c }
                \tuplet 3/2 { g c d g d c g g' c }
                \tuplet 3/2 { g, g' b a, g' c b, g' d' } |
                \tuplet 3/2 { b, g' b g, g' d' c, g' c }
                \tuplet 3/2 { c, g' c b, g' b c, g' c }
                \tuplet 3/2 { gs, e' gs e, e' b' a, e' a } |
                \tuplet 3/2 { a, e' a gs, e' gs a, e' a }
                \tuplet 3/2 { e, c' e c, c' g' f, c' f }
                \tuplet 3/2 { f, c' f e, a e' d, a' d } |
                \tuplet 3/2 { cs, a' cs a, a' e' d, a' d }
                \tuplet 3/2 { d, a' d cs, a' cs d, a' d }
                \tuplet 3/2 { c, f c' b, f' b c, f c' } |
                \tuplet 3/2 { b, g' b as, g' as b, g' b }
                \tuplet 3/2 { b, g' b as, g' as b, g' b }
                \tuplet 3/2 { g, fs' g a, g' a b, g' b } |
                \tuplet 3/2 { c, g' c b, g' b c, g' c }
                \tuplet 3/2 { c, b' c d, c' d e, c' e }
                \tuplet 3/2 { f, c' f f, c' f fs, c' fs } |
                \tuplet 3/2 { g, c g' g, b g' g, c g' }
                \tuplet 3/2 { g, b g' g, c g' g, b g' }
                \stemDown
                <g g'>8-[^( <e e'>16]) |
                <e e'>8. <e e'>8-[^( <c c'>16]) <c c'>8. |
                <c c'>8-[^( <a a'>16]) <a a'>8.
                \stemNeutral
                \tuplet 3/2 { cs32 a' cs a, a' e' d, a' d } |
                \tuplet 3/2 { d, a' d cs, a' cs d, a' d }
                \tuplet 3/2 { d, a' d cs, a' cs d, a' d }
                \tuplet 3/2 { c, f c' b, f' b c, f c' } |
                \tuplet 3/2 { b, g' b as, g' as b, g' b }
                \tuplet 3/2 { b, g' b as, g' as b, g' b }
                \tuplet 3/2 { b, g' b as, g' as b, g' b } |
                \tuplet 3/2 { a, d a' gs, d' gs a, d a' }
                \tuplet 3/2 { a, d a' gs, d' gs a, d a' }
                \tuplet 3/2 { a, d a' gs, d' gs a, d a' } |
                \stemDown
                \tuplet 3/2 { g, c g' g, b g' g, c g' }
                \tuplet 3/2 { g, d' g g, cs g' g, d' g }
                \tuplet 3/2 { g, e' g g, e' g g, f' g } |
                \tuplet 3/2 { g, f' g g, e' g g, f' g }
                \tuplet 3/2 { g, f' g g, f' g g, e' g }
                \tuplet 3/2 { g, e' g g, d' g g, c g' } |
                \stemDown
                \tuplet 3/2 { g, c g' g, b g' g, c g' }
                \tuplet 3/2 { g, a g' g, a g' g, b g' }
                \tuplet 3/2 { g, cs g' g, d' g }
                g,64 b d f |
                g b d f
                \relative c { d16\rest d16\rest d8.\rest d8.\rest } |
                \relative c { d8.\rest d8.\rest }
                \clef treble
                \stemNeutral
                \tuplet 3/2 { e'32 c e c e c e c e } |
                \tuplet 3/2 { \repeat unfold 4 { c e } c }
                \tuplet 3/2 { \repeat unfold 3 { e cs } f d f }
                \tuplet 3/2 { \repeat unfold 4 { b, f' } b, } |
                \tuplet 3/2 { \repeat unfold 4 { f' b, } f' }
                \tuplet 3/2 { c! e c e c e cs e cs }
                \tuplet 3/2 { f d f ds fs ds e ds e } |
                \stemUp
                \tuplet 3/2 { \repeat unfold 4 { e, e' } e, }
                \tuplet 3/2 { \repeat unfold 4 { c' c, } c' }
                \tuplet 3/2 { \repeat unfold 4 { e, e' } e, } |
                \tuplet 3/2 { \repeat unfold 4 { e' g, } e' }
                \tuplet 3/2 { \repeat unfold 4 { g, d' } g, }
                \tuplet 3/2 { \repeat unfold 4 { d' f, } d' } |
                \tuplet 3/2 { e, \repeat unfold 4 { g e } }
                \tuplet 3/2 { \repeat unfold 4 { c e } c }
                \tuplet 3/2 { \repeat unfold 4 { bf c } bf } |
                \tuplet 3/2 { \repeat unfold 4 { a c } a }
                \tuplet 3/2 { c a c b! d b d b d }
                \tuplet 3/2 { b f' b, f' b, f' e c e } |
                \tuplet 3/2 { d f d g e g d f d }
                \tuplet 3/2 { c e c f d f c e c }
                \tuplet 3/2 { b d b c a c b d b }
                \clef bass |
                \stemDown
                \tuplet 3/2 { \relative c { c } \repeat unfold 4 { e c } }
                \tuplet 3/2 { \relative c { c } \repeat unfold 4 { e c } }
                \tuplet 3/2 { \relative c { c } \repeat unfold 4 { f c } } |
                \tuplet 3/2 { \relative c { c } \repeat unfold 4 { e c } }
                \tuplet 3/2 { c, \repeat unfold 4 { e c } }
                \stemUp
                \tuplet 3/2 { \relative c, { c } \repeat unfold 4 { f c } } |
                \tuplet 3/2 { \relative c, { c } \repeat unfold 4 { e c } }
                \tuplet 3/2 { \relative c, { c } \repeat unfold 4 { e c } }
                \tuplet 3/2 { \relative c, { c } \repeat unfold 4 { f c } } \clef treble |
                \relative c'' { b8.\rest }
                \stemNeutral
                \tuplet 3/2 { g'''32 a g fs g a b c d }
                \tuplet 3/2 { b c b as b c d e cs } |
                \tuplet 3/2 { d e d c! d c b c b }
                \tuplet 3/2 { a! b a g a g a b a }
                \tuplet 3/2 { b c b c d e f e d } |
                \tuplet 3/2 { e d c b a g f e d }
                \tuplet 3/2 { e d c b a g f e d }
                \clef bass
                \tuplet 3/2 { e d c b a g f e d } |
                \relative c { d8.\rest }
                c,8-[_(^\sf g16)] g8._~ |
                g8._~g16-[ <g g'>16_( <c c'>)] \relative c { d16\rest } <a' a'>16-[^( <c c'>16)] |
                \relative c { d16\rest }
                <g, g'>16-[_( <c c'>)]
                \stemDown
                <c c'>8
                \relative c { d16\rest }
                \bar "|."
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
                \once \override Slur.eccentricity = #1.65
                \once \override Slur.height-limit = #5.0
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
                \tuplet 5/4 { a16-[-4~ a gs32-3] }
                \tuplet 5/4 { a16-[~ a gs32] }
                \tuplet 5/4 { a16-[~ a gs32] } |
                \tuplet 5/4 { gs16-[~-5 gs a32-4] }
                \tuplet 5/4 { gs16-[~ gs a32] }
                \tuplet 5/4 { gs16-[~ gs gs32]~ } |
                \stemUp
                \omit Dots
                \tuplet 3/2 { gs16-[ <gs,! gs'!>32\( <a_~ a'^~>16.] }
                \tuplet 3/2 { <a a'>16-[\) \once \override PhrasingSlur.height-limit = #4 <a a'>32\( <b b'>16.]( }
                \tuplet 3/2 { <c c'>16-[) <d d'>32 <ds ds'>16 <e e'>32\)] }
                \undo \omit Dots | 
                \tuplet 3/2 { <e e'>16-[ <e_~ e'^~>32 <e e'>16 <e_~ e'^~>32] }
                \tuplet 3/2 { <e e'>16-[ <a,_~ a'^~>32 <a a'>16 <a_~ a'^~>32] }
                \tuplet 3/2 { <a a'>16-[ <g!_~ g'!^~>32 <g g'>16 <g g'>32] } |
                <g g'>16\noBeam \stemDown g''16~ g8~ g16-[~ g16] |
                g16-[ c16]~ c16-[ c16]~ c16-[ f,16] |
                \tuplet 3/2 { fs16-[ a32 fs16 g32]~ }
                g16-[ g16]~
                \tuplet 3/2 { g16-[ s32 g16 g32] } |
                s8 s8 s8 |
                s8 s8 |
                s8 |
                s8 s8 s8 |
                s8 s8 s8 |
                s8 s8 s8 |
                s8 s8 s8 |
                s8 s8 s8 |
                s8 s8 s8 |
                s8 s8 s8 |
                s8 s8 |
                s8 s8 s8 |
                s8 s8 s8 |
                s8 s8 s8 |
                s8 s8 s8 |
                s8 s8 s8 |
                s8 s8 s8 |
                s8 s8 s8 |
                s8 s8 s8 |
                s8 s8 s8 |
                s4 s8. |
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
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                bf8.-[ bf8. bf8.] |
                bf8. s4. |
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
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8. |
                s4. s8.
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