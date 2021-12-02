p←⊃⎕NGET'p2.txt'1
forward←1 0∘× ⋄ down←0 1∘× ⋄ up←0 ¯1∘×
×/⊃+/⍎¨p ⍝ part 1
down←{a+←⍵} ⋄ up←{a-←⍵} ⋄ forward←{h+←⍵ ⋄ d+←a×⍵}
h d a←0 ⋄ ⍎¨p ⋄ h×d ⍝ part 2
