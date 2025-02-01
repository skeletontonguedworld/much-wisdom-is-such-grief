import std/random
randomize()

import os

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

    if gracz_hp > int Pauweł or gracz_hp > int Pauweł_2 or gracz_hp > int Kitek or gracz_hp > int Relaxo or gracz_hp > int Bałszkitka: #tutaj wiem, o co chodzi, ale nie umiem tego rozwiązać
      echo wygrana()
      break
    elif gracz_hp < int Kitek:
      echo przegrana()
      break

proc losowanie (los: string = "Czas na losowanie pierwszego przeciwnika"): string =
  shuffle(squishy_squad)
  var przeciwnik = sample(squishy_squad)
  echo przeciwnik

while gracz_hp > 0:
  
  echo "~~~~o~~~~"
  sleep 1000
  echo "Witamy na naszym SQUISHY MMA!"
  sleep 2000
  echo "Nic tu nie będzie miało sensu, jak w tej grze z pajunkami *winkwink kto zna lore*, ale zróbmy to"
  sleep 1000
  echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  sleep 1000
  echo losowanie()
  

  break
