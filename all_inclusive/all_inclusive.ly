\version "2.12.02"

\header {
  title = "All Inclusive"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 20)
#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)

global = {
  \tempo 4=100
  \clef treble
  \key f \major
  \time 4/4
}

trompeteEins = \relative c'' {
gis8 a r f r d r a
fis' g r e r4 f8 g
gis8 a r f r d r a
fis' g r e r4 f8 g

a r2..
r2 r8 a16 gis a gis a8
f d r2.
r2 r8 a'16 gis a gis a8

f d r2.
R1*3

bes1
a
gis
r8 a'16 a a8 r r8 a16 a a8 r
a bes c bes a4 g

f8 r r2 f8 f
r d r d r d r d
r e r e r e r e
r f r f r f r f

f8 r r2 f8 f
r d r d r d r d
r e r e r e r e
r f r f r f r f

d2 d
cis4 cis d r
}

trompeteZwei = \relative c' {
d8 f r d r d r a
b e r cis r4 d8 cis
d8 f r d r d r a
b e r cis r4 d8 cis

d r2..
r2 r8 a16 gis a gis a8
f d r2.
r2 r8 a'16 gis a gis a8

f d r2.
R1*3

d1
d
e
a4. bes8 a4. bes8
a bes c bes a4 c

a8 r r2 a8 a
r8 bes r bes r bes r bes
r8 bes r bes r bes r bes
r a r a r a r a

a8 r r2 a8 a
r8 bes r bes r bes r bes
r8 bes r bes r bes r bes
r a r a r a r a

bes2 bes
a4 a d, r
}

melodie = \relative c'' {
R1*4

r8 a a a a a a a
g g a16 g~ g e~ e4 r
r8 a a a a a a a
g g a16 g~ g e~ e4 r

r8 d' d d d d d d
d d a16 g~ g a r8 a a g
a a a a a a16 a~ a8 a
g g f e16 d16 r8 d e f

g g g g g g a g16 f~
f8 f f16 f~ f f~ f8 f e d
e e e e e f gis16 f~ f e~
e2 r
r1

c4 d16 e~ e f~ f4 g8 a
a bes16 bes~ bes2 r4
a8 bes bes16 a~ a bes~ bes4 r
gis8 a a16 bes~ bes a~ a4 r

c,8 c d16 e~ e f~ f8 f g8 a
a bes16 bes~ bes2 r4
a8 bes bes16 a~ a bes~ bes8 r bes c
bes8 a a16 bes~ bes a~ a4 a16 a~ a bes~

bes8 a g f bes a g f
a4 a d, r

\bar ":|"
}

text = \lyricmode {
\set stanza = #"1."
Im Um -- schlag steckt der hand -- ge -- tun -- te Le -- bens -- lauf,
Be -- wer -- bungs -- schrei -- ben und ein Pass -- fo -- to da -- rauf
die Post ver -- brei -- tet all die Lü -- gen, die du schriebst,
vier Wo -- chen spä -- ter hast du ein Bü -- ro bei Sie -- mens im Ver -- trieb

und schon im Früh -- jahr buchst du ei -- nen Club -- ur -- laub
für Mit -- te Ju -- li, weil du's brauchst, sagst du,
der Stress und ü -- ber -- haupt

Wann wur -- dest du zum Pau -- schal -- tou -- rist
sag mir wann das war
sag mir wie das ist
stand das im -- mer schon in dei -- nem Le -- bens -- plan
ging das ganz be -- wußt, o -- der
fing das schlei -- chend an

bit -- te sags mir, da -- mit ich mich da -- vor hü -- ten kann
}

textZwei = \lyricmode {
\set stanza = #"2."

}

textDrei = \lyricmode {
\set stanza = #"3."
Noch vor zwei Jahrn bist du per An -- hal -- ter ge -- reist
warst im -- mer Plei -- te, a -- ber hat -- test mäch -- tig Zeit
du warst bei je -- dem Scheiss da -- bei, _ a -- ber nun
seit _ du schaffst hat eigent -- lich kei -- ner mehr mit dir et -- was zu tun

ist auch e -- gal, denn du
}

harmonies = \chordmode {
\germanChords
d1:m e2:m7 a:7 
d1:m e2:m7 a:7 

d1:m e2:m7 a:7 
d1:m e2:m7 a:7 

d1:m e2:m7 a:7 
d1:m a2:7 d:m

g1:m d:m
e:7
a4. bes8 a4. bes8 a bes c bes a4 c

f2. d4:m g1:m7
c:7 f
f2. d4:m g1:m7
c:7 f

bes a2:7 d4:m a:7
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff = geblaese <<
      \new Voice = trompeteEins {\voiceOne << \transpose c d{ \global \trompeteEins }  >> }
      \new Voice = trompeteZwei {\voiceTwo << \transpose c d { \global \trompeteZwei } >> }
    >>
    \new Staff = gesang <<
      \new Voice = melodie { <<  \global \melodie  >> }
    >>
    \new Lyrics \lyricsto "melodie" \text
    \new Lyrics \lyricsto "melodie" \textZwei
  >>
  \layout { }
  \midi { }
}