\version "2.11.27"

\header {
  title = "Deine Freunde"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 17)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)


melody = \relative c' {
	\tempo 4=120
	\clef treble
	\key a \minor
	\time 4/4
%%%%
    r8 \parenthesize e e8 e e e e e 
    e e e e e e e4
    r8 e e e e e e e
    e e e e e e e4
    
    r8 \parenthesize e e8 e e e e e 
    e e e e e e e4
    r8 e e e e e e e
    e e e e e e e4 \bar ":|"
    
    r4 e a, e'
    a, e' a, e'8 a,~
    a4 r4. e'8 e e
    g f~ f e~ e d~ d e~
    e8 r e4 a, e'
    a, e' a, e'8 a,~
    a4 r2 a8 a
    b b~ b b~ b b~ b a~
    
    a8 r2..
    r1 \bar "|."
    
}

textEins = \lyricmode {
    \set stanza = "1. "
    _ Dei -- ne Freun -- de sa -- gen Dir dass Du doch glück -- lich bist
    hast Du nicht al -- les was im Le -- ben wirk -- lich wich -- tig ist
    _ Da -- bei mei -- nen sie nicht ein -- mal Dei -- ne gei -- le Frau
    nein, Dei -- ne Freun -- de ken -- nen Dich schon wirk -- lich ganz ge -- nau
    
    Doch Du hast ih -- nen nicht er -- zählt
    Dass Dich Dein neu -- es Le -- ben quält
    Du hast ja al -- les, viel zu viel
    Doch Du hast kein neu -- es Ziel
    
}

textZwei = \lyricmode {
   
    Sie mei -- nen nicht die Koh -- le und auch nicht das Fahr -- ge -- rät
    das rot -- lak -- kiert in Dei -- ner e -- wig -- lan -- gen Ein -- fahrt steht
    Sie wis -- sen: Du hast Dir ja im -- mer nur zum Ziel ge -- setzt
    ein -- mal be -- rühmt und schwer be -- kannt zu sein: das bist Du jetzt

}

textDrei = \lyricmode {
    \set stanza = "2. "
    _ Dei -- ne Freun -- de sa -- gen Dir dass Du doch glück -- lich bist
    sie wüss -- ten echt nicht, was es ist, dass Du jetzt noch ver -- misst
    an Dei -- ner Stel -- le wür -- den sie ganz ein -- fach glück -- lich sein,
    doch wie das geht, fällt Dir aus ir -- dend -- ei -- nem Grund nicht ein
}

textVier = \lyricmode {
    \set stanza = "3. "
    _ Dei -- ne Freun -- de sa -- gen Dir dass Du doch glück -- lich bist
    weil je -- der Wunsch und je -- der Traum doch wahr -- ge -- wor -- den ist
    wenn Du in Dich hi -- nein -- schaust wird Dir je -- doch lang -- sam klar,
    dass in Dir drin nur Lee -- re ist, wo einst mal Hoff -- nung war
    
}

harmonies = \chordmode {
	\germanChords
    a2:m g
    d a8:m e g e/gis
    a2:m g
    d a8:m e g e/gis
    a2:m g
    d a8:m e g e/gis
    a2:m g
    d a8:m e g e/gis

    
    f1*2
    a:m
    f
    a1:m
    g
    a1*2:m
	
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
		\new Lyrics \lyricsto "one" \textEins
        \new Lyrics \lyricsto "one" \textZwei
        \new Lyrics \lyricsto "one" \textDrei
        \new Lyrics \lyricsto "one" \textVier
	>>
	\layout { }
	\midi { }
}