#!/bin/bash

function kc_start_tasks()
{
  export FMT_OPTIONS="-s"

  kc_instructions \
      "$(tput setaf 4)$(cat /AmongUs/logo)$(tput sgr 0)\n\n\nHerzlich willkommen! Du bist nun ein Teil der Crew.\n" \

  export FMT_OPTIONS=""

  kc_task \
      "$(tput sgr 0)$(tput setaf 6) Um herauszufinden in welchem Raum du dich gerade befindest Tippe $(tput setaf 3)pwd$(tput sgr 0)$(tput setaf 6) in das Terminal (links) und bestätige mit der <Enter> Taste.$(tput sgr 0)\n\n" \
      "\U0001f389  $(tput setaf 2)Gut gemacht!$(tput sgr 0)\n\nDu siehst du befindest dich gerade in der $(tput setaf 1)$(tput setab 7)Cafeteria$(tput sgr 0). Das Kommando $(tput setaf 3)pwd$(tput sgr 0) (Abkürzung für Englisch 'print working directory' 'zeige aktuellen Ordner') zeigt dir immer an wo Du dich gerade befindest. Dabei wir dir der ganze Pfad angezeigt und das letzte Element ist jeweils das Ordner and dem du dich befindest.\n\n\nNotiere dir unbedingt jedes Kommando und was du damit machen kannst, du weisst ja nicht wann du es das nächste mal wieder benötigst.\n" \
      "cat /tmp/pwd | grep 1"

  kc_task \
      "$(tput sgr 0)$(tput setaf 6) Du kannst dich in einem Raum umzusehen in dem du dich gerade befindest mit dem Kommando $(tput setaf 3)ls$(tput sgr 0)$(tput setaf 6). Probiere es doch gleich mal aus.$(tput sgr 0)\n\n" \
      "\u2728  $(tput setaf 2)Super!$(tput sgr 0)\n\nEs gibt hier in der Cafeteria verschiedene Gegenstände (Dateien) mit denen du interagieren kannst und weitere Rauem (Ordner) welche du betreten kannst.\n\n" \
      "cat /tmp/ls | grep 1"

  kc_task \
      "$(tput sgr 0)$(tput setaf 6) Damit du einen Raum betreten kannst musst du das Kommando $(tput setaf 3)cd$(tput sgr 0)$(tput setaf 6) gefolgt von dem Namen des Ordner verwenden. Tippe $(tput setaf 3)cd Admin$(tput sgr 0)$(tput setaf 6) ins Terminal um in den $(tput setaf 1)$(tput setab 7)Admin$(tput sgr 0)$(tput setaf 6)  zu gelangen.\n\n" \
      "\U0001f4ab  $(tput setaf 2)Perfekt!$(tput sgr 0)\n" \
      "pgrep bash | xargs -L1 pwdx | grep Admin"
}