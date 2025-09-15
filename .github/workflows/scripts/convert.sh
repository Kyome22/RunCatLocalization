#!/bin/bash

# Script to extract translation information from xcstrings file and convert to JSON format
# Usage: ./convert.sh <input_xcstrings_file> <output_json_file>

set -e

if [ $# -ne 2 ]; then
    echo "Usage: $0 <input_xcstrings_file> <output_json_file>"
    exit 1
fi

INPUT_FILE="$1"
OUTPUT_FILE="$2"

if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: Input file '$INPUT_FILE' not found"
    exit 1
fi

# Create temporary file
TEMP_FILE=$(mktemp)

# Use jq to parse xcstrings file and generate JSON in specified format
jq -r '
  .strings | to_entries | map({
    runner_id: (
      # Convert runner_id to image_name format: split by underscore, reverse, join with hyphen
      .key | split("_") | reverse | join("-")
    ),
    translations: {
      "de": .value.localizations.de.stringUnit.value,
      "en": .value.localizations.en.stringUnit.value,
      "fr": .value.localizations.fr.stringUnit.value,
      "ja": .value.localizations.ja.stringUnit.value,
      "ko": .value.localizations.ko.stringUnit.value,
      "zh-Hans": .value.localizations["zh-Hans"].stringUnit.value
    }
  }) | sort_by(.runner_id)
' "$INPUT_FILE" > "$TEMP_FILE"

# Create output directory
OUTPUT_DIR=$(dirname "$OUTPUT_FILE")
mkdir -p "$OUTPUT_DIR"

# Move temporary file to output file
mv "$TEMP_FILE" "$OUTPUT_FILE"

echo "Conversion completed: $OUTPUT_FILE"
