\version "2.12.02"

\header {
  title = "Hollywood"
  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 14)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)

global = {
  \tempo 4=130
  \key c \major
  \time 4/4

}

rhythmMarkStaffReduce = #-3
rhythmMarkLabelFontSize = #-2

rhythmMark = #(define-music-function (parser location label musicI musicII ) (string? ly:music? ly:music?)
   #{
      \mark \markup {
        \line \vcenter {
          \combine                     % 1st column in line
            \italic \fontsize #rhythmMarkLabelFontSize $label
            \transparent \italic \fontsize #rhythmMarkLabelFontSize f
                % This fakes a uniform baseline (ie. create common anchor for vcenter)

          \score {                     % 2nd column in line
            \new Staff \with {
              fontSize = #rhythmMarkStaffReduce
              \override StaffSymbol #'staff-space = #(magstep rhythmMarkStaffReduce)
              \override StaffSymbol #'line-count = #0
              \override VerticalAxisGroup #'Y-extent = #'(0 . 0)  % td
              \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0) %RV
            }

            \relative { \stemUp $musicI }

            \layout {
              ragged-right= ##t
              indent = 0
              \context {
                \Staff
                \remove "Clef_engraver"
                \remove "Time_signature_engraver" }
            } % layout

          } % 1st Score end

          \hspace #-0.1                % 3rd column in line

                                       % 4th column in line
          \italic \fontsize #rhythmMarkStaffReduce "="

          \score {                     % 5th column in line

            \new Staff \with {
              fontSize = #rhythmMarkStaffReduce
              \override StaffSymbol #'staff-space = #(magstep rhythmMarkStaffReduce)
              \override StaffSymbol #'line-count = #0
              \override VerticalAxisGroup #'Y-extent = #'(0 . 0)  % td
              \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0) %RV
            }

            \relative { \stemUp $musicII }

            \layout {
              ragged-right= ##t
              indent = 0
              \context {
                \Staff
                \remove "Clef_engraver"
                \remove "Time_signature_engraver" }
            } % layout end

          } % 2nd Score end

        } % line end
      } % markup end
   #})


rhyMarkDottedEighths = {
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4) % tight
  \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 3 16) % even
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8) % loose
  { b'8. b16 }
}

rhyMarkIIEighths = {
  % \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 4) % tight
  \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 3 16) % even
  b'8[ b8]
}


melody = \relative c'' {
\global
\rhythmMark #"Shuffle" \rhyMarkIIEighths \rhyMarkDottedEighths

\partial 4 a8
 a(
\bar "|:"
g4) r2.
r8 a a g a g e c
e dis~ dis d~ d4 r
r4 a'8 g a g e d~

d4 r2.
r4 a'8 g a g e dis
e4 g r c,
e8 dis( d) g,~ g r a'8 a(


g4) r2.
r8 a a g a g e c
e dis( e) a,~ a4 r
r4 a'8 g a g e d~

d4 r2.
r4 a'8 g a g e dis
e4 g g c,
e8 dis( d) g,~ g4 r

%%%%%%%%%%%%
r4 a' a a
r a a a
r a a a
a a a a

a a a a
a a8 a~ a4 r
a g g c,
e8 d~ d g,~ g r a' g~ \bar ":|"
}

secondVoice = \relative c' {
\global
}

text = \lyricmode {
To -- day __
I know for cer -- tain I am on my way
and I know it's all good
cause I hap -- pen to have just moved to Hol -- ly -- wood

to -- night
I got the fee -- ling it -- 'll be all -- right
cause it's well un -- der -- stood
that the o -- ri -- gin of dreams is here in Hol -- ly -- wod

don't call us, we'll call you
we own this place and you're new
we've got ways to make you known
just keep wai -- ting on your phone

to -- day
}

textZwei = \lyricmode {

}

textDrei = \lyricmode {


}

harmonies = \chordmode {
\global
\germanChords
\partial 4 r4
c1*2:6 d1*2:7.9 g1*2:7 c1 g2:6 es4:6/bes g:7/b
c1*2:6 d1*2:7.9 g1*2:7 c1 g2:6 es4:6/bes g:7/b

d1*2:m7 c1*2:6
d1*2:m7 c1 g:7
}

sl = {
  \override NoteHead #'style = #'slash
  \override Stem #'transparent = ##t
}
nsl = {
  \revert NoteHead #'style
  \revert Stem #'transparent
}
crOn = \override NoteHead #'style = #'cross
crOff = \revert NoteHead #'style

%% insert chord name style stuff here.

jazzChords = { }

%%%%%%%%%%%% Keys'n'thangs %%%%%%%%%%%%%%%%%


% ############ Horns ############

% ------ Alto Saxophone ------
alto =  \relative c'' {
  \partial 4 r4
  r4 g r c
  r8 g a4 c a
  r4 a r a
  r8 a c4 d e
  r4 d r d
  r f e d
  r c2 r4
  b8 a( g) b~ b4 r

  r4 g r c
  r8 g a4 c a
  r4 a r a
  r8 a c4 d e
  r4 d r d
  r f e d
  r c2 r4
  b8 a( g) b~ b4 r


  a1
  \grace gis8 a1
  r4 a r a 
  r a b c
  r a r a
  r a b c
  e4 r2.
  r8 d r4 b d
}

altoSax = {
  \global
  \set Staff.instrumentName = #"Altsax"
  \clef treble
  <<
    \alto
  >>
}

% ------ Tenor Saxophone ------
tenor =  \relative c' {
  \partial 4 r4
  r4 e4 r e
  r8 e g4 e g
  r4 fis r fis
  r8 e fis4 e d
  r4 b r b
  r4 b c d
  r g2 r4
  g8 fis( f) d~ d4 r

  r4 e4 r e
  r8 e g4 e g
  r4 fis r fis
  r8 e fis4 e d
  r4 b r b
  r4 b c d
  r g2 r4
  g8 fis( f) d~ d4 r


  f1
  \grace e8 f1
  r4 e r e
  r e d c
  r f r f
  r f g a
  g4 r2.
  r8 g r4 f f
}

tenorSax = {
  \global
  \set Staff.instrumentName = #"Tenorsax"
  \clef treble
  <<
    \tenor
  >>
}

% ------ Trombone ------
tbone = \relative c {
  \partial 4 r4
  r4 c r g'
  r8 c8 a4 g e
  r4 d r a'
  r8 c a4 fis e
  r4 d r g 
  r4 g, a b
  r4 e2 r4
  e8 dis( d) g~ g4 r

  r4 c, r g'
  r8 c8 a4 g e
  r4 d r a'
  r8 c a4 fis e
  r4 d r g 
  r4 g, a b
  r4 e2 r4
  e8 dis( d) g~ g4 r

  
  d1
  \grace cis8 d1
  c4 r g r
  c g' f e
  d r a r
  d r a r
  c4 r2.
  g4 f e d
}

trombone = {
  \global
  \set Staff.instrumentName = #"Posaune"
  \clef bass
  <<
    \tbone
  >>
}

% ############ Rhythm Section #############

% ------ Guitar ------
gtr = \relative c'' {
  \global
  \partial 4 r4
  
  \sl
  r4 c r c
  r8 c r4 c c
  r4 c r c
  r8 c r4 c c
  r4 c r c
  r c c c
  r c2 r4
  r8 c r4 \times 2/3 {c8 c c} \times 2/3 {c c c}

  r4 c r c
  r8 c r4 c c
  r4 c r c
  r8 c r4 c c
  r4 c r c
  r c c c
  r c2 r4
  r8 c r4 \times 2/3 {c8 c c} \times 2/3 {c c c}


  c1
  c1
  r4 c r c
  r c r c
  r c r c
  r c r c
  c r2.
  \times 2/3 {c8 c c} \times 2/3 {c8 c c} \times 2/3 {c8 c c} \times 2/3 {c8 c c}
  \nsl

}
gtrHarmony = \chordmode {
  \jazzChords
 
}
guitar = {
  \global
  \set Staff.instrumentName = #"Gitarre"
  \clef treble
  <<
    \gtr
  >>
}

%% ------ Piano ------
rh = \relative c'' {
  \partial 4 r4
  r4 <g a c e> r <g a c e>
  r8 <g a c e> r4 <g a c e> <g a cis e>
  r4 <fis a c e> r <fis a c e>
  r8 <fis a c e> r4 <fis a c e> <fis a c e> 
  r4 <g b d f> r <g b d f>
  r4 <g b d f> <g b d e> <f b d>
  r4 <e g c>2 r4
  r8 <g b d e>~  <g b d e> a16 g  <g b c es>8 <f b d>~ <f b d>4

  r4 <g a c e> r <g a c e>
  r8 <g a c e> r4 <g a c e> <g a cis e>
  r4 <fis a c e> r <fis a c e>
  r8 <fis a c e> r4 <fis a c e> <fis a c e> 
  r4 <g b d f> r <g b d f>
  r4 <g b d f> <g b d e> <f b d>
  r4 <e g c>2 r4
  r8 <g b d e>~  <g b d e> a16 g  <g b c es>8 <f b d>~ <f b d>4


  r1
  r1
  r8 c' a g a g e g
  e c a g a c a g
  r4 <a' c d f> r <a c d f>
  <a c d f> <c d g> \times 2/3 {<c d f a>8  g' f } \times 2/3 {e d c}
  <c, e g a c>4 r2.
  r8 <d f g b> r4 g'2-\bendAfter #-16

}

lh = \relative c {
  \clef bass
  \partial 4 r4
  c4 r g r
  c g e cis
  d r a' r
  d e d a
  g r d' r
  g f e d
  r c2 r4
  g a bes b

  c4 r g r
  c g e cis
  d r a' r
  d e d a
  g r d' r
  g f e d
  r c2 r4
  g a bes b


  r1
  r1
  c4 r g r
  c r g' r
  d r a r
  d r a r
  c r2.
  g4 f e d
}

piano = {
  <<
    \set PianoStaff.instrumentName = #"Piano"
    \new Staff = "rh" << \global \rh >>
    \new Staff = "lh" << \global \lh >>
  >>
}

% ------ Bass Guitar ------
Bass = \relative c {
  \partial 4 r4
  c r g r
  e' r c cis
  d r a r
  d r a d
  g, r d' r
  g, r a b
  r c2 r4
  g'8 g f4 es8 c \times 2/3 {g a b}

  c4 r g r
  e' r c cis
  d r a r
  d r a d
  g, r d' r
  g, r a b
  r c2 r4
  g'8 g f4 es8 c \times 2/3 {g a b}

  d'1
  d\glissando
  c,4 r g r
  c r g r
  d' r a r
  d r a r
  g r2.
  g4 g a b
}
bass = {
  \global
  \set Staff.instrumentName = #"Bass"
  \clef bass
  <<
    \Bass
  >>
}

% ------ Drums ------
up = \drummode {
  \voiceOne
  \partial 4 r4
  hh4 <hh sn>8 hh hh4 <hho sn>
  hh4 <hh sn> hh <hh sn>8 sn
  hh4 <hh sn>8 hh hh4 <hho sn>
  hh4 <hh sn> hh <hh sn>8 sn

  hh4 <hh sn>8 hh hh4 <hho sn>
  hh4 <hh sn> hh <hh sn>8 sn
  r4 <cymc sn> hh4 <hho sn>
  hh4 <hh sn>8 hh \times 2/3 {s8 sn s} \times 2/3 {sn sn sn}

  hh4 <hh sn>8 hh hh4 <hho sn>
  hh4 <hh sn> hh <hh sn>8 sn
  hh4 <hh sn>8 hh hh4 <hho sn>
  hh4 <hh sn> hh <hh sn>8 sn

  hh4 <hh sn>8 hh hh4 <hho sn>
  hh4 <hh sn> hh <hh sn>8 sn
  r4 <cymc sn> hh4 <hho sn>
  hh4 <hh sn>8 hh \times 2/3 {s8 sn s} \times 2/3 {sn sn sn}

  r1
  r2. sn4
  cymr4 <cymr sn> cymr <cymr sn>
  cymr4 <cymr sn> cymr <cymr sn>8 sn
  cymr4 <cymr sn> cymr <cymr sn>
  cymr4 <cymr sn> cymr <cymr sn>
  <cymc sn>4 r2.
  \times 2/3 {r8 sn r} \times 2/3 {sn sn sn} \times 2/3 {sn sn sn} \times 2/3 {sn sn sn}
}
down = \drummode {
  \voiceTwo
  \partial 4 r4
  bd4 s bd s
  bd4 s bd s
  bd4 s bd s
  bd4 s bd s

  bd4 s bd s
  bd4 s bd s
  s bd4 s2
  bd4 s \times 2/3 { bd8 s bd} s4

  bd4 s bd s
  bd4 s bd s
  bd4 s bd s
  bd4 s bd s

  bd4 s bd s
  bd4 s bd s
  s bd4 s2
  bd4 s \times 2/3 { bd8 s bd} s4


  bd4 s2.
  bd4 s2.
  bd4 s bd s
  bd s bd s
  bd s bd s
  bd s bd s
  bd s2.
  \times 2/3 {bd8 r bd} \times 2/3 {r bd r} bd4 s
}

drumContents = {
  \global
  <<
    \set DrumStaff.instrumentName = #"Drums"
    \new DrumVoice \up
    \new DrumVoice \down
  >>
}

%%%%%%%%% It All Goes Together Here %%%%%%%%%%%%%%%%%%%%%%

\score {
  <<
    \new StaffGroup = "gesang" <<
      \new Staff = "melody" <<
	\new Voice = "sabine" { << \transpose c es \melody >> }
      >>
      \new Lyrics \lyricsto "sabine" \text    
      \new Staff = "second" <<
	\new Voice = "Afi" { \voiceOne << \transpose c es \secondVoice >> }
	\new Voice = "Jochen" { \voiceTwo << \transpose c es \secondVoice >> }
      >>

    >>
    \new StaffGroup = "horns" <<
      \new Staff = "altosax" \transpose c c \altoSax
      \new Staff = "barisax" \transpose c f \tenorSax
      \new Staff = "trombone"  \transpose c es  \trombone
    >>
    
    \new StaffGroup = "rhythm" <<
      \new ChordNames = "chords" \transpose c es \harmonies
      \new Staff = "guitar" \transpose c es \guitar
      \new PianoStaff = "piano"  \transpose c es \piano
      \new Staff =    "bass" \transpose c es \bass
      \new DrumStaff \drumContents
    >>
  >>
  
  \layout {
    \context { \RemoveEmptyStaffContext }
    \context {
      \Score
      \override BarNumber #'padding = #3
      \override RehearsalMark #'padding = #2
      skipBars = ##t
    }
  }
}

\score {
  <<
    \new StaffGroup = "gesang" <<
      \new Staff = "melody" <<
	\new Voice = "sabine" { << \transpose c es \melody >> }
      >>
      \new Lyrics \lyricsto "sabine" \text    
      \new Staff = "second" <<
	\new Voice = "Afi" { \voiceOne << \transpose c es \secondVoice >> }
	\new Voice = "Jochen" { \voiceTwo << \transpose c es \secondVoice >> }
      >>

    >>
    \new StaffGroup = "horns" <<
      \new Staff = "altosax" \transpose c es \altoSax
      \new Staff = "barisax" \transpose c es \tenorSax
      \new Staff = "trombone" \transpose c es  \trombone
    >>
    
    \new StaffGroup = "rhythm" <<
      %\new ChordNames = "chords" \transpose c es \harmonies
      %\new Staff = "guitar" \transpose c es \guitar
      \new PianoStaff = "piano" \transpose c es \piano
      \new Staff = "bass" \transpose c es \bass
      \new DrumStaff \drumContents
    >>
  >>
  
  \midi { }
}  