<<<<<<< HEAD

(* ===== Vaja 1: Uvod v OCaml  ===== *)


(* Funkcija "predzadnji_element l" vrne predzadnji element seznama l. 
 V primeru prekratkega seznama vrne napako.
 ----------
 # predzadnji_element [1; 2; 3; 4];;
 - : int = 3
 ---------- *)

let rec predzadnji_element l =
  match l with
  | [] -> failwith "Prekratek seznam"
  | [x] -> failwith "Prekratek seznam"
  | [x;y] -> x
  | hd::tl -> predzadnji_element tl
  
let rec predzadnji_element2 = function
  | [] | [_] -> failwith "Prekratek seznam."
  | [x;_] -> x
  |  _::tl -> predzadnji_element2 tl


(* Funkcija "poisci k l" poi��e k-ti element v seznamu l.
 �tevil�enje elementov seznama (kot ponavadi) pri�nemo z 0.
 Privzamemo, da je k nenegativno �tevilo.
 V primeru prekratkega seznama funkcija vrne napako.
 ----------
 # poisci 2 [0; 0; 1; 0; 0; 0];;
 - : int = 1
 ---------- *)

let rec poisci k l =
  match (k,l) with
  | (0, hd::tl) -> hd
  | (_, []) -> failwith "Prekratek seznam"
  | (k, hd::tl) -> poisci (k-1) tl

(* Funkcija "podvoji l" podvoji pojavitve elementov v seznamu l.
 ----------
 # podvoji [1; 2; 3];;
 - : int list = [1; 1; 2; 2; 3; 3]
 ---------- *)

let podvoji l = ()

(* Funkcija "razdeli k l" seznam l razdeli na dva seznama. Prvi vsebuje prvih k elementov
 seznama l, v drugem pa vsi ostali. Funkcija vrne par teh dveh seznamov.
 V primeru, ko je k izven mej seznama, je bo primeren od seznamov enak [])
 ----------
 # razdeli 2 [1; 2; 3; 4; 5];;
 - : int list * int list = ([1; 2], [3; 4; 5])
 # razdeli 7 [1; 2; 3; 4; 5];;
 - : int list * int list = ([1; 2; 3; 4; 5], [])
 ---------- *)
 
let rec razdeli k l =
  match (k, l) with
  | (0, l) -> ([], l)
  | (k, []) -> ([],[])
  | (k,hd::tl) ->
    let (l1, l2) = razdeli (k-1) tl in
	(hd::l1, l2)

(* Funkcija "zbrisi k l" iz seznama l pobri�e k-ti element.
 V primeru prekratkega seznama funkcija vrne napako.
 ----------
 # zbrisi 3 [0; 0; 0; 1; 0; 0];;
 - : int list = [0; 0; 0; 0; 0]
 ---------- *)
 
let rec zbrisi k l = 
  match (k, l) with
  |(0, hd::tl) -> tl
  |(k, []) -> failwith "ne gre"
  |(k, hd::tl) -> hd::(zbrisi (k-1) tl)

(* Funkcija "rezina i k l" sestavi novi seznam, ki vsebuje elemente seznama l od vklju�no
 i-tega do k-tega (brez k-tega).
 Predpostavimo, da sta i in k primerna.
 ----------
 # rezina 3 6 [0; 0; 0; 1; 2; 3; 0; 0];;
 - : int list = [1; 2; 3]
 ---------- *)
 
let rezina i k l = ()

(* Funkcija "vstavi x k l" na k-to mesto seznama l vrine element x.
 �e je k izven mej seznama, ga doda na za�etek oz. konec.
 ----------
 # vstavi 1 3 [0; 0; 0; 0; 0];;
 - : int list = [0; 0; 0; 1; 0; 0]
 # vstavi 1 (-2) [0; 0; 0; 0; 0];;
 - : int list = [1; 0; 0; 0; 0; 0]
 ---------- *)

let vstavi x k l = ()

(* Funkcija "zavrti n l" seznam l zavrti za n mest v levo.
 Predpostavimo, da je n v mejah seznama.
 ----------
 # zavrti 2 [1; 2; 3; 4; 5];;
 - : int list = [3; 4; 5; 1; 2]
 ---------- *)

let zavrti n l = ()
 
(* Funkcija "pobrisi x l" iz seznam l izbri�e vse pojavitve elementa x.
 ----------
 # pobrisi 1 [1; 1; 2; 3; 1; 2; 3; 1; 1];;
 - : int list = [2; 3; 2; 3]
 ---------- *)

let pobrisi x l = ()

(* Funkcija "je_palindrom l" ugotovi ali seznam l predstavlja palindrom.
 Namig: Pomagaj si s pomo�no funkcijo, ki obrne vrstni red elementov seznama. 
 ----------
 # je_palindrom [1; 2; 3; 2; 1];;
 - : bool = true
 # je_palindrom [0; 0; 1; 0];;
 - : bool = false
 ---------- *)
 
let je_palindrom l = ()
  
(* Funkcija "max_po_komponentah l1 l2" vrne seznam, ki ima za elemente
 ve�jega od elementov na ustreznih mestih v seznamih l1 in l2.
 Skupni seznam ima dol�ino kraj�ega od seznamov l1 in l2. 
 ----------
 # max_po_komponentah [5; 4; 3; 2; 1] [0; 1; 2; 3; 4; 5; 6];;
 - : int list = [5; 4; 3; 3; 4]
 ---------- *)
let max_po_komponentah l1 l2 = ()
  
(* Funkcija "drugi_najvecji l" vrne drugo najve�jo vrednost v seznamu l.
 Ponovitve elementa se �tejejo kot ena vrednost.
 Predpostavimo, da ima seznam vsaj dva razli�na elementa.
 Namig: Pomagaj si s pomo�no funkcijo, ki poi��e najve�jo vrednost v seznamu. 
 ----------
 # drugi_najvecji [1; 10; 11; 11; 5; 4; 10];;
 - : int = 10
 ---------- *)
 
=======

(* ===== Vaja 1: Uvod v OCaml  ===== *)


(* Funkcija "predzadnji_element l" vrne predzadnji element seznama l. 
 V primeru prekratkega seznama vrne napako.
 ----------
 # predzadnji_element [1; 2; 3; 4];;
 - : int = 3
 ---------- *)

let rec predzadnji_element l =
  match l with
  | [] -> failwith "Prekratek seznam"
  | [x] -> failwith "Prekratek seznam"
  | [x;y] -> x
  | hd::tl -> predzadnji_element tl
  
let rec predzadnji_element2 = function
  | [] | [_] -> failwith "Prekratek seznam."
  | [x;_] -> x
  |  _::tl -> predzadnji_element2 tl


(* Funkcija "poisci k l" poi��e k-ti element v seznamu l.
 �tevil�enje elementov seznama (kot ponavadi) pri�nemo z 0.
 Privzamemo, da je k nenegativno �tevilo.
 V primeru prekratkega seznama funkcija vrne napako.
 ----------
 # poisci 2 [0; 0; 1; 0; 0; 0];;
 - : int = 1
 ---------- *)

let rec poisci k l =
  match (k,l) with
  | (0, hd::tl) -> hd
  | (_, []) -> failwith "Prekratek seznam"
  | (k, hd::tl) -> poisci (k-1) tl

(* Funkcija "podvoji l" podvoji pojavitve elementov v seznamu l.
 ----------
 # podvoji [1; 2; 3];;
 - : int list = [1; 1; 2; 2; 3; 3]
 ---------- *)

let podvoji l = ()

(* Funkcija "razdeli k l" seznam l razdeli na dva seznama. Prvi vsebuje prvih k elementov
 seznama l, v drugem pa vsi ostali. Funkcija vrne par teh dveh seznamov.
 V primeru, ko je k izven mej seznama, je bo primeren od seznamov enak [])
 ----------
 # razdeli 2 [1; 2; 3; 4; 5];;
 - : int list * int list = ([1; 2], [3; 4; 5])
 # razdeli 7 [1; 2; 3; 4; 5];;
 - : int list * int list = ([1; 2; 3; 4; 5], [])
 ---------- *)
 
let rec razdeli k l =
  match (k, l) with
  | (0, l) -> ([], l)
  | (k, []) -> ([],[])
  | (k,hd::tl) ->
    let (l1, l2) = razdeli (k-1) tl in
	(hd::l1, l2)

(* Funkcija "zbrisi k l" iz seznama l pobri�e k-ti element.
 V primeru prekratkega seznama funkcija vrne napako.
 ----------
 # zbrisi 3 [0; 0; 0; 1; 0; 0];;
 - : int list = [0; 0; 0; 0; 0]
 ---------- *)
 
let rec zbrisi k l = 
  match (k, l) with
  |(0, hd::tl) -> tl
  |(k, []) -> failwith "ne gre"
  |(k, hd::tl) -> hd::(zbrisi (k-1) tl)

(* Funkcija "rezina i k l" sestavi novi seznam, ki vsebuje elemente seznama l od vklju�no
 i-tega do k-tega (brez k-tega).
 Predpostavimo, da sta i in k primerna.
 ----------
 # rezina 3 6 [0; 0; 0; 1; 2; 3; 0; 0];;
 - : int list = [1; 2; 3]
 ---------- *)
 
let rezina i k l = ()

(* Funkcija "vstavi x k l" na k-to mesto seznama l vrine element x.
 �e je k izven mej seznama, ga doda na za�etek oz. konec.
 ----------
 # vstavi 1 3 [0; 0; 0; 0; 0];;
 - : int list = [0; 0; 0; 1; 0; 0]
 # vstavi 1 (-2) [0; 0; 0; 0; 0];;
 - : int list = [1; 0; 0; 0; 0; 0]
 ---------- *)

let vstavi x k l = ()

(* Funkcija "zavrti n l" seznam l zavrti za n mest v levo.
 Predpostavimo, da je n v mejah seznama.
 ----------
 # zavrti 2 [1; 2; 3; 4; 5];;
 - : int list = [3; 4; 5; 1; 2]
 ---------- *)

let zavrti n l = ()
 
(* Funkcija "pobrisi x l" iz seznam l izbri�e vse pojavitve elementa x.
 ----------
 # pobrisi 1 [1; 1; 2; 3; 1; 2; 3; 1; 1];;
 - : int list = [2; 3; 2; 3]
 ---------- *)

let pobrisi x l = ()

(* Funkcija "je_palindrom l" ugotovi ali seznam l predstavlja palindrom.
 Namig: Pomagaj si s pomo�no funkcijo, ki obrne vrstni red elementov seznama. 
 ----------
 # je_palindrom [1; 2; 3; 2; 1];;
 - : bool = true
 # je_palindrom [0; 0; 1; 0];;
 - : bool = false
 ---------- *)
 
let je_palindrom l = ()
  
(* Funkcija "max_po_komponentah l1 l2" vrne seznam, ki ima za elemente
 ve�jega od elementov na ustreznih mestih v seznamih l1 in l2.
 Skupni seznam ima dol�ino kraj�ega od seznamov l1 in l2. 
 ----------
 # max_po_komponentah [5; 4; 3; 2; 1] [0; 1; 2; 3; 4; 5; 6];;
 - : int list = [5; 4; 3; 3; 4]
 ---------- *)
let max_po_komponentah l1 l2 = ()
  
(* Funkcija "drugi_najvecji l" vrne drugo najve�jo vrednost v seznamu l.
 Ponovitve elementa se �tejejo kot ena vrednost.
 Predpostavimo, da ima seznam vsaj dva razli�na elementa.
 Namig: Pomagaj si s pomo�no funkcijo, ki poi��e najve�jo vrednost v seznamu. 
 ----------
 # drugi_najvecji [1; 10; 11; 11; 5; 4; 10];;
 - : int = 10
 ---------- *)
 
>>>>>>> b8da05b69b923f65accebf2979472cff9fb4854f
let drugi_najvecji l = ()