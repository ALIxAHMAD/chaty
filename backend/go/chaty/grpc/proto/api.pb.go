// Code generated by protoc-gen-go. DO NOT EDIT.
// source: api.proto

package proto

import (
	fmt "fmt"
	proto "github.com/golang/protobuf/proto"
	math "math"
)

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal
var _ = fmt.Errorf
var _ = math.Inf

// This is a compile-time assertion to ensure that this generated file
// is compatible with the proto package it is being compiled against.
// A compilation error at this line likely means your copy of the
// proto package needs to be updated.
const _ = proto.ProtoPackageIsVersion3 // please upgrade the proto package

type UserEvents_Events int32

const (
	UserEvents_joined UserEvents_Events = 0
	UserEvents_left   UserEvents_Events = 1
)

var UserEvents_Events_name = map[int32]string{
	0: "joined",
	1: "left",
}

var UserEvents_Events_value = map[string]int32{
	"joined": 0,
	"left":   1,
}

func (x UserEvents_Events) String() string {
	return proto.EnumName(UserEvents_Events_name, int32(x))
}

func (UserEvents_Events) EnumDescriptor() ([]byte, []int) {
	return fileDescriptor_00212fb1f9d3bf1c, []int{8, 0}
}

type JoinRequest struct {
	UserName             string   `protobuf:"bytes,1,opt,name=user_name,json=userName,proto3" json:"user_name,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *JoinRequest) Reset()         { *m = JoinRequest{} }
func (m *JoinRequest) String() string { return proto.CompactTextString(m) }
func (*JoinRequest) ProtoMessage()    {}
func (*JoinRequest) Descriptor() ([]byte, []int) {
	return fileDescriptor_00212fb1f9d3bf1c, []int{0}
}

func (m *JoinRequest) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_JoinRequest.Unmarshal(m, b)
}
func (m *JoinRequest) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_JoinRequest.Marshal(b, m, deterministic)
}
func (m *JoinRequest) XXX_Merge(src proto.Message) {
	xxx_messageInfo_JoinRequest.Merge(m, src)
}
func (m *JoinRequest) XXX_Size() int {
	return xxx_messageInfo_JoinRequest.Size(m)
}
func (m *JoinRequest) XXX_DiscardUnknown() {
	xxx_messageInfo_JoinRequest.DiscardUnknown(m)
}

var xxx_messageInfo_JoinRequest proto.InternalMessageInfo

func (m *JoinRequest) GetUserName() string {
	if m != nil {
		return m.UserName
	}
	return ""
}

type JoinResponse struct {
	UserName             string   `protobuf:"bytes,1,opt,name=user_name,json=userName,proto3" json:"user_name,omitempty"`
	UserId               string   `protobuf:"bytes,2,opt,name=user_id,json=userId,proto3" json:"user_id,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *JoinResponse) Reset()         { *m = JoinResponse{} }
func (m *JoinResponse) String() string { return proto.CompactTextString(m) }
func (*JoinResponse) ProtoMessage()    {}
func (*JoinResponse) Descriptor() ([]byte, []int) {
	return fileDescriptor_00212fb1f9d3bf1c, []int{1}
}

func (m *JoinResponse) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_JoinResponse.Unmarshal(m, b)
}
func (m *JoinResponse) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_JoinResponse.Marshal(b, m, deterministic)
}
func (m *JoinResponse) XXX_Merge(src proto.Message) {
	xxx_messageInfo_JoinResponse.Merge(m, src)
}
func (m *JoinResponse) XXX_Size() int {
	return xxx_messageInfo_JoinResponse.Size(m)
}
func (m *JoinResponse) XXX_DiscardUnknown() {
	xxx_messageInfo_JoinResponse.DiscardUnknown(m)
}

var xxx_messageInfo_JoinResponse proto.InternalMessageInfo

func (m *JoinResponse) GetUserName() string {
	if m != nil {
		return m.UserName
	}
	return ""
}

func (m *JoinResponse) GetUserId() string {
	if m != nil {
		return m.UserId
	}
	return ""
}

type ChatMessage struct {
	UserId               string   `protobuf:"bytes,1,opt,name=user_id,json=userId,proto3" json:"user_id,omitempty"`
	UserName             string   `protobuf:"bytes,2,opt,name=user_name,json=userName,proto3" json:"user_name,omitempty"`
	Text                 string   `protobuf:"bytes,3,opt,name=text,proto3" json:"text,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *ChatMessage) Reset()         { *m = ChatMessage{} }
func (m *ChatMessage) String() string { return proto.CompactTextString(m) }
func (*ChatMessage) ProtoMessage()    {}
func (*ChatMessage) Descriptor() ([]byte, []int) {
	return fileDescriptor_00212fb1f9d3bf1c, []int{2}
}

func (m *ChatMessage) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_ChatMessage.Unmarshal(m, b)
}
func (m *ChatMessage) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_ChatMessage.Marshal(b, m, deterministic)
}
func (m *ChatMessage) XXX_Merge(src proto.Message) {
	xxx_messageInfo_ChatMessage.Merge(m, src)
}
func (m *ChatMessage) XXX_Size() int {
	return xxx_messageInfo_ChatMessage.Size(m)
}
func (m *ChatMessage) XXX_DiscardUnknown() {
	xxx_messageInfo_ChatMessage.DiscardUnknown(m)
}

var xxx_messageInfo_ChatMessage proto.InternalMessageInfo

func (m *ChatMessage) GetUserId() string {
	if m != nil {
		return m.UserId
	}
	return ""
}

func (m *ChatMessage) GetUserName() string {
	if m != nil {
		return m.UserName
	}
	return ""
}

func (m *ChatMessage) GetText() string {
	if m != nil {
		return m.Text
	}
	return ""
}

type MessageUpdate struct {
	IsRead               bool     `protobuf:"varint,1,opt,name=is_read,json=isRead,proto3" json:"is_read,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *MessageUpdate) Reset()         { *m = MessageUpdate{} }
func (m *MessageUpdate) String() string { return proto.CompactTextString(m) }
func (*MessageUpdate) ProtoMessage()    {}
func (*MessageUpdate) Descriptor() ([]byte, []int) {
	return fileDescriptor_00212fb1f9d3bf1c, []int{3}
}

func (m *MessageUpdate) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_MessageUpdate.Unmarshal(m, b)
}
func (m *MessageUpdate) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_MessageUpdate.Marshal(b, m, deterministic)
}
func (m *MessageUpdate) XXX_Merge(src proto.Message) {
	xxx_messageInfo_MessageUpdate.Merge(m, src)
}
func (m *MessageUpdate) XXX_Size() int {
	return xxx_messageInfo_MessageUpdate.Size(m)
}
func (m *MessageUpdate) XXX_DiscardUnknown() {
	xxx_messageInfo_MessageUpdate.DiscardUnknown(m)
}

var xxx_messageInfo_MessageUpdate proto.InternalMessageInfo

func (m *MessageUpdate) GetIsRead() bool {
	if m != nil {
		return m.IsRead
	}
	return false
}

type MessageRequest struct {
	Message              *ChatMessage `protobuf:"bytes,3,opt,name=message,proto3" json:"message,omitempty"`
	RequestId            string       `protobuf:"bytes,4,opt,name=request_id,json=requestId,proto3" json:"request_id,omitempty"`
	XXX_NoUnkeyedLiteral struct{}     `json:"-"`
	XXX_unrecognized     []byte       `json:"-"`
	XXX_sizecache        int32        `json:"-"`
}

func (m *MessageRequest) Reset()         { *m = MessageRequest{} }
func (m *MessageRequest) String() string { return proto.CompactTextString(m) }
func (*MessageRequest) ProtoMessage()    {}
func (*MessageRequest) Descriptor() ([]byte, []int) {
	return fileDescriptor_00212fb1f9d3bf1c, []int{4}
}

func (m *MessageRequest) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_MessageRequest.Unmarshal(m, b)
}
func (m *MessageRequest) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_MessageRequest.Marshal(b, m, deterministic)
}
func (m *MessageRequest) XXX_Merge(src proto.Message) {
	xxx_messageInfo_MessageRequest.Merge(m, src)
}
func (m *MessageRequest) XXX_Size() int {
	return xxx_messageInfo_MessageRequest.Size(m)
}
func (m *MessageRequest) XXX_DiscardUnknown() {
	xxx_messageInfo_MessageRequest.DiscardUnknown(m)
}

var xxx_messageInfo_MessageRequest proto.InternalMessageInfo

func (m *MessageRequest) GetMessage() *ChatMessage {
	if m != nil {
		return m.Message
	}
	return nil
}

func (m *MessageRequest) GetRequestId() string {
	if m != nil {
		return m.RequestId
	}
	return ""
}

type MessageResponse struct {
	IsOk                 bool     `protobuf:"varint,1,opt,name=is_ok,json=isOk,proto3" json:"is_ok,omitempty"`
	RequestId            string   `protobuf:"bytes,2,opt,name=request_id,json=requestId,proto3" json:"request_id,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *MessageResponse) Reset()         { *m = MessageResponse{} }
func (m *MessageResponse) String() string { return proto.CompactTextString(m) }
func (*MessageResponse) ProtoMessage()    {}
func (*MessageResponse) Descriptor() ([]byte, []int) {
	return fileDescriptor_00212fb1f9d3bf1c, []int{5}
}

func (m *MessageResponse) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_MessageResponse.Unmarshal(m, b)
}
func (m *MessageResponse) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_MessageResponse.Marshal(b, m, deterministic)
}
func (m *MessageResponse) XXX_Merge(src proto.Message) {
	xxx_messageInfo_MessageResponse.Merge(m, src)
}
func (m *MessageResponse) XXX_Size() int {
	return xxx_messageInfo_MessageResponse.Size(m)
}
func (m *MessageResponse) XXX_DiscardUnknown() {
	xxx_messageInfo_MessageResponse.DiscardUnknown(m)
}

var xxx_messageInfo_MessageResponse proto.InternalMessageInfo

func (m *MessageResponse) GetIsOk() bool {
	if m != nil {
		return m.IsOk
	}
	return false
}

func (m *MessageResponse) GetRequestId() string {
	if m != nil {
		return m.RequestId
	}
	return ""
}

type User struct {
	UserId               string   `protobuf:"bytes,1,opt,name=user_id,json=userId,proto3" json:"user_id,omitempty"`
	UserName             string   `protobuf:"bytes,2,opt,name=user_name,json=userName,proto3" json:"user_name,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *User) Reset()         { *m = User{} }
func (m *User) String() string { return proto.CompactTextString(m) }
func (*User) ProtoMessage()    {}
func (*User) Descriptor() ([]byte, []int) {
	return fileDescriptor_00212fb1f9d3bf1c, []int{6}
}

func (m *User) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_User.Unmarshal(m, b)
}
func (m *User) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_User.Marshal(b, m, deterministic)
}
func (m *User) XXX_Merge(src proto.Message) {
	xxx_messageInfo_User.Merge(m, src)
}
func (m *User) XXX_Size() int {
	return xxx_messageInfo_User.Size(m)
}
func (m *User) XXX_DiscardUnknown() {
	xxx_messageInfo_User.DiscardUnknown(m)
}

var xxx_messageInfo_User proto.InternalMessageInfo

func (m *User) GetUserId() string {
	if m != nil {
		return m.UserId
	}
	return ""
}

func (m *User) GetUserName() string {
	if m != nil {
		return m.UserName
	}
	return ""
}

type Users struct {
	Users                []*User  `protobuf:"bytes,1,rep,name=users,proto3" json:"users,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *Users) Reset()         { *m = Users{} }
func (m *Users) String() string { return proto.CompactTextString(m) }
func (*Users) ProtoMessage()    {}
func (*Users) Descriptor() ([]byte, []int) {
	return fileDescriptor_00212fb1f9d3bf1c, []int{7}
}

func (m *Users) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_Users.Unmarshal(m, b)
}
func (m *Users) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_Users.Marshal(b, m, deterministic)
}
func (m *Users) XXX_Merge(src proto.Message) {
	xxx_messageInfo_Users.Merge(m, src)
}
func (m *Users) XXX_Size() int {
	return xxx_messageInfo_Users.Size(m)
}
func (m *Users) XXX_DiscardUnknown() {
	xxx_messageInfo_Users.DiscardUnknown(m)
}

var xxx_messageInfo_Users proto.InternalMessageInfo

func (m *Users) GetUsers() []*User {
	if m != nil {
		return m.Users
	}
	return nil
}

type UserEvents struct {
	UserId               string            `protobuf:"bytes,1,opt,name=user_id,json=userId,proto3" json:"user_id,omitempty"`
	Events               UserEvents_Events `protobuf:"varint,2,opt,name=events,proto3,enum=chaty.UserEvents_Events" json:"events,omitempty"`
	UserName             string            `protobuf:"bytes,3,opt,name=user_name,json=userName,proto3" json:"user_name,omitempty"`
	XXX_NoUnkeyedLiteral struct{}          `json:"-"`
	XXX_unrecognized     []byte            `json:"-"`
	XXX_sizecache        int32             `json:"-"`
}

func (m *UserEvents) Reset()         { *m = UserEvents{} }
func (m *UserEvents) String() string { return proto.CompactTextString(m) }
func (*UserEvents) ProtoMessage()    {}
func (*UserEvents) Descriptor() ([]byte, []int) {
	return fileDescriptor_00212fb1f9d3bf1c, []int{8}
}

func (m *UserEvents) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_UserEvents.Unmarshal(m, b)
}
func (m *UserEvents) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_UserEvents.Marshal(b, m, deterministic)
}
func (m *UserEvents) XXX_Merge(src proto.Message) {
	xxx_messageInfo_UserEvents.Merge(m, src)
}
func (m *UserEvents) XXX_Size() int {
	return xxx_messageInfo_UserEvents.Size(m)
}
func (m *UserEvents) XXX_DiscardUnknown() {
	xxx_messageInfo_UserEvents.DiscardUnknown(m)
}

var xxx_messageInfo_UserEvents proto.InternalMessageInfo

func (m *UserEvents) GetUserId() string {
	if m != nil {
		return m.UserId
	}
	return ""
}

func (m *UserEvents) GetEvents() UserEvents_Events {
	if m != nil {
		return m.Events
	}
	return UserEvents_joined
}

func (m *UserEvents) GetUserName() string {
	if m != nil {
		return m.UserName
	}
	return ""
}

type TypingState struct {
	UserId               string   `protobuf:"bytes,1,opt,name=user_id,json=userId,proto3" json:"user_id,omitempty"`
	IsTyping             bool     `protobuf:"varint,2,opt,name=is_typing,json=isTyping,proto3" json:"is_typing,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *TypingState) Reset()         { *m = TypingState{} }
func (m *TypingState) String() string { return proto.CompactTextString(m) }
func (*TypingState) ProtoMessage()    {}
func (*TypingState) Descriptor() ([]byte, []int) {
	return fileDescriptor_00212fb1f9d3bf1c, []int{9}
}

func (m *TypingState) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_TypingState.Unmarshal(m, b)
}
func (m *TypingState) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_TypingState.Marshal(b, m, deterministic)
}
func (m *TypingState) XXX_Merge(src proto.Message) {
	xxx_messageInfo_TypingState.Merge(m, src)
}
func (m *TypingState) XXX_Size() int {
	return xxx_messageInfo_TypingState.Size(m)
}
func (m *TypingState) XXX_DiscardUnknown() {
	xxx_messageInfo_TypingState.DiscardUnknown(m)
}

var xxx_messageInfo_TypingState proto.InternalMessageInfo

func (m *TypingState) GetUserId() string {
	if m != nil {
		return m.UserId
	}
	return ""
}

func (m *TypingState) GetIsTyping() bool {
	if m != nil {
		return m.IsTyping
	}
	return false
}

type ListUsers struct {
	UserId               string   `protobuf:"bytes,1,opt,name=user_id,json=userId,proto3" json:"user_id,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *ListUsers) Reset()         { *m = ListUsers{} }
func (m *ListUsers) String() string { return proto.CompactTextString(m) }
func (*ListUsers) ProtoMessage()    {}
func (*ListUsers) Descriptor() ([]byte, []int) {
	return fileDescriptor_00212fb1f9d3bf1c, []int{10}
}

func (m *ListUsers) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_ListUsers.Unmarshal(m, b)
}
func (m *ListUsers) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_ListUsers.Marshal(b, m, deterministic)
}
func (m *ListUsers) XXX_Merge(src proto.Message) {
	xxx_messageInfo_ListUsers.Merge(m, src)
}
func (m *ListUsers) XXX_Size() int {
	return xxx_messageInfo_ListUsers.Size(m)
}
func (m *ListUsers) XXX_DiscardUnknown() {
	xxx_messageInfo_ListUsers.DiscardUnknown(m)
}

var xxx_messageInfo_ListUsers proto.InternalMessageInfo

func (m *ListUsers) GetUserId() string {
	if m != nil {
		return m.UserId
	}
	return ""
}

type ClientEvents struct {
	// Types that are valid to be assigned to Event:
	//	*ClientEvents_JoinRequest
	//	*ClientEvents_MessageRequest
	//	*ClientEvents_Typing_State
	//	*ClientEvents_ListUsers
	Event                isClientEvents_Event `protobuf_oneof:"event"`
	XXX_NoUnkeyedLiteral struct{}             `json:"-"`
	XXX_unrecognized     []byte               `json:"-"`
	XXX_sizecache        int32                `json:"-"`
}

func (m *ClientEvents) Reset()         { *m = ClientEvents{} }
func (m *ClientEvents) String() string { return proto.CompactTextString(m) }
func (*ClientEvents) ProtoMessage()    {}
func (*ClientEvents) Descriptor() ([]byte, []int) {
	return fileDescriptor_00212fb1f9d3bf1c, []int{11}
}

func (m *ClientEvents) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_ClientEvents.Unmarshal(m, b)
}
func (m *ClientEvents) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_ClientEvents.Marshal(b, m, deterministic)
}
func (m *ClientEvents) XXX_Merge(src proto.Message) {
	xxx_messageInfo_ClientEvents.Merge(m, src)
}
func (m *ClientEvents) XXX_Size() int {
	return xxx_messageInfo_ClientEvents.Size(m)
}
func (m *ClientEvents) XXX_DiscardUnknown() {
	xxx_messageInfo_ClientEvents.DiscardUnknown(m)
}

var xxx_messageInfo_ClientEvents proto.InternalMessageInfo

type isClientEvents_Event interface {
	isClientEvents_Event()
}

type ClientEvents_JoinRequest struct {
	JoinRequest *JoinRequest `protobuf:"bytes,1,opt,name=joinRequest,proto3,oneof"`
}

type ClientEvents_MessageRequest struct {
	MessageRequest *MessageRequest `protobuf:"bytes,2,opt,name=messageRequest,proto3,oneof"`
}

type ClientEvents_Typing_State struct {
	Typing_State *TypingState `protobuf:"bytes,3,opt,name=typing_State,json=typingState,proto3,oneof"`
}

type ClientEvents_ListUsers struct {
	ListUsers *ListUsers `protobuf:"bytes,4,opt,name=list_users,json=listUsers,proto3,oneof"`
}

func (*ClientEvents_JoinRequest) isClientEvents_Event() {}

func (*ClientEvents_MessageRequest) isClientEvents_Event() {}

func (*ClientEvents_Typing_State) isClientEvents_Event() {}

func (*ClientEvents_ListUsers) isClientEvents_Event() {}

func (m *ClientEvents) GetEvent() isClientEvents_Event {
	if m != nil {
		return m.Event
	}
	return nil
}

func (m *ClientEvents) GetJoinRequest() *JoinRequest {
	if x, ok := m.GetEvent().(*ClientEvents_JoinRequest); ok {
		return x.JoinRequest
	}
	return nil
}

func (m *ClientEvents) GetMessageRequest() *MessageRequest {
	if x, ok := m.GetEvent().(*ClientEvents_MessageRequest); ok {
		return x.MessageRequest
	}
	return nil
}

func (m *ClientEvents) GetTyping_State() *TypingState {
	if x, ok := m.GetEvent().(*ClientEvents_Typing_State); ok {
		return x.Typing_State
	}
	return nil
}

func (m *ClientEvents) GetListUsers() *ListUsers {
	if x, ok := m.GetEvent().(*ClientEvents_ListUsers); ok {
		return x.ListUsers
	}
	return nil
}

// XXX_OneofWrappers is for the internal use of the proto package.
func (*ClientEvents) XXX_OneofWrappers() []interface{} {
	return []interface{}{
		(*ClientEvents_JoinRequest)(nil),
		(*ClientEvents_MessageRequest)(nil),
		(*ClientEvents_Typing_State)(nil),
		(*ClientEvents_ListUsers)(nil),
	}
}

type ServerEvents struct {
	// Types that are valid to be assigned to Event:
	//	*ServerEvents_JoinResponse
	//	*ServerEvents_MessageResponse
	//	*ServerEvents_Users
	//	*ServerEvents_UserEvents
	//	*ServerEvents_ChatMessage
	//	*ServerEvents_TypingState
	//	*ServerEvents_MessageUpdate
	Event                isServerEvents_Event `protobuf_oneof:"event"`
	XXX_NoUnkeyedLiteral struct{}             `json:"-"`
	XXX_unrecognized     []byte               `json:"-"`
	XXX_sizecache        int32                `json:"-"`
}

func (m *ServerEvents) Reset()         { *m = ServerEvents{} }
func (m *ServerEvents) String() string { return proto.CompactTextString(m) }
func (*ServerEvents) ProtoMessage()    {}
func (*ServerEvents) Descriptor() ([]byte, []int) {
	return fileDescriptor_00212fb1f9d3bf1c, []int{12}
}

func (m *ServerEvents) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_ServerEvents.Unmarshal(m, b)
}
func (m *ServerEvents) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_ServerEvents.Marshal(b, m, deterministic)
}
func (m *ServerEvents) XXX_Merge(src proto.Message) {
	xxx_messageInfo_ServerEvents.Merge(m, src)
}
func (m *ServerEvents) XXX_Size() int {
	return xxx_messageInfo_ServerEvents.Size(m)
}
func (m *ServerEvents) XXX_DiscardUnknown() {
	xxx_messageInfo_ServerEvents.DiscardUnknown(m)
}

var xxx_messageInfo_ServerEvents proto.InternalMessageInfo

type isServerEvents_Event interface {
	isServerEvents_Event()
}

type ServerEvents_JoinResponse struct {
	JoinResponse *JoinResponse `protobuf:"bytes,1,opt,name=joinResponse,proto3,oneof"`
}

type ServerEvents_MessageResponse struct {
	MessageResponse *MessageResponse `protobuf:"bytes,2,opt,name=messageResponse,proto3,oneof"`
}

type ServerEvents_Users struct {
	Users *Users `protobuf:"bytes,3,opt,name=users,proto3,oneof"`
}

type ServerEvents_UserEvents struct {
	UserEvents *UserEvents `protobuf:"bytes,4,opt,name=user_events,json=userEvents,proto3,oneof"`
}

type ServerEvents_ChatMessage struct {
	ChatMessage *ChatMessage `protobuf:"bytes,5,opt,name=chat_message,json=chatMessage,proto3,oneof"`
}

type ServerEvents_TypingState struct {
	TypingState *TypingState `protobuf:"bytes,6,opt,name=typing_state,json=typingState,proto3,oneof"`
}

type ServerEvents_MessageUpdate struct {
	MessageUpdate *MessageUpdate `protobuf:"bytes,7,opt,name=message_update,json=messageUpdate,proto3,oneof"`
}

func (*ServerEvents_JoinResponse) isServerEvents_Event() {}

func (*ServerEvents_MessageResponse) isServerEvents_Event() {}

func (*ServerEvents_Users) isServerEvents_Event() {}

func (*ServerEvents_UserEvents) isServerEvents_Event() {}

func (*ServerEvents_ChatMessage) isServerEvents_Event() {}

func (*ServerEvents_TypingState) isServerEvents_Event() {}

func (*ServerEvents_MessageUpdate) isServerEvents_Event() {}

func (m *ServerEvents) GetEvent() isServerEvents_Event {
	if m != nil {
		return m.Event
	}
	return nil
}

func (m *ServerEvents) GetJoinResponse() *JoinResponse {
	if x, ok := m.GetEvent().(*ServerEvents_JoinResponse); ok {
		return x.JoinResponse
	}
	return nil
}

func (m *ServerEvents) GetMessageResponse() *MessageResponse {
	if x, ok := m.GetEvent().(*ServerEvents_MessageResponse); ok {
		return x.MessageResponse
	}
	return nil
}

func (m *ServerEvents) GetUsers() *Users {
	if x, ok := m.GetEvent().(*ServerEvents_Users); ok {
		return x.Users
	}
	return nil
}

func (m *ServerEvents) GetUserEvents() *UserEvents {
	if x, ok := m.GetEvent().(*ServerEvents_UserEvents); ok {
		return x.UserEvents
	}
	return nil
}

func (m *ServerEvents) GetChatMessage() *ChatMessage {
	if x, ok := m.GetEvent().(*ServerEvents_ChatMessage); ok {
		return x.ChatMessage
	}
	return nil
}

func (m *ServerEvents) GetTypingState() *TypingState {
	if x, ok := m.GetEvent().(*ServerEvents_TypingState); ok {
		return x.TypingState
	}
	return nil
}

func (m *ServerEvents) GetMessageUpdate() *MessageUpdate {
	if x, ok := m.GetEvent().(*ServerEvents_MessageUpdate); ok {
		return x.MessageUpdate
	}
	return nil
}

// XXX_OneofWrappers is for the internal use of the proto package.
func (*ServerEvents) XXX_OneofWrappers() []interface{} {
	return []interface{}{
		(*ServerEvents_JoinResponse)(nil),
		(*ServerEvents_MessageResponse)(nil),
		(*ServerEvents_Users)(nil),
		(*ServerEvents_UserEvents)(nil),
		(*ServerEvents_ChatMessage)(nil),
		(*ServerEvents_TypingState)(nil),
		(*ServerEvents_MessageUpdate)(nil),
	}
}

func init() {
	proto.RegisterEnum("chaty.UserEvents_Events", UserEvents_Events_name, UserEvents_Events_value)
	proto.RegisterType((*JoinRequest)(nil), "chaty.JoinRequest")
	proto.RegisterType((*JoinResponse)(nil), "chaty.JoinResponse")
	proto.RegisterType((*ChatMessage)(nil), "chaty.ChatMessage")
	proto.RegisterType((*MessageUpdate)(nil), "chaty.MessageUpdate")
	proto.RegisterType((*MessageRequest)(nil), "chaty.MessageRequest")
	proto.RegisterType((*MessageResponse)(nil), "chaty.MessageResponse")
	proto.RegisterType((*User)(nil), "chaty.User")
	proto.RegisterType((*Users)(nil), "chaty.Users")
	proto.RegisterType((*UserEvents)(nil), "chaty.UserEvents")
	proto.RegisterType((*TypingState)(nil), "chaty.TypingState")
	proto.RegisterType((*ListUsers)(nil), "chaty.ListUsers")
	proto.RegisterType((*ClientEvents)(nil), "chaty.ClientEvents")
	proto.RegisterType((*ServerEvents)(nil), "chaty.ServerEvents")
}

func init() {
	proto.RegisterFile("api.proto", fileDescriptor_00212fb1f9d3bf1c)
}

var fileDescriptor_00212fb1f9d3bf1c = []byte{
	// 649 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0x9c, 0x55, 0x6d, 0x6f, 0xd3, 0x3c,
	0x14, 0x4d, 0xd6, 0x36, 0x6d, 0x6e, 0xb2, 0x97, 0xc7, 0x7b, 0x80, 0x0a, 0x04, 0x1a, 0xd6, 0x3e,
	0x54, 0x13, 0x2a, 0xa3, 0x20, 0x26, 0x24, 0x10, 0xd2, 0xca, 0x50, 0x87, 0x78, 0x91, 0x3c, 0x26,
	0x24, 0x24, 0x14, 0x85, 0xd6, 0x6c, 0xee, 0x9a, 0xa4, 0xc4, 0xee, 0xc4, 0xfe, 0x07, 0xff, 0x80,
	0xbf, 0xc9, 0x07, 0xe4, 0x97, 0xa4, 0x4e, 0x50, 0x11, 0xe2, 0x53, 0xea, 0xeb, 0x73, 0x8f, 0xef,
	0x3d, 0xf7, 0xd8, 0x05, 0x3f, 0x9e, 0xb3, 0xfe, 0x3c, 0xcf, 0x44, 0x86, 0x5a, 0xe3, 0xf3, 0x58,
	0x5c, 0xe1, 0x3d, 0x08, 0x5e, 0x65, 0x2c, 0x25, 0xf4, 0xeb, 0x82, 0x72, 0x81, 0x6e, 0x81, 0xbf,
	0xe0, 0x34, 0x8f, 0xd2, 0x38, 0xa1, 0x5d, 0x77, 0xc7, 0xed, 0xf9, 0xa4, 0x23, 0x03, 0x6f, 0xe3,
	0x84, 0xe2, 0x17, 0x10, 0x6a, 0x2c, 0x9f, 0x67, 0x29, 0xa7, 0x7f, 0x04, 0xa3, 0x1b, 0xd0, 0x56,
	0x9b, 0x6c, 0xd2, 0x5d, 0x53, 0x5b, 0x9e, 0x5c, 0x1e, 0x4f, 0xf0, 0x07, 0x08, 0x86, 0xe7, 0xb1,
	0x78, 0x43, 0x39, 0x8f, 0xcf, 0x2a, 0x38, 0xd7, 0xc6, 0x55, 0xd9, 0xd7, 0x6a, 0xec, 0x08, 0x9a,
	0x82, 0x7e, 0x13, 0xdd, 0x86, 0x8a, 0xab, 0xdf, 0xb8, 0x07, 0xeb, 0x86, 0xf4, 0x74, 0x3e, 0x89,
	0x85, 0xa2, 0x66, 0x3c, 0xca, 0x69, 0xac, 0xa9, 0x3b, 0xc4, 0x63, 0x9c, 0xd0, 0x78, 0x82, 0x3f,
	0xc1, 0x86, 0x41, 0x16, 0x7d, 0xdf, 0x83, 0x76, 0xa2, 0x23, 0x8a, 0x32, 0x18, 0xa0, 0xbe, 0xd2,
	0xa7, 0x6f, 0x95, 0x4a, 0x0a, 0x08, 0xba, 0x0d, 0x90, 0xeb, 0x44, 0x59, 0x76, 0x53, 0xd5, 0xe0,
	0x9b, 0xc8, 0xf1, 0x04, 0x1f, 0xc1, 0x66, 0x49, 0x6f, 0xa4, 0xda, 0x86, 0x16, 0xe3, 0x51, 0x76,
	0x61, 0x0a, 0x69, 0x32, 0xfe, 0xee, 0xa2, 0x46, 0xb3, 0x56, 0xa7, 0x79, 0x0a, 0xcd, 0x53, 0x4e,
	0xf3, 0x7f, 0x53, 0x08, 0xef, 0x41, 0x4b, 0x66, 0x73, 0x74, 0x17, 0x5a, 0x32, 0xc8, 0xbb, 0xee,
	0x4e, 0xa3, 0x17, 0x0c, 0x02, 0xd3, 0x98, 0xdc, 0x24, 0x7a, 0x07, 0x7f, 0x77, 0x01, 0xe4, 0xfa,
	0xe8, 0x92, 0xa6, 0x82, 0xaf, 0x3e, 0x70, 0x1f, 0x3c, 0xaa, 0x20, 0xea, 0xb4, 0x8d, 0x41, 0xd7,
	0xe2, 0xd2, 0xb9, 0x7d, 0xfd, 0x21, 0x06, 0x57, 0x2d, 0xb1, 0x51, 0x2b, 0xf1, 0x0e, 0x78, 0xe6,
	0x44, 0x00, 0x6f, 0x9a, 0xb1, 0x94, 0x4e, 0xb6, 0x1c, 0xd4, 0x81, 0xe6, 0x8c, 0x7e, 0x11, 0x5b,
	0x2e, 0x1e, 0x42, 0xf0, 0xfe, 0x6a, 0xce, 0xd2, 0xb3, 0x13, 0x61, 0xc6, 0xb9, 0x52, 0x07, 0xc6,
	0x23, 0xa1, 0xa0, 0xaa, 0xb2, 0x0e, 0xe9, 0x30, 0xae, 0x53, 0xf1, 0x2e, 0xf8, 0xaf, 0x19, 0x17,
	0x5a, 0x8b, 0x55, 0x14, 0xf8, 0xa7, 0x0b, 0xe1, 0x70, 0xc6, 0x68, 0x2a, 0x4c, 0x45, 0x8f, 0x21,
	0x98, 0x2e, 0xef, 0x85, 0x42, 0x2f, 0x4d, 0x61, 0xdd, 0x98, 0x91, 0x43, 0x6c, 0x20, 0x7a, 0x0e,
	0x1b, 0x49, 0xc5, 0x5a, 0xaa, 0xa0, 0x60, 0x70, 0xcd, 0xa4, 0x56, 0x7d, 0x37, 0x72, 0x48, 0x0d,
	0x8e, 0x0e, 0x20, 0xd4, 0x9d, 0x44, 0xaa, 0xeb, 0x9a, 0x1d, 0x2d, 0x3d, 0xe4, 0xc9, 0xc2, 0x92,
	0xe7, 0x01, 0xc0, 0x8c, 0x71, 0x11, 0xe9, 0x61, 0x37, 0x55, 0xda, 0x96, 0x49, 0x2b, 0x15, 0x18,
	0x39, 0xc4, 0x9f, 0x15, 0x8b, 0xc3, 0x36, 0xb4, 0xd4, 0x9c, 0xf0, 0x8f, 0x06, 0x84, 0x27, 0x34,
	0xbf, 0x2c, 0x2d, 0xf0, 0x04, 0xc2, 0xa9, 0x75, 0xd5, 0x4d, 0xff, 0xdb, 0x95, 0xfe, 0xf5, 0xd6,
	0xc8, 0x21, 0x15, 0x28, 0x3a, 0x84, 0xcd, 0xa4, 0xea, 0x7e, 0x23, 0xc1, 0xf5, 0xba, 0x04, 0x25,
	0x41, 0x3d, 0x01, 0xed, 0x16, 0x9e, 0xd5, 0xdd, 0x87, 0x96, 0xcf, 0x64, 0x0b, 0x7a, 0x13, 0x3d,
	0x82, 0x40, 0x4d, 0xd3, 0x78, 0x52, 0xb7, 0xfc, 0xdf, 0x6f, 0x9e, 0x1c, 0x39, 0x04, 0x16, 0x4b,
	0x77, 0x1f, 0x40, 0x28, 0x11, 0x51, 0x71, 0xdf, 0x5b, 0xab, 0xee, 0xbb, 0x14, 0x78, 0x6c, 0xbd,
	0x54, 0xcb, 0xc9, 0x70, 0x35, 0x19, 0xef, 0x6f, 0x27, 0xf3, 0xac, 0xf4, 0x44, 0xb4, 0x50, 0x2f,
	0x53, 0xb7, 0xad, 0x52, 0xff, 0xaf, 0x0a, 0xa2, 0x5f, 0xad, 0x91, 0x43, 0xd6, 0x13, 0x3b, 0x50,
	0x4e, 0x69, 0xf0, 0x52, 0xbf, 0x9c, 0x72, 0x50, 0x6c, 0x2c, 0xeb, 0x69, 0x0f, 0xb3, 0x34, 0xa5,
	0x63, 0x81, 0x8a, 0xc1, 0xd8, 0x16, 0xbe, 0x59, 0x04, 0xed, 0xc1, 0xf6, 0xdc, 0x7d, 0xf7, 0xd0,
	0xff, 0xd8, 0xee, 0xdf, 0x57, 0xff, 0x02, 0x9f, 0x3d, 0xf5, 0x79, 0xf8, 0x2b, 0x00, 0x00, 0xff,
	0xff, 0xf8, 0x9d, 0xf6, 0x54, 0x19, 0x06, 0x00, 0x00,
}
