import std/random
randomize()
import os
import strutils

var gracz_hp = 100

type 
  Squish = enum 
    Pauweł = 80
    Pauweł_2 = 90
    Kitek = 120
    Relaxo = 125
    Bałszkitka = 150

var squishy_squad = [Pauweł, Pauweł_2, Kitek, Relaxo, Bałszkitka] 

proc wygrana (win: string = "WYGRAŁEŚ MORDO!"): string =
  echo $win

proc przegrana (lsr: string = "OJOJOJ, NIE UDAŁO SIEM WYGRAĆ Z NASZYM SQUISHY SQUADEM :((("): string = 
  echo $lsr

proc wynik (rsl: string = "A OTO WYNIK NASZEJ WALKI, ZIOMECZKU"): string =
  while gracz_hp > 0:

    if gracz_hp.ord > Pauweł.ord or gracz_hp.ord > Pauweł_2.ord or gracz_hp.ord > Kitek.ord or gracz_hp.ord > Relaxo.ord or gracz_hp.ord > Bałszkitka.ord:
      echo wygrana()
      break
    elif gracz_hp < Pauweł.ord or gracz_hp.ord < Pauweł_2.ord or gracz_hp.ord < Kitek.ord or gracz_hp.ord < Relaxo.ord or gracz_hp.ord < Bałszkitka.ord:
      echo przegrana()
      break

proc losowanie (los: string = "Czas na losowanie przeciwnika"): string =
  shuffle(squishy_squad)
  var przeciwnik = sample(squishy_squad)
  echo przeciwnik.ord

var przeciwnikfinal = losowanie()

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
    przeciwnik.ord -= rand(1..150)


  

  break
