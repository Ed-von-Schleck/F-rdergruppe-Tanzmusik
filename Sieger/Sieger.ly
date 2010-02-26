\version "2.11.27"

\header {
  title = "Popmusik"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 17)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)


melody = \relative c'' {
	\tempo 4=150
	\clef treble
	\key e \major
	\time 4/4
%%%%
    r4 gis gis8 fis gis4
    gis gis gis8 fis gis4
    cis b gis8 fis e4
    c e fis gis
    
    e4 gis gis8 fis gis4
    gis gis gis8 fis gis4
    cis b gis8 fis e4
    c e fis gis
    
    e4 r2.
    r1 * 3
    
    r4 gis gis8 fis gis4
    gis gis gis8 fis gis4
    cis b gis8 fis e4
    c e fis gis
    
    e4 gis gis8 fis gis4
    gis gis gis8 fis gis4
    cis b gis8 fis e4
    c e fis gis
    
    gis4 r2 r8 gis
    gis4 gis8 gis~ gis gis~ gis b~
    b gis~ gis4 r4. gis8
    b8 b~ b8 a~ a gis~ gis4
    
    a4 gis8 e~ e4 r4
    r2. e4
    e2 fis
    e dis
    
    cis4 r2 r8 gis'
    gis4 gis8 gis~ gis gis~ gis b~
    b gis~ gis4 r4. gis8
    b8 b~ b8 a~ a gis~ gis4
    
    a4 gis8 e~ e4 r4
    r2. e4
    e2 fis
    e dis
    
    cis4 r2 r8 cis
    cis dis~ dis e~ e fis~ fis gis~
    gis4 r2 r8 cis,
    cis dis~ dis e~ e fis~ fis gis~
    
    gis gis~ gis4 r4. cis,8
    cis dis~ dis e~ e fis~ fis gis~
    gis4 gis gis gis
    gis fis e fis
    
    gis4 r2.
    r1*11
    r1 \bar "|."
    
}

textEins = \lyricmode {
    \set stanza = "1. "
    
    Ich seh's ja ein
    ich werd nie -- mals ein
    ech -- ter Sie -- ger sein,
    mir fehlt das Ta -- lent
    
    drum quäl ich mich
    ein -- mal wö -- chent -- lich
    öf -- ter kann ich nich
    hier in die -- se Band
    
    dann trin -- ken wir
    zwei, drei Fla -- schen Bier,
    manch -- mal wer -- dens vier,
    mei -- stens noch viel mehr
    
    und wenn wir dann
    ei -- nen sit -- zen ham
    den -- ken wir da -- ran
    was wir ger -- ne hörn
    
    wir brau -- chen nicht zu ü -- ben,
    wir ma -- chen näm -- lich Pop -- mu -- sik
    die ist be -- kannt -- lich schlicht
    
    wir ha -- ben kei -- ne Ah -- nung
    es reicht für uns, gut aus -- zu -- sehn
    nen An -- spruch ham wir nicht
    
    wir wol -- len in die Charts
    wir wol -- len nach ganz o -- ben
    und ham wir es ge -- schafft dann sa -- gen wir:
    leckt uns am Arsch
    
}

textZwei = \lyricmode {


}

textDrei = \lyricmode {
    \set stanza = "2. "

}

textVier = \lyricmode {
    \set stanza = "3. "

    
}

harmonies = \chordmode {
	\germanChords
    e1 gis a c
    e1 gis a c
    a1* 4:m 
    
    e1 gis a c
    e1 gis a c
    
    cis1*2:m gis:m
    a fis1:m7 gis:7
    
    cis1*2:m gis:m
    a fis1:m7 gis:7
    
    a1*2 e
    fis gis1 b
    
    e1 gis a c
    e1 gis a c
    a1* 4:m 
    

	
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
%        \new Lyrics \lyricsto "one" \textZwei
%        \new Lyrics \lyricsto "one" \textDrei
%        \new Lyrics \lyricsto "one" \textVier
	>>
	\layout { }
	\midi { }
}