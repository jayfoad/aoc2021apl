⎕IO←0
p q←{⍵⊆⍨×≢¨⍵}⊃⎕NGET'p13.txt'1
p←⍎¨p ⋄ a←1@p⊢0⍴⍨2 4+⊃⌈/p
f←{(0.5×¯1+≢⍵)↑⍵∨⊖⍵} ⋄ +/,f a ⍝ part 1
x y←+/'xy'∘.=∊q ⋄ ' #'[f⍣y⍉f⍣x⊢a] ⍝ part 2
