import http.client

conn = http.client.HTTPConnection('10.0.0.131', 2121)
with open('c:/My Projects/Which partner is toxic/which_partner_is_toxic/build/app/outputs/flutter-apk/app-release.apk', 'rb') as f:
    data = f.read()
    conn.request('PUT', '/app-release.apk', data)
    response = conn.getresponse()
    print(f"Status: {response.status} {response.reason}")
    conn.close()
