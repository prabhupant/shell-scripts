# To get the count of JSONs where a key is missing

jq -M 'reduce (.mappings[] | select(.uuid == null)) as $i (0;.+=1)' stubs.json

# To get the JSONs where a key is missing

jq '.mappings[] | select(.uuid==null)' stubs.json
