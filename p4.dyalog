n←⍎⊃p←⊃⎕NGET'p4.txt'1 ⍝ numbers
b←↑⍎¨↑1↓¨{⍵⊂⍨(≢⍵)⍴6↑1}1↓p ⍝ boards
f←{∨/(∧/⍵)∨∧/[2]⍵}
n{w←⍵∨b=a←⊃⍺ ⋄ ∨/m←f w:a×+/,(m⍳1)⌷b×~w ⋄ (1↓⍺)∇w}0×b ⍝ part 1
n{w←⍵∨b=a←⊃⍺ ⋄ ∧/f w:a×+/,(0⍳⍨f ⍵)⌷b×~w ⋄ (1↓⍺)∇w}0×b ⍝ part 2
