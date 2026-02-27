import requests
from settings import settings


def start_api():
    url = settings.API_URL
    try:
        response = requests.get(url)
        if response.status_code == 200:
            print("API started successfully.")
        else:
            print(f"Failed to start API. Status code: {response.status_code}")
    except Exception as e:
        print(f"An error occurred while trying to start the API: {e}")

start_api()