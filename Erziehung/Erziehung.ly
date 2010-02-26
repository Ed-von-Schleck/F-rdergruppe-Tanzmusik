\version "2.10.13"

\header {
  title = "Erziehung"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 18)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)


melody = \relative c'' {
	\tempo 4=120
	\clef treble
	\key g \major
	\time 4/4
%%%%
r8. g16~( g2 b4)
fis4( e8) r fis4( e8) r 
r8. a16~( a2 c4)
g4( fis8) r g4( a8) r 

r8. g16~( g2 b4)
fis4( e8) r fis4( e8) r 
r8. a16~( a2 c4)
g4( fis8) r g4( a8) r 

r8 b b b b b16 b~ b b d8
b2 r
a8 a a a  b8. a16~ a8 r
a a16 a~ a8 b a2
r8 b b b b b16 b~ b8 d8
b2 r4. a8
a8 a a a  b8. a16~ a8 a
a a16 a~ a8 b a2

r8 g g g c c c16 d~ d c~
c8 b b b d c b c16 b~
b8 r g g c c c16 d~ d c~
c8 b b b d c b c16 b~
b8 r g g c c c16 d~ d c~
c8 b b b d c b c16 b~
b8 r g g c c c16 d~ d c~
c8 b b b b a g( a)
\bar ":|"

}

text = \lyricmode {

uh __ hu __ hu __
uh __ hu __ hu __
uh __ hu __ hu __
uh __ hu __ hu __

\set stanza = "1. "
Gib kei -- ne Wi -- der -- wor -- te,  mein Kind,
denn wenn Dei -- ne El -- tern and -- rer Mei -- nung sind
hat das nen wohl -- be -- dach -- ten Grund,
be -- kannt -- lich kommt nur Weis -- heit aus un -- srem El -- tern -- mund

doch du willst im -- mer al -- les an -- ders, al -- les an -- ders als der Rest
da -- bei wis -- sen wir doch bes -- ser, was für dich jetzt rich -- tig ist
es ist je -- den -- falls das Bes -- te, wenn du dich auf uns ver -- lässt
und die häss -- li -- chen Ge -- dan -- ken mög -- lichst schnell ver -- gisst

}

textZwei = \lyricmode {

_ _ _
_ _ _
_ _ _
_ _ _

\set stanza = "2. "
Mach uns doch kei -- nen Är -- ger, mein Kind,
hör auf mit dem Den -- ken, weil das  eh nichts bringt
das nützt dir in der Schu -- le nichts
das scha -- det nur der Leis -- tung wäh -- rend des Un -- ter -- richts

}

harmonies = \chordmode {
	\germanChords

g2 b:m e:m e:7
a:m a:7 d d:7
g2 b:m e:m e:7
a:m a:7 d d:7

g1*2 d1 a:m
g1*2 d1 a:m

c2 a:m e:m g
c2 a:m e:m g
c2 a:m e:m g
c2 a:m e:m d
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
		\new Lyrics \lyricsto "one" \textZwei
	>>
	\layout { }
	\midi { }
}
