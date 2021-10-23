#!/bin/bash
SCRIPTDIR=$(dirname "$0")
cd ${SCRIPTDIR}/../../
PROJECT_DIR=$(pwd);
PROTO_DIR=${PROJECT_DIR}/lib/src
PROTO_STG_DIR=${PROJECT_DIR}/lib/src/generated

echo "Downloading Release Asset (proto)..."
mkdir -p ${PROTO_STG_DIR}
gh release download --repo 'sonr-io/core' --pattern proto_*.zip --dir ${PROTO_DIR}
unzip -o ${PROTO_DIR}/proto_*.zip -d ${PROTO_STG_DIR}
rm -rf ${PROTO_DIR}/proto_*.zip

echo "🔷 Compiling protos..."
protoc --dart_out=grpc:${PROTO_DIR} --proto_path=${PROTO_STG_DIR}
rm -rf ${PROTO_STG_DIR}
echo "✅ Finished Compiling ➡ `date`"
