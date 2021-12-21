⎕IO←0
p←⎕JSON¨⊃⎕NGET'p18.txt'1
dep←{0=≡⍵:0 ⋄ 1+⊃,/∇¨⍵} ⍝ enlisted depth
rep←{0=≡⍵:⍵ ⋄ 0 0≡⍵:0 ⋄ ∇¨⍵} ⍝ replace 0 0 with 0
exp←rep∘(1∘⊃)∘{(≢d)=n←6⍳⍨d←dep ⍵:⍵ ⋄ w⊣((⊂n+¯1 0 1 2)⌷∊w)+←1 ¯1 ¯1 1×2/(⊂n+0 1)⌷∊w←⍵}∘{0 ⍵ 0} ⍝ explode
spl←{2=≢⍵:a(∇⍣((⊃⍵)≡a←∇⊃⍵)⊃⌽⍵) ⋄ 9<⍵:(⌊,⌈)0.5×⍵ ⋄ ⍵} ⍝ split
red←spl∘(exp⍣≡)⍣≡ ⋄ add←{red ⍺⍵} ⍝ reduce, add
mag←{2=≢⍵:3 2+.×∇¨⍵ ⋄ ⍵} ⍝ magnitude
mag⊃add⍨/⌽p ⍝ part 1
⌈/,mag¨∘.add⍨p ⍝ part 2
