import std/random
randomize()

import os

var gracz_hp = 100
var kitek_hp = 100
var pauweł_hp = 80
var pauweł2_hp = 90
var relaxo_hp = 125 
var bałszkitka_hp = 150

proc wygrana (win: string = "WYGRAŁEŚ MORDO!"): string =
  echo $win

proc przegrana (lsr: string = "OJOJOJ, NIE UDAŁO SIEM WYGRAĆ Z NASZYM SQUISHY SQUADEM :((("): string = 
  echo $lsr

proc wynik (rsl: string = "A OTO WYNIK NASZEJ WALKI, ZIOMECZKU"): string =
  while gracz_hp > 0:

    if gracz_hp > kitek_hp or gracz_hp > pauweł_hp or gracz_hp > pauweł2_hp or gracz_hp > relaxo_hp or gracz_hp > bałszkitka_hp:
      echo wygrana()
      break
    elif gracz_hp < kitek_hp or gracz_hp < pauweł_hp or gracz_hp < pauweł2_hp or gracz_hp < relaxo_hp or gracz_hp < bałszkitka_hp:
      echo przegrana()
      break

while gracz_hp > 0:
  

