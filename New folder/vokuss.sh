email=$1
token=$2
api=$3
cur=`curl -H 'User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:80.0) Gecko/20100101 Firefox/80.0' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'Accept-Language: id,en-US;q=0.7,en;q=0.3' --compressed -H 'Content-Type: application/x-www-form-urlencoded' -H 'Origin: https://www.spotify.com' -H 'DNT: 1' -H 'Connection: keep-alive' -H 'Referer: https://www.spotify.com/id/password-reset/' -H 'Cookie: sp_m=id; sp_t=902fcb76-7e96-40f8-8d57-42bd5c457e8a; sp_new=1; sp_landing=https%3A%2F%2Fwww.spotify.com%2Fid%2Fpassword-reset%2F; spsess=vPpagLkGHCp-jNaS1-dDmt%2COMeLUeQIIf7nnG-c04FGLOLgq; sp_usid=898898d2-4479-4922-82dc-f0dc5ac8aaa2; sp_ab=%7B%222019_04_premium_menu%22%3A%22control%22%7D; spot=%7B%22t%22%3A1599891338%2C%22m%22%3A%22id%22%2C%22p%22%3Anull%7D; spAnalytics_id=eyJkZXZpY2VJZCI6IjY5YzA4Y2YwMTE0OTliY2U0ZWY0ODc4NzIxNGZkMmRjIiwidXNlcklkIjpudWxsfQ==; OptanonConsent=isIABGlobal=false&datestamp=Sat+Sep+12+2020+20%3A38%3A03+GMT%2B1400+(Waktu+Kep.+Line)&version=6.5.0&hosts=&consentId=966b4e3d-6e75-42dd-b428-9574a380cd18&interactionCount=1&landingPath=https%3A%2F%2Fwww.spotify.com%2Fid%2Fpassword-reset%2F&groups=t00%3A0%2Cs00%3A1%2Cf00%3A1%2Cm00%3A1; _gcl_au=1.1.492089587.1599891342; _ga=GA1.2.560136481.1599891342; _ga_S35RN5WNT2=GS1.1.1599891341.1.1.1599892682.0; _gid=GA1.2.786620701.1599891342; _scid=79bf2338-0808-42b7-8ff9-e8427b9dcb23; _sctr=1|1599818400000; _fbp=fb.1.1599891344479.705850317; _gat_UA-5784146-31=1; _gali=form_send' -H 'Upgrade-Insecure-Requests: 1' -H 'TE: Trailers' \
--data-raw 'form%5Binput%5D='$email'&form%5B_token%5D='$token'&form%5Bsend%5D=' \
-X POST \
"http://api.scraperapi.com/?api_key=$api&url=https://www.spotify.com/id/password-reset/" -s`
echo $cur