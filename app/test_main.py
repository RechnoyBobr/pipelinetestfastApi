from fastapi.testclient import TestClient
from .main import app

client = TestClient(app)

def test_get():
    res = client.get('/')
    assert res.status_code == 200
    assert res.json() == {"message": "Hello, world!"}
