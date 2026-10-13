# tran（ベータ版の配布）

tran は、日本語話者が英語で仕事をするときに使う、常駐型の翻訳ツールです。
このリポジトリには、ベータ版のインストーラーと、パッケージ管理ツール用の定義ファイルだけを置いています。

## インストール

### macOS（Homebrew）

```bash
brew tap oxgenet/tran https://github.com/oxgenet/tran-pub
brew install --cask oxgenet/tran/tran
```

Homebrew が「tap が信頼されていない」と表示した場合は、次を実行してからインストールし直します。

```bash
brew trust --tap oxgenet/tran
```

### Windows（Scoop）

```powershell
scoop install https://github.com/oxgenet/tran-pub/releases/latest/download/tran.json
```

### 直接ダウンロード

[Releases](https://github.com/oxgenet/tran-pub/releases) から、macOS は `.dmg`、Windows は `-setup.exe` をダウンロードします。

## 使い始める前に

tran は、翻訳に LLM の API を使います。初回に、設定画面（macOS は Cmd+,、Windows は Ctrl+,）で、プロバイダーと自分の API キーを登録してください。
