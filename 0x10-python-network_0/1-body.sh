#!/usr/bin/python3
# Get the URL from command line argument
url=$1

# Send GET request using curl and store the response body and status code
response=$(curl -s -w "%{http_code}" $url)

# Get the status code from the response
status_code=${response: -3}

# Check if the status code is 200
if [[ $status_code -eq 200 ]]; then
    # Extract the body from the response (excluding the status code)
    body=${response:0: -3}
    
    # Display the body
    echo "$body"
else
    echo "The request was not successful. Status code: $status_code"
fi
