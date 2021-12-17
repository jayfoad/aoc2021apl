⎕IO←0
a b c d←⍎¨'-?\d+'⎕S'&'⊃⎕NGET'p17.txt'1
0.5×c×1+c ⍝ part 1
n←¯2×c ⋄ x←(a∘≤∧≤∘b)+\0⌈(1+⍳b)∘.-⍳n ⋄ y←(c∘≤∧≤∘d)+⍀-(⍳n)∘.-c+⍳n
+/,x∨.∧y ⍝ part 2
