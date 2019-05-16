(require "./Chemestry.lisp")

;Химическая реакция

(Химия  хим_реакция (Mg 1 OH 2 ) + (H 2 SO4 1)) 
;((MG 1 OH 2) + (H 2 SO4 1) -> (MG 2 SO4 2) + (H 1 OH 1))
(Химия  хим_реакция (K 1 Cl 1 ) + (H 1 Br 1)) 
;((K 1 CL 1) + (H 1 BR 1) -> (K 1 BR 1) + (H 1 CL 1))


;Определить вещество

(Химия  определить (Mg 1 OH 2)) ;CSHELOCH
(Химия  определить (H 2 SO4 1)) ;KISLOTA
(Химия  определить (Mg 1 SO4 1)) ;SOLI
(Химия  определить (K 1 Cl 1)) ;SOLI


;Определить вещества в химической реакции

(Химия  что_на_входе_и_выходе ((K 1 CL 1) + (H 1 BR 1) -> (K 1 BR 1) + (H 1 CL 1))) 
;(SOLI + KISLOTA -> SOLI + KISLOTA)
(Химия  что_на_входе_и_выходе ((MG 1 OH 2) + (H 2 SO4 1) -> (MG 2 SO4 2) + (H 1 OH 1))) 
;(CSHELOCH + KISLOTA -> SOLI + CSHELOCH)


