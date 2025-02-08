import std/random
randomize()
import os
import strutils

var gracz_hp = 200
var przeciwnik_hp = 0

var pauweł = "Pauweł"
var pauweł_2 = "Pauweł 2"
var kitek = "Kitek"
var relaxo = "Relaxo"
var bałszkitka = "Bałszkitka"

var squishy_squad = [pauweł, pauweł_2, kitek, relaxo, bałszkitka] 

proc wygrana (win: string = "WYGRAŁEŚ MORDO!"): string =
  echo $win

proc przegrana (lsr: string = "OJOJOJ, NIE UDAŁO SIEM WYGRAĆ Z NASZYM SQUISHY SQUADEM :((("): string = 
  echo $lsr

proc wynik (rsl: string = "A OTO WYNIK NASZEJ WALKI, ZIOMECZKU"): string =
  while gracz_hp > 0:

    if gracz_hp > przeciwnik_hp:
      echo wygrana()
      break
    elif gracz_hp < przeciwnik_hp:
      echo przegrana()
      break

while gracz_hp > 0:
  
  echo "~~~~o~~~~"
  sleep 1000
  echo "Witamy na naszym SQUISHY MMA!"
  sleep 2000
  echo "Nic tu nie będzie miało sensu, jak w tej grze z pajunkami *winkwink kto zna lore*, ale zróbmy to"
  sleep 1000
  echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  sleep 1000
  echo "Czy kcesz wziąć w tym udział?"
  sleep 1000

  var gracz = readLine(stdin)

  if gracz.contains ("ak"):
    echo "Czas na losowanie pierwszego przeciwnika!"
    sleep 1000
    echo "Twój przeciwnik to:"
    shuffle(squishy_squad)
    var przeciwnik = sample(squishy_squad)
    echo przeciwnik

    if przeciwnik == "Pauweł":
      przeciwnik_hp = 80
    elif przeciwnik == "Pauweł 2":
      przeciwnik_hp = 90
    elif przeciwnik == "Kitek":
      przeciwnik_hp = 100
    elif przeciwnik == "Relaxo":
      przeciwnik_hp = 125
    elif przeciwnik == "Bałszkitka":
      przeciwnik_hp = 150
    
    echo "Zaczynajmy!"

    gracz_hp -= rand(1..50)
    przeciwnik_hp -= rand(1..150)
    
    sleep 2000
    echo "Po ciężkiej walce Twoje zdrówko to " & $gracz_hp & " a zdróweczko Twojego przeciwnika to " & $przeciwnik_hp
    sleep 2000
    echo wynik()

    echo "Czas na drugiego przeciwnika z naszego Squishy Squadu"
    sleep 1000
    echo "Twój przeciwnik to:"
    shuffle(squishy_squad)
    var przeciwnik2 = sample(squishy_squad)
    echo przeciwnik2

    if przeciwnik2 == "Pauweł":
      przeciwnik_hp = 80
    elif przeciwnik2 == "Pauweł 2":
      przeciwnik_hp = 90
    elif przeciwnik2 == "Kitek":
      przeciwnik_hp = 100
    elif przeciwnik2 == "Relaxo":
      przeciwnik_hp = 125
    elif przeciwnik2 == "Bałszkitka":
      przeciwnik_hp = 150
    
    echo "Zaczynajmy!"

    gracz_hp -= rand(1..100)
    przeciwnik_hp -= rand(1..150)
    
    sleep 2000
    echo "Po ciężkiej walce Twoje zdrówko to " & $gracz_hp & " a zdróweczko Twojego przeciwnika to " & $przeciwnik_hp
    sleep 2000
    echo wynik()

    echo "Czas na trzecią walkę, tym razem zmierzysz się z:"
    shuffle(squishy_squad)
    var przeciwnik3 = sample(squishy_squad)
    echo przeciwnik3

    if przeciwnik3 == "Pauweł":
      przeciwnik_hp = 80
    elif przeciwnik3 == "Pauweł 2":
      przeciwnik_hp = 90
    elif przeciwnik3 == "Kitek":
      przeciwnik_hp = 100
    elif przeciwnik3 == "Relaxo":
      przeciwnik_hp = 125
    elif przeciwnik3 == "Bałszkitka":
      przeciwnik_hp = 150
    
    echo "Zaczynajmy!"

    gracz_hp -= rand(1..150)
    przeciwnik_hp -= rand(1..150)
    
    sleep 2000
    echo "Po ciężkiej walce Twoje zdrówko to " & $gracz_hp & " a zdróweczko Twojego przeciwnika to " & $przeciwnik_hp
    sleep 2000
    echo wynik()

    if gracz_hp > 0:
     echo "No to se chyba ogółem wygrałeś, grats"
     break
    else:
      echo "No nie udało się mordo wygrać całego Squish MMA, ale próbuj"
  
  else: 
    echo "No to nie wiem, po coś tu przylizł, żegnam"
    break
