⎕IO←0 ⋄ ⎕PP←17
p←⍎⊃⊃⎕NGET'p6.txt'1
≢{(¯1+⍵+7×0=⍵),8/⍨+/0=⍵}⍣80⊢p ⍝ part 1
+/{n+@6⊢(1↓⍵),n←⊃⍵}⍣256⊢{a⊣a[⍵]+←1⊣a←9/0}p ⍝ part 2
