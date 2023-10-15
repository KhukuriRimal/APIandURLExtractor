#!/bin/bash

RED="\033[31m"
RESET="\033[0m"

# Define the Khukuri sword logo as ASCII art
logo="
					API Endpoints and URL's Extracter
						-By Khukuririmal
"

# Print the Khukuri sword logo in red
echo -e "${RED}$logo"
# Prompt the user for a URL
echo "Enter a URL: "
read input_url

# Download the content of the URL
html_content=$(curl -s "$input_url")

# Use grep and awk to extract API endpoints and URLs
api_endpoints=$(echo "$html_content" | grep -oP '(?<=\bapi\.)[a-zA-Z0-9/]+')
urls=$(echo "$html_content" | grep -oP '(https?://\S+)')

# Print the extracted API endpoints and URLs
echo -e "\nAPI Endpoints:"
echo "$api_endpoints"

echo -e "\nURLs:"
echo "$urls"
