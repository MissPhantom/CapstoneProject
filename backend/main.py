from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def home():
    return {"message": "EMSS Blog Backend Running"}
