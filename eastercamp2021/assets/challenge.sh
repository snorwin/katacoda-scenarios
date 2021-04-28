#!/bin/bash

function kc_start_tasks()
{
  kc_instructions \
      "$(tput setaf 4)$(cat /AmongUs/logo)$(tput sgr 0)\n\n\nHerzlich willkommen! Du bist nun ein Teil der Crew.\n" \

  kc_task \
      "$(tput sgr 0)$(tput setaf 6) Um herauszufinden in welchem Raum du dich gerade befindest Tippe $(tput setaf 3)pwd$(tput sgr 0)$(tput setaf 6) in das Terminal (links) und bestätige jedes Kommando mit der $(tput setaf 3)ENTER$(tput sgr 0)$(tput setaf 6) Taste.$(tput sgr 0)\n\n" \
      "\U0001f389  Gut gemacht!\n\nDu siehst du befindest dich gerade in der $(tput setaf 1)$(tput setab 7)Cafeteria$(tput sgr 0). Das Kommando $(tput setaf 3)pwd$(tput sgr 0) (Abkürzung für Englisch 'print working directory' 'zeige aktuellen Ordner') zeigt dir immer an wo Du dich gerade befindest. Dabei wir dir der ganze Pfad angezeigt und das letzte Element ist jeweils das Ordner and dem du dich befindest.\n\n\nNotiere dir unbedingt jedes Kommando und was du damit machen kannst, du weisst ja nicht wann du es das nächste mal wieder benötigst.\n" \
      "cat /tmp/pwd | grep 1"

  kc_task \
      "$(tput sgr 0)$(tput setaf 6) Du kannst dich in einem Raum umzusehen in dem du dich gerade befindest mit dem Kommando $(tput setaf 3)ls$(tput sgr 0)$(tput setaf 6). Probiere es doch gleich mal aus.$(tput sgr 0)\n\n" \
      "\u2728  Super!\n\nEs gibt hier in der Cafeteria verschiedene Gegenstände ($(tput bold)Dateien$(tput sgr 0) und $(tput bold)$(tput setaf 2)Programme$(tput sgr 0)) mit denen du interagieren kannst und weitere Räume ($(tput bold)$(tput setaf 4)Ordner$(tput sgr 0)) welche du betreten kannst.\n\n" \
      "cat /tmp/ls | grep 1"

  kc_task \
      "$(tput sgr 0)$(tput setaf 6) Damit du einen Raum betreten kannst musst du das Kommando $(tput setaf 3)cd$(tput sgr 0)$(tput setaf 6) gefolgt von dem Namen des Ordner verwenden. Tippe $(tput setaf 3)cd Admin$(tput sgr 0)$(tput setaf 6) ins Terminal um in den $(tput setaf 1)$(tput setab 7)Admin$(tput sgr 0)$(tput setaf 6)  zu gelangen.\n\n" \
      "\U0001f4ab  Perfekt!\n\nFalls du jetzt wieder in den Raum von vorher zurück mochtest kannst du einfach $(tput setaf 3)cd ..$(tput sgr 0) eingeben." \
      "pgrep bash | xargs -L1 pwdx | grep Admin"

  kc_task \
    "$(tput sgr 0)$(tput setaf 6) Um das Spiel zu starten, gehe nun zurück in die $(tput setaf 1)$(tput setab 7)Cafeteria$(tput sgr 0)$(tput setaf 6).\n\n" \
    "\nFalls du dich mal komplett verirrt hast, verwende das Kommando $(tput setaf 3)cd /AmongUs/Cafeteria$(tput sgr 0) um immer wieder in die $(tput setaf 1)$(tput setab 7)Cafeteria$(tput sgr 0) zu gelangen.\n\nJetzt wird es aber langsam Zeit dass du deine Aufgaben erledigst, aber nimm dich in acht vor dem Imposter.\n\nDeine erste Aufgabe wartet im $(tput setaf 1)$(tput setab 7)Reaktor$(tput sgr 0) auf dich. Sehe dir die Map an, um herauszufinden wie du zu dem Raum gelangen kannst. " \
    "! pgrep bash | xargs -L1 pwdx | grep Cafeteria/"

  kc_task \
    "$(tput sgr 0)$(tput setaf 6) Einen Überblick von der ganzen Map (Karte) bekommst du am besten, wenn du in der $(tput setaf 1)$(tput setab 7)Cafeteria$(tput sgr 0)$(tput setaf 6) das Kommando $(tput setaf 3)tree -d$(tput sgr 0)$(tput setaf 6) verwendest. Versuche es doch einmal.\n\n" \
    "\U0001f62e  Wow, da gibt es ja viele verscheiden Räume.\n\nVon der $(tput setaf 1)$(tput setab 7)Cafeteria$(tput sgr 0) kommst du aber nicht direkt zum $(tput setaf 1)$(tput setab 7)Reaktor$(tput sgr 0) Raum, du musst zuerst ins $(tput setaf 1)$(tput setab 7)Lager$(tput sgr 0).\n" \
    "cat /tmp/tree | grep 1"

  kc_task \
    "$(tput sgr 0)$(tput setaf 6)Probiere nun mit $(tput setaf 3)cd$(tput sgr 0)$(tput setaf 6) in das $(tput setaf 1)$(tput setab 7)Lager$(tput sgr 0)$(tput setaf 6) und anschliessend zum $(tput setaf 1)$(tput setab 7)Reaktor$(tput sgr 0)$(tput setaf 6) zu kommen.\n\n" \
    "" \
    "pgrep bash | xargs -L1 pwdx | grep Reaktor"

  rm /tmp/ls

  kc_task \
    "$(tput sgr 0)$(tput setaf 6)Du bist im $(tput setaf 1)$(tput setab 7)Reaktor$(tput sgr 0)$(tput setaf 6) \u2622 angekommen, sehe dich mal einwenig im Raum um.\n\n" \
    "\nSiehst du das Programm $(tput bold)$(tput setaf 2)Download$(tput sgr 0)?\n" \
    "cat /tmp/ls | grep 1"

  kc_task \
    "$(tput sgr 0)$(tput setaf 6)Starte das Download Programm indem du $(tput setaf 3)./Download$(tput sgr 0)$(tput setaf 6) als Kommando eingibst.\n\n" \
    "" \
    "cat /tmp/download | grep 1"
}