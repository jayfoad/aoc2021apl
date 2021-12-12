p←↑'\w+'⎕S'&'¨⊃⎕NGET'p12.txt'1
q←⍸¨↓1@(↓d⍳p⍪⌽p)∘.{0}⍨d←∪,p
(s e)←d⍳'start' 'end'
l←⍸d≡¨⎕c d ⍝ lower case caves
f←{⍵=e:1 ⋄ ⍵∊⍺∩l:0 ⋄ +/(⍺,⍵)∘∇¨⍵⊃q} ⋄ ⍬ f s ⍝ part 1
⍬{⍵=e:1 ⋄ ~⍵∊⍺∩l:+/(⍺,⍵)∘∇¨⍵⊃q ⋄ ⍵=s:0 ⋄ +/⍺∘f¨⍵⊃q}s ⍝ part 2
