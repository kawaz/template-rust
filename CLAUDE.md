# Project

<!-- プロジェクトの概要をここに記述 -->

## Commands

```bash
just fmt        # フォーマット
just check      # fmt-check + clippy
just test       # テスト
just build      # リリースビルド
just push       # check + test してから push
just ci         # CI 相当（check + test + build）
just release    # リリース（version bump + CHANGELOG + push）
```

## Structure

```
src/                # ソースコード
.github/workflows/  # CI/CD
  ci.yml            # テスト（push/PR）
  release.yml       # リリース（Cargo.toml version 変更トリガー）
```

## Guidelines

- コミットメッセージ: Conventional Commits (feat:, fix:, chore:, docs:, refactor:)
- テストファースト開発
- `just check` を通してから push
- push は `just push` を使う（直接 push は hook でブロック）
- リリースは `just release` で自動化
