#!/bin/bash
STAMP=$(date +%s)
FILTER="$1"
if [ -z "$FILTER" ]; then FILTER=.;fi
echo '<?xml version="1.0"?><items>'

osascript -sh windows.ascr | tr "\r" "\n" | while read LINE; do
    if [ "$LINE" = "" ]; then
        continue
    fi
    if [ "$FILTER" = "" ]; then
        continue
    else
        if echo $LINE | grep -sq $FILTER; then
          true
        else
          continue
        fi
    fi
    echo "<item uid=\"${STAMP}\" arg=\"${LINE}\">"
    echo "<title>${LINE}</title>"
    echo "<subtitle>Open this window</subtitle>"
    echo "</item>"
done

echo '</items>'
