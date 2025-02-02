import std/random
randomize()
import os
import strutils

var gracz_hp = 100

var pauweł = (a: 80, b: "Pauweł")
var pauweł_2 = (a: 90, b: "Pauweł 2")
var kitek = (a: 120, b: "Kitek")
var relaxo = (a: 125, b: "Relaxo")
var bałszkitka = (a: 150, b: "Bałszkitka")

var squishy_squad = [pauweł.b, pauweł_2.b, kitek.b, relaxo.b, bałszkitka.b] 

proc wygrana (win: string = "WYGRAŁEŚ MORDO!"): string =
  echo $win

proc przegrana (lsr: string = "OJOJOJ, NIE UDAŁO SIEM WYGRAĆ Z NASZYM SQUISHY SQUADEM :((("): string = 
  echo $lsr

proc wynik (rsl: string = "A OTO WYNIK NASZEJ WALKI, ZIOMECZKU"): string =
  while gracz_hp > 0:

    if gracz_hp > pauweł.a or gracz_hp > pauweł_2.a or gracz_hp > kitek.a or gracz_hp > relaxo.a or gracz_hp > bałszkitka.a:
      echo wygrana()
      break
    elif gracz_hp < pauweł.a or gracz_hp < pauweł_2.a or gracz_hp < kitek.a or gracz_hp < relaxo.a or gracz_hp < bałszkitka.a:
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
    echo "Zaczynajmy!"
    gracz_hp -= rand(1..150)
    #przeciwnik -= rand(1..150) #nie, koniec na dzisiaj, nadal tu jest problem i nie wiem jak połączyć nazwę ze zdrowiem u random przeciwnika 
    
    
    sleep 2000
    echo "Po ciężkiej walce Twoje zdrówko to " & $gracz_hp & " a zdróweczko Twojego przeciwnika to " & $przeciwnik
    sleep 2000
    echo wynik()

  

  break
