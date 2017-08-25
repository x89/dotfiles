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
filebot -get-missing-subtitles "${TORRENT_PATH}" --lang en --output srt --encoding utf8 -non-strict
filebot -get-missing-subtitles "${TORRENT_PATH}" --lang es --output srt --encoding utf8 -non-strict
filebot -script "dev:suball" "${TORRENT_PATH}" -non-strict --lang en --encoding utf8 --output srt
filebot -script "dev:suball" "${TORRENT_PATH}" -non-strict --lang es --encoding utf8 --output srt

filebot -script fn:amc --output "/nas/Multimedia/" --action move -non-strict ${TORRENT_PATH} --def excludeList=/data/amc.txt seriesFormat="/nas/Multimedia/TV/{n}/Season.{s}/{n} - {sxe} - {vf} - {t}" --def movieFormat="/nas/Multimedia/Movies/{ny}/{fn}" --conflict auto --def plex=127.0.0.1:G2xsXDRbpxwsvNLz2Gxe --def clean=y

