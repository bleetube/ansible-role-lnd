#!/bin/bash
set -x
# Close a lightning channel

# Get the channel point
CHANNEL_POINT=$(lncli listchannels  | jq -r ".[] | map(select(.chan_id==\"$1\"))[] | .channel_point")

# Remove the semicolon from the channelpoint
FUNDING_TX=$(echo ${CHANNEL_POINT} | sed 's/:/ /')

# The output index is included after the funding transaction
lncli closechannel --sat_per_byte 1 ${FUNDING_TX}
