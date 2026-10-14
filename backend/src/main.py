from fastapi import FastAPI
import os


app = FastAPI()

MY_PROJECT = os.environ.get("MY_PROJECT") or "This is a sample proj"
API_KEY = os.environ.get("API_KEY")
if not API_KEY:
    raise NotImplementedError("API key not provided")
@app.get("/")
def read_index():
    return {"Hello": "World", "project": MY_PROJECT}
