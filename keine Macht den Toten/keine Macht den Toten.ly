\version "2.11.27"

\header {
  title = "ungewolltes Manifest der vernetzten Generation"
  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 17)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)


melody = \relative c' {
	\clef treble
	\key a \minor
	\time 4/4

	a8 a a b 	c c c a
	g g b c~( c16 a g8) r4
	
	d'8 d d c d d d d
	c d c4 b4 c8 b
	
	
	a8 a a b 	c c c a
	g b~b c~( c16 a g8) r4
	
	d'8 d d c d d d d
	c d c4 b4 c8 b
	
	
	a8 a a b 	c c c a
	g g b c~( c16 a g8) r4
	
	d'8 d d c d d d d
	c d c c b4 c8 b
	
	
	a8 a a b 	c c c a
	g b~ b c~( c16 a g8) r4
	
	d'8 d d e f f f f
	g f g4 g4 g8 g
	
	%%%%
	a2 r2
	r2 r8 a8 a4
	a b8 a~ a4 r4
	r2. r8 a
	
	a4 a8 a~ a b~ b a~
	a4 r2 r8 a8
	gis4 e8 e~ e e~ e gis~
	gis e~ e e~ e~ e4 r8
	
	a4 b8 a~ a4 r4
	r2. r8 a8
	a4 a8 a~ a b~ b a~
	a4 r2 r8 a
	
	a4 a8 a~ a b~ b a~
	a a~ a a~ a a~ a a
	gis4 e8 e~ e a~ a gis~
	gis e~ e4 r8 e d e~
	
	e2 r2
	r1 r1 r1
	
}

text = \lyricmode {
	Wir sind nicht ge -- bun -- den an ver -- gan -- ge -- nes Jetzt,
	pas -- sen nicht in Hie -- rar -- chi -- en, le -- ben ver -- netzt
	wir sind un -- be -- merkt die Schöp -- fer ei -- ner neu -- en Zeit
	für Re -- vo -- lu -- tio -- nen sind wir viel zu ge -- scheit
	
	denn wir schei -- tern nicht an gren -- zen -- lo -- ser In -- for -- ma -- tion
	wir er -- ken -- nen Mus -- ter in der Wis -- sens -- ex -- plo -- sion,
	wir sind al -- le Ar -- chi -- tekt -- en ei -- ner Netz -- kul -- tur,
	glau -- ben nicht an Fort -- schritt, nicht zu -- rück zur Na -- tur
	
	wir sind neu
	wir sind un -- ter Euch
	Ihr lebt an uns vor -- bei
	und un -- ter Euren Au -- gen und doch
	
	un -- be -- merkt
	ver -- än -- dern wir die Welt
	und ei -- nes schö -- nen Mor -- gens	merkt Ihr,
	dass Eu -- re Welt längst nicht mehr ex -- is -- tiert

}

harmonies = \chordmode {
	a2:m f g c
	d:m ais c g
	
	a2:m f g c
	d:m ais c g
	
	a2:m f g c
	d:m ais c g
	
	a2:m f g c
	d:m ais c g
	
	a1 g/a
	a1 g/a
	fis:m f
	e e7
	
	a1 g/a
	a1 g/a
	fis:m f
	e e7
	
	e7 e7
	e7 e7
	
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
	>>
	\layout { }
	\midi { }
}