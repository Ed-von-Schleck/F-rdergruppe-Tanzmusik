\version "2.12.02"

\header {
  title = "Die Leute"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 17)
#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)

global = {
  \tempo 4=120
  \clef treble
  \key c \minor
  \time 4/4
}

melody = \relative c' {
R1*3
r2.. c8

g'4^"shuffled" g f es8 d~
d2 r4 d8 c
d c d c d c d4
d es8 d~ d c r c8

g'4 g f es8 d~
d2 r4 d8 c
d c d c d c d c
d4 es8 d~ d c r c8

g'4 g f es8 d~
d2 r4 d8 c
d c d c d c d c
d4 es8 d~ d c r c8

g'4 g f es8 d~
d2 r4 d8 c
d c d c d c d c
d4 es8 d~ d c r bes8

c d~ d es~ es4 f
g8 f~ f es~ es4 d
c8 d~ d es~ es4 f
g8 f~ f es~ es4 d

c8 d~ d es~ es4 f
g8 f~ f es~ es4 d8 d
g4 g g g
g g g8 r g4

g bes g es
f es r es
g bes g es
fis2 r4 es

g bes g es
f es es es
f es es8 c~ c es~
es2 r4 es

g bes g es
f es r es
g bes g es
fis2 r4 es

g bes g es
f es r es
f es es c 
es2 r4 es

\bar ":|"
}

secondVoice = \relative c' {

}

text = \lyricmode {
die Leu -- te wolln nen Hit
könn -- se ha -- ben, wenn ich Zeit hab dann
schreib ich ei -- nen
ein Song wie Dy -- na -- mit
je -- de Zei -- le tut sich läs -- sig auf die
näch -- ste rei -- men

die Leu -- te wolln Ge -- fühl,
und die Cho -- se soll den gan -- zen Tag im Ra -- dio lau -- fen
ein Beat, doch nicht zu viel
zum drauf tan -- zen, und die Leut wer -- den die Plat -- te kau -- fen

doch bi -- te nicht so kre -- a -- tiv
die Leu -- te sind im Stim -- mungs -- tief
das ist zwar nix für un -- ser -- ein, doch die
Leut wolln un -- ter -- hal -- ten sein

die Leu -- te wol -- len Schei -- ße
die Leu -- te wol -- len Spaß
die Leut wolln kon -- su -- mie -- ren
al -- so gebn wir ih -- nen was

die Leu -- te wol -- len Spie -- le
die Leu -- te wol -- len Brot
sie ha -- ben kei -- ne Zie -- le
und mor -- gen sind sie tot
}

%textZwei = \lyricmode {
die Leu -- te ham ge -- wählt
ei -- ne an -- de -- re Re -- gie -- rung
und_ne Volks -- ver -- tre -- tung
die kam auch wie be -- stellt
doch das Wahl -- pro -- gramm kam lei -- der wie -- der
mit Ver -- spä -- tung

was ham se doch er -- zählt
schlech -- te Sa -- chen wer -- den ab -- ge -- schafft, die gu -- ten blei -- ben
vom Volks -- auf -- trag be -- seelt
wird jetzt w
}

textDrei = \lyricmode {

}

harmonies = \chordmode {
\germanChords
c1:m g bes f

c1:m g bes f
c1:m g bes f
c1:m g bes f
c1:m g bes f

as c:m as c:m
as c:m g g

c2.:7 as4:7~ as1:7
c2.:7 as4:7~ as1:7
c2.:7 as4:7~ as1:7
f1*2

c2.:7 as4:7~ as1:7
c2.:7 as4:7~ as1:7
c2.:7 as4:7~ as1:7
f1*2
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff = gesang <<
      \new Voice = christian { <<  \global \melody  >> }
%      \new Voice = stephan {\voiceTwo <<   \global \secondVoice  >> }
    >>
    \new Lyrics \lyricsto "christian" \text
%    \new Lyrics \lyricsto "christian" \textZwei
%    \new Lyrics \lyricsto "christian" \textDrei
  >>
  \layout { }
  \midi { }
}