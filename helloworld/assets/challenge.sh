#!/bin/bash

function kc_start_tasks()
{
  kc_instructions \
      "Hello World :)\n" \

  kc_task \
      "Task 1: Create a folder called \`test\`" \
      "Well Done!" \
      "ls test" \
}