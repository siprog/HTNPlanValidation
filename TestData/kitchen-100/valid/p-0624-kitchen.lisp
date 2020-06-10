(define (problem p624)
 (:domain kitchen)
 (:objects
  pot1 pot2 pot3 pot4 - cookingPot
  contentPot1 contentPot2 contentPot3 contentPot4 - content
  pan1 pan2 - pan
  contentPan1 contentPan2 - content
  bowl1 bowl2 bowl3 - bowl
  contentBowl1 contentBowl2 contentBowl3 - content
  rt1 - roastingTin
  contentRT1 - content
  tray1 - bakingTray
  contentTray1 - content
  spaghetti cannelloni tortellini ravioli - noodles
 )
 (:htn
  :tasks (and
   (makeBruchetta)
   (makeNoodles ravioli pot1)
   (makeAllArrabbiata pot2)
   (makeMascarpone bowl1)
  )
  :ordering ( )
  :constraints ( ))
 (:init
     (contentOf pot1 contentPot1)
     (contentOf pot2 contentPot2)
     (contentOf pot3 contentPot3)
     (contentOf pot4 contentPot4)
     (contentOf pan1 contentPan1)
     (contentOf pan2 contentPan2)
     (contentOf bowl1 contentBowl1)
     (contentOf bowl2 contentBowl2)
     (contentOf bowl3 contentBowl3)
     (contentOf rt1 contentRT1)
     (contentOf tray1 contentTray1)
 )
)
