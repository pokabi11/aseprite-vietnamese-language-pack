#!/bin/bash

awk '{
  if (index($0, "\\n") > 0) {
    gsub(/\\n/, "\n");
    match($0, /^([^\n]*= )(.*)$/, arr);
    print arr[1] "<<<END\n" arr[2] "\nEND";
  } else {
    print $0;
  }
}'