api=$1
cur=`curl -H "Accept: text/html,application/xhtml+xml,application/xml" \
"http://api.scraperapi.com/?api_key=$api&url=https://www.spotify.com/id/password-reset/&keep_headers=true" -s`
echo $cur