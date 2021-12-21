p←↑'\w+'⎕S'&'¨⊃⎕NGET'p12.txt'1
s e←'start' 'end'⍳⍨d←∪,p
q←e@e⊢s~¨⍨⍸¨↓1@(↓d⍳p⍪⌽p)∘.{0}⍨d
u←1@e⊢d≢¨⎕c d ⍝ upper case caves
{∧/e=z←∊t←q⌷⍨⊂⊢/⍵:≢⍵ ⋄ w←⍵⌿⍨≢¨t ⋄ m←u[z]∨∧/w≠⍤¯1⊢z ⋄ ∇m⌿w,⍪z}⍪s ⍝ part 1
(,1){∧/e=z←∊t←q⌷⍨⊂⊢/⍵:≢⍵ ⋄ w←⍵⌿⍨n←≢¨t ⋄ m←(a←n⌿⍺)∨y←u[z]∨∧/w≠⍤¯1⊢z ⋄ (m⌿a∧y)∇m⌿w,⍪z}⍪s ⍝ part 2
