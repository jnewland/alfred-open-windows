#!/bin/bash
FILTER="$1"
if [ -z "$FILTER" ]; then FILTER=.;fi
echo '<?xml version="1.0"?><items>'
APPLICATION=$(osascript -sh application.ascr | cut -f 2- -d : | cut -f -2 -d : | tr ":" "/")

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
    echo "<item arg=\"${LINE}\">"
    echo "  <title>${LINE}</title>"
    echo "  <subtitle>Switch to this window</subtitle>"
    echo "  <icon type=\"fileicon\">/${APPLICATION}</icon>"
    echo "</item>"
done

echo '</items>'
