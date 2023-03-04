proto-gen:
	@protoc --go_out=grpc  --go-grpc_out=grpc/  api.proto
	@protoc --dart_out=grpc:../../../frontend/flutter/chaty/lib/core/client/grpc  api.proto google/protobuf/empty.proto --plugin=protoc-gen-dart=$$HOME/.pub-cache/bin/protoc-gen-dart