\version "2.12.02"

\header {
  title = "Heavy Metal"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 17)
#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)

global = {
  \tempo 4=80
  \clef treble
  \key a \minor
  \time 4/4
}

melody = \relative c'' {
c4^"shuffled"( a8 g a4 g8 e
g4 e8 d e4 d8 c
d4 c8 a c4 a8 g
a4) r2 a8 a

g a r2.
r1
r
r

c'4( a8 g a4 g8 e
g4 e8 d e4 d8 c
d4 c8 a c4 a8 g
a4) r2 a8 a

g a r2.
r1
r
r2.. g8

\bar "||"
a4 c e8 e a, g
a4 c8 e~ e r a, g
a4 c e8 e g,4
a4 c8 e~ e r a, g

a4 c e8 e g,4
a4 c8 e~ e r a, g
a4 c8 c e e g,4
a4 c8 e~ e r a, g

a4 c4 e8 e g,4
a4 c8 e~ e r a, g
a4 c e8 e a, g
a4 c8 e~ e r a, g

g a r2.
r1
r
r
\bar ":|"
}

secondVoice = \relative c' {

}

text = \lyricmode {
ah __ Hea -- vy Me -- tal
ah __ Hea -- vy Me -- tal

sie können gut Mat -- he,
ken -- nen kein Ge -- dicht,
ha -- ben mäch -- tig Wat -- te
vor ihrm Ge -- sicht,
fin -- den Bo -- mber -- jac -- ken
voll Un -- ter -- schicht
em -- pe -- dreis auf -- n Plat -- ten
nur_von Si -- do nicht,

fin -- den al -- les kac -- ke
was_Bu -- shi -- do spricht,
doch mit Mä -- dels schnac -- ken
trau -- en sie sich nicht,

Hea -- vy Metal
}

textZwei = \lyricmode {
_ _ _ _ _
_ _ _ _ _
sie fahrn nach Wac -- ken
und sie waschen sich nicht
vor der Büh -- ne wac -- keln
sie_mit dem Ge -- nick,
hal -- ten hef -- tig spac -- ken
für ih -- re Pflicht,
tun die Haa -- re vom Nac -- ken
vor das Ge -- sicht,

ih -- re fetti -- ge Mat -- te
ver -- sperrt die Sicht,
sie sind völ -- lig hac -- ke
und nicht we -- nig dicht,

Hea -- vy Metal
}

textDrei = \lyricmode {

}

harmonies = \chordmode {
\germanChords
a1*8:m
a1*8:m

a1*8:m
f1*2:m
d1*2:m
a1*4:m
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
    \new Lyrics \lyricsto "christian" \textZwei
%    \new Lyrics \lyricsto "christian" \textDrei
  >>
  \layout { }
  \midi { }
}