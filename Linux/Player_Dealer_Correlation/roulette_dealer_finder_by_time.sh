#!/bin/bash
# Usage: roulette_dealer_finder_by_time.sh "<time>" <date>
# Example: roulette_dealer_finder_by_time.sh "05:00:00 AM" 0310
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 \"<time>\" <date>   e.g. $0 \"05:00:00 AM\" 0310" >&2
    exit 1
fi
grep -i "$1" "$2"_Dealer_schedule | awk '{print $1, $2, $5, $6}'
