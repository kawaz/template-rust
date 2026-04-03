# Rust Project

default:
    @just --list

# フォーマット
fmt:
    cargo fmt

# フォーマットチェック
fmt-check:
    cargo fmt --all -- --check

# lint
lint:
    cargo clippy --all-targets --all-features -- -D warnings

# テスト
test:
    cargo test --verbose

# ビルド
build:
    cargo build --release

# CI 相当のチェック
check: fmt-check lint test

# リリース（タグを打って push → CI が自動ビルド）
release bump="patch":
    #!/usr/bin/env bash
    set -euo pipefail
    just check
    CURRENT=$(cargo metadata --no-deps --format-version=1 | jq -r '.packages[0].version')
    echo "Current version: $CURRENT"
    echo "Bump type: {{bump}}"
    # cargo-release or manual version bump
    echo "TODO: version bump to next {{bump}}, then:"
    echo "  jj describe -m \"chore: release vX.Y.Z\""
    echo "  jj new"
    echo "  jj bookmark set main -r @-"
    echo "  jj git push"
    echo "  git tag vX.Y.Z && git push origin vX.Y.Z"
