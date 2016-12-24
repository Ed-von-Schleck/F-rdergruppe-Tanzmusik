\version "2.16.2"

\header {
  title = "Wieder da"
  composer = "skudella & speckdrum? for Fördergruppe Tanzmusik"

}

global = {
  \key bes \minor
  \time 4/4
  \tempo 4 = 170
}

harmonies = \chordmode {
  \germanChords
 bes1:m f1 bes1:m f1
 ges1 bes1:m ges1 f1
 bes1:m f1 bes1:m f1
 ges1 bes1:m ges2 f2 bes1:m
 
 f1 g1:7 c1 a1:m
 f1 g1 c1 a1:7 
 
 d1:m g1 a1:m f1
 d1:m g1 c1 c1
 d1:m g1 c1 a1:m
 d1:m g1 bes1 bes1
 a1:7 a1:7
 
es1 es1 c1:7 c1:7
es1 es1 c1:7 c1:7
f1:m f1:m e1 e1
f1:m f1:m f1 f1
 
 

}

violinMusic = \relative c'' {
 \key a \minor
 \time 4/4
  \tempo 4 = 170

 R1*16
 a2. c4
 b2. d4
 c1
 a4 g4 f8 e8~e8 g8
 a2. c4
 b2. b8 c8~
 c4 g8. g16(c8 d8~d8) e8~
 e2. r4
 R1*18
 a4.( g8~g4) es4
 d2 g2
 a2.( g8) bes8~
 bes1
 a4.( g8~g4) es4
 d2 g2
 a2.( g8) bes8~
 bes1
 
}

trumpetoneVerseMusic = \relative c'' {
 \break
 r1
 r8 a8~a8 c8 bes4 a4
 r1
 r8 a8~a8 c8 bes4 a4
 R1*3
 r8 c8~c8 c8 bes8 bes8 ges8 a8
 r1
 r8 a8~a8 c8 bes4 a4
 r1
 r8 a8~a8 c8 bes4 a4
 R1*3
 r8 bes8 des8 f8 ges8 f8 es8 f8
}

trumpetonePreChorusMusic = \relative c'' {
 \break
 \key c \major

 R1*8
}

trumpetoneChorusMusic = \relative c'' {
 \break
 \key c \major
 R1
 r8 g8 b8 d8 f8. e16~e8 d8
 R1
 r8 c8~c8 d8~d4 c8 r8  
 R1*2
 
 r4 c,4 e4 g4
 e'4 e4 d8 c8~c4
 R1
 r8 g8 b8 d8 f8. e16~e8 d8
 R1
 r8 c8~c8 d8~d4 c8 r8  
 R1*3
 d2 r2
 r1
 g,2 r2
}

trumpetoneBridgeMusic = \relative c'' {
 \break
 R1*8
 as'1
 g2 f2
 as2. e4
 es4. des8~des4 c4
 as'1
 g2 f2
 f2. f4
 ges4. f8~f4 a4
 \bar ":|."
}

trumpettwoVerseMusic = \relative c'' {
 r1
 r8 f,8~f8 f8 ges4 f4
 r1
 r8 f8~f8 f8 ges4 f4
 R1*3
 r8 f8~f8 as8 ges8 f8 es8 f8
 r1
 r8 f8~f8 f8 ges4 f4
 r1
 r8 f8~f8 f8 ges4 f4
 R1*3
 r8 bes8 bes8 bes8 des8 c8 c8 des8
}

trumpettwoPreChrousMusic = \relative c'' {
 \key c \major

 \break
 R1*9
}

trumpettwoChorusMusic = \relative c'' {
 \break
 r8 g8 b8 d8 c8. c16~c8 b8
 R1
 r8 a8~a8 e8~e4 a8 r8  
 R1*2
 r4 c,4 e4 g4
 g4 g4 a8 g8~g4
 R1
 r8 g8 b8 d8 c8. c16~c8 b8
 R1
 r8 a8~a8 e8~e4 a8 r8  
 R1*3
 bes2 r2
 r1
 e,2 r2
 
}

leadMusicverse = \relative c''
{
f4. ges8~ges4 f4 
f2 r2
f4. ges8~ges4 f4 
c2 r2
des4. es8~es4 ges4 
f4. des8~des4 bes4 
des4. bes8~bes4 des4 
c2 r2
f4. ges8~ges4 f4 
f2 r2
f4. ges8~ges4 f4 
c2 r2
des4. es8~es4 ges4 
f4. des8~des4 bes4 
des2 c2 
bes2 r2
}

leadMusicprechorus = \relative c''
{
\break
\key c \major

c8 c8~c8 d8~d4 e4 
f4 f8 f8~f8 e8 d4 
e2 c4 a4~
a2 r2
c4 c4 d4 e4
d8 d8~d4 e4 f8 e8~
e2 r2
r1

}

leadMusicchorus = \relative c''
{
\break
f4 e8. e16 d8 c8~c8 b8~
b2 r2
e8 d8~d8 c8~c8 b8~b8 a8~
a2 r2
f'4 e8. e16 d8 c8~c8 b8~
b4 b4 c8 d8~d8 e8~
e2 r2
r1
f4 e8. e16 d8 c8~c8 b8~
b2 r2
e8 d8~d8 c8~c8 b8~b8 a8~
a2 r2
f'4 e8. e16 d8 c8~c8 b8~
b4 b4 c8 d8~d8 d8~
d1
r2 d8 e8~e8 d8
cis1~
cis2 r2
}

leadWordsOne = \lyricmode { 
\set stanza = "1." 
}

leadWordsChorus = \lyricmode {
\set stanza = "chorus"
Jetzt sind wir wie -- der da 
schö -- ner als zu vor
 
}


leadWordsTwo = \lyricmode { 
\set stanza = "2." 


}

leadWordsThree = \lyricmode {
\set stanza = "3." 


}

leadWordsFour = \lyricmode {
\set stanza = "4." 


}


backingOneChorusMusic = \relative c'' {
 R1*24 
 \break
 \key c \major
 c4 c8. c16 b8 f8~f8 g8~
 g2 r2
 c8 b8~b8 c8~c8 g8~g8 e8~
 e2 r2
 c'4 c8. c16 b8 f8~f8 g8~
 g1
 c2 r2
 R1
 c4 c8. c16 b8 f8~f8 g8~
 g2 r2
 c8 b8~b8 c8~c8 g8~g8 e8~
 e2 r2
 c'4 c8. c16 b8 f8~f8 g8~
 g1
 bes1
}

backingOneChorusWords = \lyricmode {

}

backingTwoChorusMusic = \relative c'' {


 R1*24
 \break
 \key c \major
 a4 a8. a16 f8 f8~f8 d8~
 d2 r2
 g8 e8~e8 f8~f8 d8~d8 c8~
 c2 r2
 a'4 a8. a16 f8 f8~f8 d8~
 d1
 g2 r2
 R1
 a4 a8. a16 f8 f8~f8 d8~
 d2 r2
 g8 e8~e8 f8~f8 d8~d8 c8~
 c2 r2
 a'4 a8. a16 f8 f8~f8 d8~
 d1
 f1

}
backingTwoChorusWords = \lyricmode {

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \transpose c c { \global \harmonies }
    }

    \new StaffGroup <<
    
      \new Staff = "Violin" {
        \set Staff.instrumentName = #"Violin"
        \set Staff.shortInstrumentName = #"V."
        \set Staff.midiInstrument = #"violin"
         \transpose c c { \violinMusic }
      }
      \new Staff = "Trumpets" <<
        \set Staff.instrumentName = #"Trumpets"
	\set Staff.shortInstrumentName = #"T."
        \set Staff.midiInstrument = #"trumpet"
        \transposition bes
        %\new Voice = "Trumpet1Verse" { \voiceOne << \transpose c c { \global \trumpetoneVerseMusic } >> }
        %\new Voice = "Trumpet1PreChorus" { \voiceOne << \transpose c c { \trumpetonePreChorusMusic } >> }
        %\new Voice = "Trumpet1Chorus" { \voiceOne << \transpose c c { \trumpetoneChorusMusic } >> }
        %\new Voice = "Trumpet1Bridge" { \voiceOne << \transpose c c { \trumpetoneBridgeMusic } >> }
	%\new Voice = "Trumpet2Verse" { \voiceTwo << \transpose c c { \global \trumpettwoVerseMusic } >> }      
	%\new Voice = "Trumpet2PreChorus" { \voiceTwo << \transpose c c {  \trumpettwoPreChrousMusic } >> }      
	%\new Voice = "Trumpet2Chorus" { \voiceTwo << \transpose c c { \trumpettwoChorusMusic } >> }      
        \new Voice = "Trumpet1" { \voiceOne << \transpose c d { \global \trumpetoneVerseMusic \trumpetonePreChorusMusic \trumpetoneChorusMusic \trumpetoneBridgeMusic} >> }
	\new Voice = "Trumpet2" { \voiceTwo << \transpose c d { \global \trumpettwoVerseMusic \trumpettwoPreChrousMusic \trumpettwoChorusMusic} >> }      
      >>
    >>  
    \new StaffGroup <<
      \new Staff = "lead" {
	\set Staff.instrumentName = #"Lead"
	\set Staff.shortInstrumentName = #"L."
        \set Staff.midiInstrument = #"voice oohs"
        \new Voice = "leadverse" { << \transpose c c { \global \leadMusicverse } >> }
        \new Voice = "leadprechorus" { << \transpose c c { \leadMusicprechorus } >> }
        \new Voice = "leadchorus" { << \transpose c c { \leadMusicchorus } >> }
      }
      \new Lyrics \with { alignBelowContext = #"lead" }
      \lyricsto "leadchorus" \leadWordsChorus
      \new Lyrics \with { alignBelowContext = #"lead" }
      \lyricsto "leadverse" \leadWordsFour
      \new Lyrics \with { alignBelowContext = #"lead" }
      \lyricsto "leadverse" \leadWordsThree
      \new Lyrics \with { alignBelowContext = #"lead" }
      \lyricsto "leadverse" \leadWordsTwo
      \new Lyrics \with { alignBelowContext = #"lead" }
      \lyricsto "leadverse" \leadWordsOne
      
     
      % we could remove the line about this with the line below, since
      % we want the alto lyrics to be below the alto Voice anyway.
      % \new Lyrics \lyricsto "altos" \altoWords

      \new Staff = "backing" <<
	%  \clef backingTwo
	\set Staff.instrumentName = #"Backing"
	\set Staff.shortInstrumentName = #"B."
        \set Staff.midiInstrument = #"voice oohs"
	\new Voice = "backingOnes" { \voiceOne << \transpose c c { \global \backingOneChorusMusic } >> }
	\new Voice = "backingTwoes" { \voiceTwo << \transpose c c { \global \backingTwoChorusMusic } >> }

      >>
      \new Lyrics \with { alignAboveContext = #"backing" }
      \lyricsto "backingOnes" \backingOneChorusWords
      \new Lyrics \with { alignBelowContext = #"backing" }
      \lyricsto "backingTwoes" \backingTwoChorusWords

      % again, we could replace the line above this with the line below.
      % \new Lyrics \lyricsto "backingTwoes" \backingTwoWords
    >>
  >>
  \midi {}
  \layout {
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup #'remove-first = ##t
    }
  }
}

#(set-global-staff-size 19)

\paper {
  page-count = #2
}
