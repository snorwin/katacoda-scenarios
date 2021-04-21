#!/bin/bash

function kc_start_tasks()
{
  kc_instructions \
      "Herzlich willkommen! Du bist nun ein Teil der Crew.\n" \

  kc_task \
      "Um herauszufinden in welchem Raum du dich gerade befindest Tippe \`pwd\` in das Terminal (links) und bestätige mit <Enter> Taste." \
      "Gut gemacht! Du siehst du befindest dich gerade in der Cafeteria. Das Kommando \`pwd\` (Abkürzung für Englisch 'print working directory' 'zeige aktuellen Ordner') zeigt dir immer an wo Du dich gerade befindest. Dabei wir dir der ganze Pfad angezeigt und das letzte Element ist jeweils das Ordner and dem du dich befindest." \
      "history | grep pwd" \
}