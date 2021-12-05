p←⍎¨¨'\d+'⎕S'&'¨⊃⎕NGET'p5.txt'1
to←{⍺+(×⍺-⍵)×⎕IO-⍳1+|⍺-⍵}
f←{x1 y1 x2 y2←⍵ ⋄ ∨/x1 y1=x2 y2:(x1 to x2),¨y1 to y2 ⋄ ⍬}
+/1<{≢⍵}⌸⊃,/f¨p ⍝ part 1
g←{x1 y1 x2 y2←⍵ ⋄ (x1 to x2),¨y1 to y2}
+/1<{≢⍵}⌸⊃,/g¨p ⍝ part 2
