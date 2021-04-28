#!/bin/bash

function kc_start_tasks()
{
  kc_instructions \
      "Herzlich willkommen! Du bist nun ein Teil der Crew.\n" \

  kc_task \
      " Um herauszufinden in welchem Raum du dich gerade befindest Tippe \`$(tput setaf 3)pwd$(tput sgr 0)\` in das Terminal (links) und bestätige mit <Enter> Taste.\n" \
      "Gut gemacht!\n" \
      "cat /tmp/pwd | grep 1"

  kc_instructions \
      "Du siehst du befindest dich gerade in der $(tput setaf 1)$(tput setab 7)Cafeteria$(tput sgr 0). Das Kommando \`$(tput setaf 3)pwd$(tput sgr 0)\` (Abkürzung für Englisch 'print working directory' 'zeige aktuellen Ordner') zeigt dir immer an wo Du dich gerade befindest. Dabei wir dir der ganze Pfad angezeigt und das letzte Element ist jeweils das Ordner and dem du dich befindest.\n"

  kc_instructions \
    "Notiere dir unbedingt jedes Kommando und was du damit machen kannst, du weisst ja nicht wann du es das nächste mal wieder benötigst.\n"

  kc_task \
      " Um dich in dem Raum umzusehen in dem du dich gerade befindest verwende das Kommando ‘ls’. Probiere es doch gleich mal aus." \
      "Gut gemacht!\n" \
      "cat /tmp/ls | grep 1"
}