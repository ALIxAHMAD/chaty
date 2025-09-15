# Chaty

**Chaty** is a **full-stack, real-time chat application** designed for simple group communication.  
The project maintains a clear separation between frontend and backend, using modern technologies to ensure efficiency and a **clean architecture**.  

---

## Features
- **Group Chat**: Multiple users can communicate in a single, shared chat room.  
- **No Chat History**: The app does not store chat history, providing a lightweight and temporary communication experience.  
- **User Authentication**: Users join the chat by providing a name, which returns a unique user ID (UID).  
- **Active Members List**: Displays a list of all users currently active in the chat with their IDs and typing state.  
- **Efficient Communication**: Utilizes **gRPC bidirectional streams** for real-time message exchange.  
- **Backend Concurrency**: The backend, built with **Go**, uses mutexes, goroutines, and channels to handle in-memory user data and events concurrently.  

---

## ScreenCast
[view cast](screencast/Screencast1.webm)
