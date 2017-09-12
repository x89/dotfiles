#!/usr/bin/env bash

set -e

TORRENT_PATH="$1"
TORRENT_NAME="$2"
TORRENT_LABEL="$3"
JRE_PATH="/usr/lib/jvm/java-8-openjdk/jre/bin"  # Only works with OpenJRE 8
export PATH=${JRE_PATH}:${PATH}

echo "Torrent Label: ${TORRENT_LABEL}"
echo "Torrent Name: ${TORRENT_NAME}"
echo "Torrent Path: ${TORRENT_PATH}"

if [ ! -d "${TORRENT_PATH}" ]; then
	echo "${TORRENT_PATH} not a valid path"
	exit
fi

# Grab English and Spanish subtitles
#filebot -script "dev:suball" -non-strict --lang en --encoding utf8 --output srt "${TORRENT_PATH}"
#filebot -script "dev:suball" -non-strict --lang es --encoding utf8 --output srt "${TORRENT_PATH}"

EXCLUDE=~/.config/amc.txt
if [[ -d -data ]]; then
	EXCLUDE=/data/amc.txt
fi

filebot -script fn:amc --output "/nas/Multimedia/" \
        --action move \
        -non-strict \
        --def excludeList=${EXCLUDE} \
        --def seriesFormat="/nas/Multimedia/TV/{n.replaceAll(' ', '.')}/Season.{s}/{n} - {s+'x'}{e.pad(2)} - {vf} - {t}" \
        --def movieFormat="/nas/Multimedia/Movies/{ny}/{fn}" \
		--conflict auto \
        --def clean=y "${TORRENT_PATH}"
