(define (problem transport1)
 (:domain transport)
 (:objects
  ttdriver1 - tow-truck-driver
  ccrew1 - construction-crew
  mendon sweeden henrietta wheatland rochester hilton parma honeoye-falls clarkson hamlin pittsford brockport webster churchville east-rochester spencerport brighton rush greece ogden penfield gates fairport chili riga irondequoit perinton scottsville - town
  plow2 plow1 - snowplow
  park-ridge strong rochester-general - hospital
  ttruck1 - tow-truck
  airport - transport-hub
  pvan2 pvan1 - police-van
  roch-water monroe-water mendon-water - waterco
  emt1 - emt-crew
  pdriver2 pdriver1 - plowdriver
  pu2 pu1 - police-unit
  wcrew1 - water-crew
  head-injury broken-leg heart-attack light-burn bruises - condition
  sleader2 sleader3 sleader1 - shelter-leader
  food1 food2 food3 - food
  texaco1 - service-station
  rge mendon-ge monroe-ge - powerco
  brighton-dump henrietta-dump - garbage-dump
  pittsford-plaza twelve-corners - point
  van1 - power-van
  dtruck1 - dump-truck
  pcrew1 - power-crew
  bus1 - bus
  gen2 gen1 - generator
  bdriver1 - bus-driver
  tcrew1 - tree-crew
  mendon-pond - park
  marketplace - mall
  ht2 ht1 - hazard-team
  amb1 - ambulance
  brighton-high - school
  wtruck1 - water-truck
  tdriver1 - truck-driver
  backhoe1 - backhoe
  
  ;;
  ;; problem-dependent part of the state
  ;;
  person-472953 - person
 )

;; (:htn :tasks (tlt)) ;; generic tlt
 (:htn :tasks (provide-temp-heat person-472953)) ;; org. tlt

 (:init
   (fit-in person-472953 plow2)
   (fit-in person-472953 plow1)
   (fit-in person-472953 ttruck1)
   (fit-in person-472953 pvan2)
   (fit-in person-472953 pvan1)
   (fit-in person-472953 van1)
   (fit-in person-472953 dtruck1)
   (fit-in person-472953 bus1)
   (fit-in person-472953 amb1)
   (fit-in person-472953 wtruck1)
   (fit-in person-472953 backhoe1)
   (can-lift emt1 person-472953)
   (atloc food1 twelve-corners)
   (atloc food3 airport)
   (atloc food2 strong)
   (atloc pcrew1 marketplace)
   (atloc ttdriver1 marketplace)
   (atloc dtruck1 rochester-general)
   (atloc emt1 park-ridge)
   (atloc pu2 mendon-pond)
   (atloc pu1 brighton-high)
   (atloc bdriver1 henrietta-dump)
   (atloc plow1 marketplace)
   (atloc sleader3 strong)
   (atloc sleader2 twelve-corners)
   (atloc gen1 twelve-corners)
   (atloc sleader1 twelve-corners)
   (atloc gen2 twelve-corners)
   (atloc plow2 strong)
   (atloc amb1 park-ridge)
   (atloc van1 marketplace)
   (atloc wtruck1 pittsford-plaza)
   (atloc person-472953 pittsford-plaza)
   (atloc bus1 henrietta-dump)
   (atloc wcrew1 pittsford-plaza)
   (atloc pdriver2 texaco1)
   (atloc pdriver1 marketplace)
   (atloc ttruck1 marketplace)
   (atloc ht1 brighton-high)
   (atloc tcrew1 marketplace)
   (atloc ht2 brighton-high)
   (atloc tdriver1 rochester-general)
   (atloc backhoe1 marketplace)
   (atloc ccrew1 marketplace)
   (atloc pvan2 mendon-pond)
   (atloc pvan1 brighton-high)
   ;;
   ;; non-problem-dependent part of the state
   ;;
   (in-town texaco1 brighton)
   (in-town strong rochester)
   (in-town park-ridge greece)
   (in-town rochester-general rochester)
   (hospital-doesnt-treat rochester-general broken-leg)
   (in-town brighton-dump brighton)
   (in-town henrietta-dump henrietta)
   (in-town marketplace henrietta)
   (in-town airport gates)
   (in-town brighton-high brighton)
   (in-town mendon-pond mendon)
   (in-town twelve-corners brighton)
   (in-town pittsford-plaza pittsford)
   (powerco-of rochester rge)
   (powerco-of gates rge)
   (powerco-of brighton rge)
   (powerco-of henrietta rge)
   (powerco-of greece rge)
   (powerco-of chili rge)
   (powerco-of mendon mendon-ge)
   (powerco-of hamlin monroe-ge)
   (powerco-of webster monroe-ge)
   (powerco-of irondequoit monroe-ge)
   (powerco-of parma monroe-ge)
   (powerco-of clarkson monroe-ge)
   (powerco-of sweeden monroe-ge)
   (powerco-of ogden monroe-ge)
   (powerco-of riga monroe-ge)
   (powerco-of wheatland monroe-ge)
   (powerco-of pittsford monroe-ge)
   (powerco-of scottsville monroe-ge)
   (powerco-of rush monroe-ge)
   (powerco-of perinton monroe-ge)
   (powerco-of fairport monroe-ge)
   (powerco-of penfield monroe-ge)
   (powerco-of east-rochester monroe-ge)
   (powerco-of churchville monroe-ge)
   (powerco-of brockport monroe-ge)
   (powerco-of spencerport monroe-ge)
   (powerco-of hilton monroe-ge)
   (powerco-of honeoye-falls monroe-ge)
   (waterco-of rochester roch-water)
   (waterco-of gates roch-water)
   (waterco-of brighton roch-water)
   (waterco-of henrietta roch-water)
   (waterco-of greece monroe-water)
   (waterco-of chili roch-water)
   (waterco-of mendon mendon-water)
   (waterco-of hamlin roch-water)
   (waterco-of webster monroe-water)
   (waterco-of irondequoit monroe-water)
   (waterco-of parma monroe-water)
   (waterco-of clarkson monroe-water)
   (waterco-of sweeden monroe-water)
   (waterco-of ogden monroe-water)
   (waterco-of riga monroe-water)
   (waterco-of wheatland monroe-water)
   (waterco-of pittsford monroe-water)
   (waterco-of scottsville monroe-water)
   (waterco-of rush monroe-water)
   (waterco-of perinton monroe-water)
   (waterco-of fairport monroe-water)
   (waterco-of penfield monroe-water)
   (waterco-of east-rochester monroe-water)
   (waterco-of churchville monroe-water)
   (waterco-of brockport monroe-water)
   (waterco-of spencerport monroe-water)
   (waterco-of hilton monroe-water)
   (waterco-of honeoye-falls monroe-water)
   (fit-in ttdriver1 plow2)
   (fit-in ttdriver1 plow1)
   (fit-in ttdriver1 ttruck1)
   (fit-in ttdriver1 pvan2)
   (fit-in ttdriver1 pvan1)
   (fit-in ttdriver1 van1)
   (fit-in ttdriver1 dtruck1)
   (fit-in ttdriver1 bus1)
   (fit-in ttdriver1 amb1)
   (fit-in ttdriver1 wtruck1)
   (fit-in ttdriver1 backhoe1)
   (fit-in ccrew1 plow2)
   (fit-in ccrew1 plow1)
   (fit-in ccrew1 ttruck1)
   (fit-in ccrew1 pvan2)
   (fit-in ccrew1 pvan1)
   (fit-in ccrew1 van1)
   (fit-in ccrew1 dtruck1)
   (fit-in ccrew1 bus1)
   (fit-in ccrew1 amb1)
   (fit-in ccrew1 wtruck1)
   (fit-in ccrew1 backhoe1)
   (fit-in emt1 plow2)
   (fit-in emt1 plow1)
   (fit-in emt1 ttruck1)
   (fit-in emt1 pvan2)
   (fit-in emt1 pvan1)
   (fit-in emt1 van1)
   (fit-in emt1 dtruck1)
   (fit-in emt1 bus1)
   (fit-in emt1 amb1)
   (fit-in emt1 wtruck1)
   (fit-in emt1 backhoe1)
   (fit-in pdriver2 plow2)
   (fit-in pdriver2 plow1)
   (fit-in pdriver2 ttruck1)
   (fit-in pdriver2 pvan2)
   (fit-in pdriver2 pvan1)
   (fit-in pdriver2 van1)
   (fit-in pdriver2 dtruck1)
   (fit-in pdriver2 bus1)
   (fit-in pdriver2 amb1)
   (fit-in pdriver2 wtruck1)
   (fit-in pdriver2 backhoe1)
   (fit-in pu2 plow2)
   (fit-in pu2 plow1)
   (fit-in pu2 ttruck1)
   (fit-in pu2 pvan2)
   (fit-in pu2 pvan1)
   (fit-in pu2 van1)
   (fit-in pu2 dtruck1)
   (fit-in pu2 bus1)
   (fit-in pu2 amb1)
   (fit-in pu2 wtruck1)
   (fit-in pu2 backhoe1)
   (fit-in pdriver1 plow2)
   (fit-in pdriver1 plow1)
   (fit-in pdriver1 ttruck1)
   (fit-in pdriver1 pvan2)
   (fit-in pdriver1 pvan1)
   (fit-in pdriver1 van1)
   (fit-in pdriver1 dtruck1)
   (fit-in pdriver1 bus1)
   (fit-in pdriver1 amb1)
   (fit-in pdriver1 wtruck1)
   (fit-in pdriver1 backhoe1)
   (fit-in pu1 plow2)
   (fit-in pu1 plow1)
   (fit-in pu1 ttruck1)
   (fit-in pu1 pvan2)
   (fit-in pu1 pvan1)
   (fit-in pu1 van1)
   (fit-in pu1 dtruck1)
   (fit-in pu1 bus1)
   (fit-in pu1 amb1)
   (fit-in pu1 wtruck1)
   (fit-in pu1 backhoe1)
   (fit-in wcrew1 plow2)
   (fit-in wcrew1 plow1)
   (fit-in wcrew1 ttruck1)
   (fit-in wcrew1 pvan2)
   (fit-in wcrew1 pvan1)
   (fit-in wcrew1 van1)
   (fit-in wcrew1 dtruck1)
   (fit-in wcrew1 bus1)
   (fit-in wcrew1 amb1)
   (fit-in wcrew1 wtruck1)
   (fit-in wcrew1 backhoe1)
   (fit-in sleader2 plow2)
   (fit-in sleader2 plow1)
   (fit-in sleader2 ttruck1)
   (fit-in sleader2 pvan2)
   (fit-in sleader2 pvan1)
   (fit-in sleader2 van1)
   (fit-in sleader2 dtruck1)
   (fit-in sleader2 bus1)
   (fit-in sleader2 amb1)
   (fit-in sleader2 wtruck1)
   (fit-in sleader2 backhoe1)
   (fit-in sleader3 plow2)
   (fit-in sleader3 plow1)
   (fit-in sleader3 ttruck1)
   (fit-in sleader3 pvan2)
   (fit-in sleader3 pvan1)
   (fit-in sleader3 van1)
   (fit-in sleader3 dtruck1)
   (fit-in sleader3 bus1)
   (fit-in sleader3 amb1)
   (fit-in sleader3 wtruck1)
   (fit-in sleader3 backhoe1)
   (fit-in sleader1 plow2)
   (fit-in sleader1 plow1)
   (fit-in sleader1 ttruck1)
   (fit-in sleader1 pvan2)
   (fit-in sleader1 pvan1)
   (fit-in sleader1 van1)
   (fit-in sleader1 dtruck1)
   (fit-in sleader1 bus1)
   (fit-in sleader1 amb1)
   (fit-in sleader1 wtruck1)
   (fit-in sleader1 backhoe1)
   (fit-in pcrew1 plow2)
   (fit-in pcrew1 plow1)
   (fit-in pcrew1 ttruck1)
   (fit-in pcrew1 pvan2)
   (fit-in pcrew1 pvan1)
   (fit-in pcrew1 van1)
   (fit-in pcrew1 dtruck1)
   (fit-in pcrew1 bus1)
   (fit-in pcrew1 amb1)
   (fit-in pcrew1 wtruck1)
   (fit-in pcrew1 backhoe1)
   (fit-in bdriver1 plow2)
   (fit-in bdriver1 plow1)
   (fit-in bdriver1 ttruck1)
   (fit-in bdriver1 pvan2)
   (fit-in bdriver1 pvan1)
   (fit-in bdriver1 van1)
   (fit-in bdriver1 dtruck1)
   (fit-in bdriver1 bus1)
   (fit-in bdriver1 amb1)
   (fit-in bdriver1 wtruck1)
   (fit-in bdriver1 backhoe1)
   (fit-in tcrew1 plow2)
   (fit-in tcrew1 plow1)
   (fit-in tcrew1 ttruck1)
   (fit-in tcrew1 pvan2)
   (fit-in tcrew1 pvan1)
   (fit-in tcrew1 van1)
   (fit-in tcrew1 dtruck1)
   (fit-in tcrew1 bus1)
   (fit-in tcrew1 amb1)
   (fit-in tcrew1 wtruck1)
   (fit-in tcrew1 backhoe1)
   (fit-in ht2 plow2)
   (fit-in ht2 plow1)
   (fit-in ht2 ttruck1)
   (fit-in ht2 pvan2)
   (fit-in ht2 pvan1)
   (fit-in ht2 van1)
   (fit-in ht2 dtruck1)
   (fit-in ht2 bus1)
   (fit-in ht2 amb1)
   (fit-in ht2 wtruck1)
   (fit-in ht2 backhoe1)
   (fit-in ht1 plow2)
   (fit-in ht1 plow1)
   (fit-in ht1 ttruck1)
   (fit-in ht1 pvan2)
   (fit-in ht1 pvan1)
   (fit-in ht1 van1)
   (fit-in ht1 dtruck1)
   (fit-in ht1 bus1)
   (fit-in ht1 amb1)
   (fit-in ht1 wtruck1)
   (fit-in ht1 backhoe1)
   (fit-in tdriver1 plow2)
   (fit-in tdriver1 plow1)
   (fit-in tdriver1 ttruck1)
   (fit-in tdriver1 pvan2)
   (fit-in tdriver1 pvan1)
   (fit-in tdriver1 van1)
   (fit-in tdriver1 dtruck1)
   (fit-in tdriver1 bus1)
   (fit-in tdriver1 amb1)
   (fit-in tdriver1 wtruck1)
   (fit-in tdriver1 backhoe1)
   (fit-in gen2 plow2)
   (fit-in gen2 plow1)
   (fit-in gen2 ttruck1)
   (fit-in gen2 pvan2)
   (fit-in gen2 pvan1)
   (fit-in gen2 van1)
   (fit-in gen2 dtruck1)
   (fit-in gen2 bus1)
   (fit-in gen2 amb1)
   (fit-in gen2 wtruck1)
   (fit-in gen2 backhoe1)
   (fit-in gen1 plow2)
   (fit-in gen1 plow1)
   (fit-in gen1 ttruck1)
   (fit-in gen1 pvan2)
   (fit-in gen1 pvan1)
   (fit-in gen1 van1)
   (fit-in gen1 dtruck1)
   (fit-in gen1 bus1)
   (fit-in gen1 amb1)
   (fit-in gen1 wtruck1)
   (fit-in gen1 backhoe1)
   (fit-in food1 plow2)
   (fit-in food1 plow1)
   (fit-in food1 ttruck1)
   (fit-in food1 pvan2)
   (fit-in food1 pvan1)
   (fit-in food1 van1)
   (fit-in food1 dtruck1)
   (fit-in food1 bus1)
   (fit-in food1 amb1)
   (fit-in food1 wtruck1)
   (fit-in food1 backhoe1)
   (fit-in food2 plow2)
   (fit-in food2 plow1)
   (fit-in food2 ttruck1)
   (fit-in food2 pvan2)
   (fit-in food2 pvan1)
   (fit-in food2 van1)
   (fit-in food2 dtruck1)
   (fit-in food2 bus1)
   (fit-in food2 amb1)
   (fit-in food2 wtruck1)
   (fit-in food2 backhoe1)
   (fit-in food3 plow2)
   (fit-in food3 plow1)
   (fit-in food3 ttruck1)
   (fit-in food3 pvan2)
   (fit-in food3 pvan1)
   (fit-in food3 van1)
   (fit-in food3 dtruck1)
   (fit-in food3 bus1)
   (fit-in food3 amb1)
   (fit-in food3 wtruck1)
   (fit-in food3 backhoe1)
   (can-drive ttdriver1 ttruck1)
   (can-drive emt1 amb1)
   (can-drive pcrew1 van1)   
   (can-drive tdriver1 plow2)
   (can-drive tdriver1 plow1)
   (can-drive tdriver1 ttruck1)
   (can-drive tdriver1 dtruck1)
   (can-drive tdriver1 wtruck1)
   (can-drive tdriver1 backhoe1)
   (can-drive bdriver1 bus1)
   (can-drive pu2 pvan2)
   (can-drive pu2 pvan1)
   (can-drive pu1 pvan2)
   (can-drive pu1 pvan1)
   (can-drive ccrew1 backhoe1)
   (can-drive wcrew1 wtruck1)
   (can-drive pdriver2 plow2)
   (can-drive pdriver2 plow1)
   (can-drive pdriver1 plow2)
   (can-drive pdriver1 plow1)
   (can-lift emt1 ttdriver1)
   (can-lift emt1 ccrew1)
   (can-lift emt1 pdriver2)
   (can-lift emt1 pu2)
   (can-lift emt1 pdriver1)
   (can-lift emt1 pu1)
   (can-lift emt1 wcrew1)
   (can-lift emt1 sleader2)
   (can-lift emt1 sleader3)
   (can-lift emt1 sleader1)
   (can-lift emt1 pcrew1)
   (can-lift emt1 bdriver1)
   (can-lift emt1 tcrew1)
   (can-lift emt1 ht2)
   (can-lift emt1 ht1)
   (can-lift emt1 tdriver1)
   (can-lift ccrew1 food1)
   (can-lift ccrew1 food2)
   (can-lift ccrew1 food3)
   (can-lift ccrew1 gen2)
   (can-lift ccrew1 gen1)
   (can-lift wcrew1 food1)
   (can-lift wcrew1 food2)
   (can-lift wcrew1 food3)
   (can-lift wcrew1 gen2)
   (can-lift wcrew1 gen1)
   (can-lift pcrew1 food1)
   (can-lift pcrew1 food2)
   (can-lift pcrew1 food3)
   (can-lift pcrew1 gen2)
   (can-lift pcrew1 gen1)
   (can-lift tcrew1 food1)
   (can-lift tcrew1 food2)
   (can-lift tcrew1 food3)
   (can-lift tcrew1 gen2)
   (can-lift tcrew1 gen1)
   (can-lift ht2 food1)
   (can-lift ht2 food2)
   (can-lift ht2 food3)
   (can-lift ht2 gen2)
   (can-lift ht2 gen1)
   (can-lift ht1 food1)
   (can-lift ht1 food2)
   (can-lift ht1 food3)
   (can-lift ht1 gen2)
   (can-lift ht1 gen1)
 )
)
