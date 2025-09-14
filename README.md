# Chat App

## Requirements
```
simple chat group:
  - no private chats only one room
  - no chat history for now
  - authenticate with just sending your name when joining the stream (this should return a 
    UID that belong to your session)
  - and show the active members on slide with there names
  - message state sending, sent.
  - no images just names for members
  - grpc bi stream
  - go mutex (use this for managing in-memory database of current users)
  - go routines and channels (for managing updates also as event system on the backend)
  - clean architecture for frontend
  - divide the project to frontend/flutter/{appname} and backend/go/{appname}
```
## ScreenCast
[view cast](screencast/Screencast1.webm)
