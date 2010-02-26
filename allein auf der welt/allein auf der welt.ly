\version "2.11.33"

\header {
  title = "allein auf der welt"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 18)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)


melody = \relative c' {
	\tempo 4=90
	\clef treble
	\key e \major
	\time 4/4
%%%%
r4.. dis16 dis e~ e fis~ fis b~ b a~
a4 r8. gis16 a gis~ gis fis~ fis8 e16 fis~
fis e dis8 r8. dis16 dis e~ e fis~ fis b~ b cis~
cis4 r8 cis16 b cis b~ b cis~ cis b~ b d~

d cis b8 r8. dis,16 dis e~ e fis~ fis b~ b a~
a4 r8. gis16 a gis~ gis fis~ fis8 e16 fis~
fis e dis8 r8. dis16 dis e~ e fis~ fis b~ b cis~
cis4 r8. b16 cis b~ b cis~ cis b~ b d~

d cis b8 r8. dis,16 dis e~ e fis~ fis b~ b a~
a4 r8. gis16 a gis~ gis fis~ fis8 e16 fis~
fis e dis8 r8. dis16 dis e~ e fis~ fis b~ b cis~
cis4 r8. b16 cis b~ b cis~ cis b~ b d~

d cis b8 r8. dis,16 dis e~ e fis~ fis b~ b a~
a4 r8. gis16 a gis~ gis fis~ fis8 e16 fis~
fis e dis8 r8. dis16 dis e~ e fis~ fis b~ b cis~
cis4 r8 b d cis b r

%%%%%%%%
r8 b b b b b b b 
a a a a g a~ a gis~
gis b b b b b b b
a a a a g a~ a gis~
gis b b b b b b b
a a a a g a~ a gis~
gis b b b b b b b
a a a a g g~ g fis
 \bar ":|"
}

text = \lyricmode {
\set stanza = "1. "
Als ich an die -- sem Tag, der seit -- her mein Ge -- burts -- tag ist,
vor mei -- ne Haus -- tür trat, sang -- en al -- le Vö -- gel nur für mich.
Der Lärm, der uns -- re Stadt sonst schreck -- lich un -- ge -- müt -- lich macht,
war jetzt ver -- stummt und ist auch seit -- her nicht mehr auf -- ge -- wacht.

Die Stra -- ßen wa -- ren leer, kein Mensch war weit und breit zu sehn,
was war da wohl pas -- siert? War ein A -- tom -- un -- fall ge -- schehn?
hat viel -- leicht ei -- ne Krank -- heit al -- le aus -- ser mir ge -- killt,
ist mir e -- gal denn heu -- te wird ge -- chillt

Ich bin al -- lei -- ne auf der Welt, und das ist mir ge -- nug
mir ist auch ei -- gent -- lich e -- gal wie sich das hier zu -- trug
viel -- leicht ham al -- le ein -- ge -- sehn das sie hier un -- nütz sind
und mich nur ner -- ven, ich bin froh, dass ich al -- lei -- ne bin

}

textZwei = \lyricmode {
\set stanza = "2. "

}

harmonies = \chordmode {
\germanChords
b1:7 a b1:7 a b1:7 a b1:7 a
b1:7 a b1:7 a b1:7 a b1:7 a

e2 g a c e2 g a c e2 g a c e2 g a c
}

\score {
	<<
		\new ChordNames {
			\set chordChanges = ##t
			\harmonies
		}
		\new Voice = "one" {
			\autoBeamOn
			\melody
		}
		\new Lyrics \lyricsto "one" \text
%        \new Lyrics \lyricsto "one" \textZwei
	>>
	\layout { }
	\midi { }
}