#!/usr/bin/python3
# Check if the URL argument is provided
if [[ $# -eq 0 ]]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

url="$1"

# Send request using curl and store the response in a temporary file
response_file=$(mktemp)
curl -sSL -o "$response_file" "$url"

# Get the size of the response body in bytes
response_size=$(wc -c < "$response_file")

# Display the size
echo "Response size: $response_size bytes"

# Clean up the temporary file
rm "$response_file"
