⎕IO←0 ⋄ ⎕PP←17
_ a _ b←⍎¨'\d+'⎕S'&'⊃⎕NGET'p21.txt'
{a b c d e←⍵ ⋄ 999<e:d×c ⋄ ∇b a(c+3)e(d+a←1+10|a+5+3×c)}5↑a b ⍝ part 1
z←10 10 31 31 2⍴0 ⋄ z[;;21+⍳10;;0]←z[;;;21+⍳10;1]←1
{(⌽e){∧/21>d e←⍺⍵:{z[⍵;;d;e;]←⌽1 3 6 7 6 3 1+.×1 0 0 2⍉z[;a;e;d+1+a←10|⍵+3+⍳7;]}¨⍳10}¨e←(0⌈⍵-30)+⍳1+⍵⌊60-⍵}¨⌽⍳61
⌈/z[a-1;b-1;0;0;] ⍝ part 2
