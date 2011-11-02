#!/bin/bash

REPO_URL=http://asakusafw.s3.amazonaws.com/maven/

usage() {
        cat <<EOF
Usage: setup_batchapp_project

バッチアプリケーション開発用プロジェクトをセットアップします。

 順  引数                                   必須/任意
 ----------------------------------------------------
 1   グループID (パッケージ名)                必須
 2   アーティファクトID (プロジェクト名)      必須
 3   Asakusa Frameworkのアーキタイプ          必須
 4   Asakusa FrameworkのVersion               必須
     (指定可能なアーキタイプとVersionは以下のURLを参照)
     ${REPO_URL}archetype-catalog.xml
EOF
}

if [ $# -ne 4 ]; then
  usage
  exit 1
fi

GROUPID="$1"
shift
ARTIFACTID="$1"
shift
ARCHETYPE="$1"
shift
ASAKUSA_VERSION="$1"

if [[ "$ASAKUSA_VERSION" = *-SNAPSHOT ]]; then
  echo "Generate from Snapshot Repository..."
  REPO_SUFFIX=snapshots
else
  REPO_SUFFIX=releases
fi

cd "$HOME"/workspace
mvn archetype:generate -DarchetypeRepository="${REPO_URL}${REPO_SUFFIX}" -DarchetypeCatalog="${REPO_URL}"archetype-catalog.xml -DinteractiveMode=false -DarchetypeGroupId=com.asakusafw -DarchetypeArtifactId="$ARCHETYPE" -DarchetypeVersion="$ASAKUSA_VERSION" -DgroupId="$GROUPID" -DartifactId="$ARTIFACTID" -Dversion=1.0-SNAPSHOT -Dpackage="$GROUPID"

if [ $? -ne 0 ]; then
  exit 1
fi

cd "$ARTIFACTID"
mvn clean assembly:single antrun:run compile eclipse:eclipse

