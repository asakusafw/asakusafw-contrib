===============================================================
Mavenコマンドのラップスクリプトを使用してプロジェクトを作成する
===============================================================
バッチアプリケーション作成用スクリプト ``setup_batchapp_project.sh`` はアプリケーション開発環境構築用のMavenコマンドのラップスクリプトです。このスクリプトを使用すると1回のコマンド実
行でアプリケーション開発用プロジェクトの作成とAsakusa Frameworkのインストールを行うことが出来ます。

このコマンドを実行すると、以下の処理が行われます。

1. ``mvn archetype:generate`` を実行し、 ``$HOME/workspace`` 配下にアプリケーションプロジェクトを作成
2. ``mvn assembly:single`` を実行し、Asakusa Frameworkインストールアーカイブを作成
3. ``mvn antrun:run`` を実行し、Asakusa Frameworkをローカルにインストール
4. ``mvn compile`` を実行し、アーキタイプに含まれるサンプルアプリケーションをコンパイル
5. ``mvn eclipse:eclipse`` を実行し、Eclipse用定義ファイルを作成

``setup_batchapp_project.sh`` はGitHub上のasakusa-contribリポジトリに置かれています。以下の手順でスクリプトを取得します。

..  code-block:: sh

    wget https://raw.github.com/asakusafw/asakusafw-contrib/master/development-utilities/scripts/setup_batchapp_project.sh
    chmod +x setup_batchapp_project.sh

``setup_batchapp_project.sh`` は以下の引数を指定して実行します。

..  list-table:: バッチアプリケーション作成用スクリプトの引数
    :widths: 1 9
    :header-rows: 1
    
    * - no
      - 説明
    * - 1
      - グループID。 パッケージ名にもこの値が使用されます。
    * - 2
      - アーティファクトID (プロジェクト名)。
    * - 3
      - Asakusa Frameworkのアーキタイプ
    * - 4
      - Asakusa FrameworkのVersion [#]_
      
..  [#] 指定可能なAsakusa FrameworkのアーキタイプとVersionの組み合わせは、アーキタイプカタログ http://asakusafw.s3.amazonaws.com/maven/archetype-catalog.xml を参照して下さい。

例えば Asakusa Framework バージョン0.2.4 の WindGate用アーキタイプからアプリケーションプロジェクトを作成する場合は以下のように実行します。

..  code-block:: sh

    ./setup_batchapp_project.sh com.example example-app asakusa-archetype-windgate 0.2.4

