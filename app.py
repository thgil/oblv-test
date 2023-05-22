from fastapi import FastAPI, Header
from typing import Optional

app = FastAPI()

@app.get("/say_hello")
async def say_hello(x_oblv_user_name: Optional[str] = Header(None)):
    return {"message": "Hello " + x_oblv_user_name}