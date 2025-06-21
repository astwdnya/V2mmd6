# V2Ray Server on GitHub Codespaces

This repository contains all files needed to run a V2Ray server inside GitHub Codespaces
with TLS and WebSocket on port 443, using a fake domain `irancell.ir` for cloaking.

---

## How to use

1. Create a new GitHub repository.
2. Upload all files from this repo to your repository.
3. Open your repository and create a new Codespace.
4. Once inside the Codespace terminal, build and run the Docker container:

```
docker build -t v2server .
docker run -d --name v2 --network host v2server
```

5. The server will start listening on port 443.

---

## Client config example (VLESS over WS+TLS):

```
vless://c7fc1abc-1111-2222-3333-abcdefabcdef@<CODESPACE_IP>:443?encryption=none&security=tls&type=ws&host=irancell.ir&path=%2Fv2ray#TestOnCodespace
```

Replace `<CODESPACE_IP>` with your Codespace public IP address.

---

**Important:** Codespaces must be running and active for the server to work.
