\version "2.12.02"

\header {
  title = "Was?"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 16)
#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)

global = {
  \tempo 4=100
  \clef treble
  \key g \major
  \time 4/4
}

trompeteEins = \relative c'' {
\partial 16 r16
r2. r16 c8.--
b8-. r8 r2 r16 c8.--
b8-. r8 r2 r16 c8.--
b8-. r8 r2 r16 c8.--

r8 d8 r16 d~ d r c8 r16 bes~ bes r c8
r8 d8 r16 d~ d r c8 r16 bes~ bes r c8
bes2 c
c d

%%%%%
r8 f, g f e'8. d16~ d8 b
r8 f g f e'8. d16~ d8 b
r8 f g f e'8. d16~ d8 b
bes2 c

r8 f, g f e'8. d16~ d8 b
r8 f g f e'8. d16~ d8 b
r8 f g f e'8. d16~ d8 b
bes2 c

}

trompeteZwei = \relative c' {
\partial 16 r16
r2. r16 e8.--
g8-. r8 r2 r16 e8.--
g8-. r8 r2 r16 e8.--
g8-. r8 r2 r16 e8.--

r8 g8 r16 f~ f r e8 r16 es~ es r d8
r8 g8 r16 f~ f r e8 r16 es~ es r d8
es2 e
f fis

%%%%%
r8 f g f c'8. bes16~ bes8 g
r8 f g f c'8. bes16~ bes8 g
r8 f g f c'8. bes16~ bes8 g
g2 e2

r8 f g f c'8. bes16~ bes8 g
r8 f g f c'8. bes16~ bes8 g
r8 f g f c'8. bes16~ bes8 g
g2 e2
}

melodie = \relative c'' {
\partial 16 g16
g g r g g g r8 g16 g r g g g r g
g g r g g g r g g g r g g g r g
g g r g g g r g g g r g g g r g
g g r g g g r g g g r g g g r g

g r g g g g g g g g g g~ g8 r16 g
g8 g g16 g g g g g~ g g~ g8 r16 g
g8 g g16 g g g g g~ g g~ g8 r16 g
g r g g g g g g g g g g r g g8

%%%%%%%%%%
d'8-. r8 r2 r16 g, g8
d'8-. r8 r2 r16 g, g8
d'8-. r8 r2 r16 g, g8
f g g16 g~ g bes~ bes g~ g f~ f g~ g r

d'8-. r8 r2 r16 g, g8
d'8-. r8 r2 r16 g, g8
d'8-. r8 r2 r8. g,16
f8 g g f16 g~ g8 r4.
\bar ":|"
}

text = \lyricmode {
\set stanza = #"1."
du re -- dest ent -- schlos -- sen in mei -- ne Oh -- ren
do -- ziertst un -- ver -- dros -- sen, ge -- dan -- ken -- ver -- lo -- ren
zum Lei -- dens -- ge -- nos -- sen hast du mich er -- ko -- ren
stehst wie an -- ge -- gos -- sen, nur ich hab ver -- lo -- ren

ich hab kei -- ne Ah -- nung, was du mir da er -- zählst
der Schall schallt zu mir, doch der In -- halt fehlt
dein Wort -- schwall hat mich lang ge -- nug ge -- quält
es klingt wie ne Fra -- ge, doch es ist ein Be -- fehl

ich sag: was?
ich sag: was?
ich sag: was?
ich sag: kannst Du bit -- te deut -- lich re -- den
was?
ich sag: was?
ich sag: was?
ich kann dich nicht ver -- stehn

}

textZwei = \lyricmode {
\set stanza = #"2."

}

textDrei = \lyricmode {
\set stanza = #"3."

}

harmonies = \chordmode {
\germanChords
\partial 16 r16
g4 r2 r16 c8.
g4 r2 r16 c8.
g4 r2 r16 c8.
g4 r2 r16 c8.

r8 g8 r16 d8:m r16 c8 r4 d8
r8 g8 r16 d8:m r16 c8 r4 d8
es2 c
f d:7

r8 f g f c8. bes g8
r8 f g f c8. bes g8
r8 f g f c8. bes g8
es2 c

r8 f g f c8. bes g8
r8 f g f c8. bes g8
r8 f g f c8. bes g8
es2 c
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff = geblaese <<
      \new Voice = trompeteEins {\voiceOne << \transposition bes \transpose c d{  \global \trompeteEins }  >> }
      \new Voice = trompeteZwei {\voiceTwo << \transposition bes \transpose c d {  \global \trompeteZwei } >> }
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