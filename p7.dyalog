p←⍎⊃⊃⎕NGET'p7.txt'1
⌊/+⌿|p∘.-⍳≢p ⍝ part 1
0.5×⌊/+⌿{⍵×1+⍵}|p∘.-⍳≢p ⍝ part 2
