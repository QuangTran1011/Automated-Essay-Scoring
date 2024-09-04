import requests

URL = "http://localhost:8081/predict"
data = {
    "text": 'This is the test essay.'
}

response = requests.post(URL, json=data)

print("Status Code:", response.status_code)
print("Response JSON:", response.json())
