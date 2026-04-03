# Project

<!-- プロジェクトの概要をここに記述 -->

## Commands

```bash
just fmt        # フォーマット
just lint       # clippy
just test       # テスト
just check      # CI 相当（fmt-check + lint + test）
just build      # リリースビルド
just release    # リリース手順
```

## Structure

```
src/             # ソースコード
.github/workflows/  # CI/CD
```

## Guidelines

- コミットメッセージ: Conventional Commits (feat:, fix:, chore:, docs:, refactor:)
- テストファースト開発
- `cargo clippy -- -D warnings` を通すこと
