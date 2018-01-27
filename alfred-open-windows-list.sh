#!/bin/bash
exec 2> >(logger -s -t $(basename $0))

APPLICATION=$(osascript -sh application.ascr "$focusedapp" | sed "s/Macintosh HD//" | sed "s/:/\//g" | sed "s/\/$//")

echo '<?xml version="1.0"?><items>'

osascript -sh windows.ascr "$focusedapp" | tr "\r" "\n" | while read LINE; do
    if [ "$LINE" = "" ]; then
        continue
    fi
    echo "<item arg=\"${LINE}\">"
    echo "  <title>${LINE}</title>"
    echo "  <subtitle>Switch to this window</subtitle>"
    echo "  <icon type=\"fileicon\">${APPLICATION}</icon>"
    echo "</item>"
done

echo '</items>'
