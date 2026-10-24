#!/usr/bin/env bash
# Creates/updates the local MySQL CoursePlanner database.
# Usage: scripts/setup-db.sh [--help]
#
# database/schema.sql drops and recreates CoursePlanner itself (DROP
# DATABASE/CREATE DATABASE/USE), so every run of this script resets the
# database -- there's no separate --reset flag.
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DB_DIR="$REPO_ROOT/database"

log() { echo "[setup-db] $1"; }

for arg in "$@"; do
  case "$arg" in
    -h|--help)
      echo "Usage: scripts/setup-db.sh  (drops and recreates CoursePlanner, applies schema, seeds it)"
      exit 0 ;;
    *) echo "[setup-db] ERROR: Unknown argument: $arg" >&2; exit 1 ;;
  esac
done

# Load .env without executing it as shell code.
if [[ -f "$REPO_ROOT/.env" ]]; then
  while IFS='=' read -r key val; do
    [[ -z "$key" || "$key" == \#* ]] && continue
    [[ -z "${!key:-}" ]] && export "$key=$val"
  done < "$REPO_ROOT/.env"
fi

MYSQL_HOST="${MYSQL_HOST:-127.0.0.1}"
MYSQL_PORT="${MYSQL_PORT:-3306}"
MYSQL_USER="${MYSQL_USER:-root}"
MYSQL_PASSWORD="${MYSQL_PASSWORD:-}"

run_mysql() {
  MYSQL_PWD="$MYSQL_PASSWORD" mysql -h "$MYSQL_HOST" -P "$MYSQL_PORT" -u "$MYSQL_USER" "$@"
}

log "Applying schema (drops and recreates CoursePlanner)..."
run_mysql < "$DB_DIR/schema.sql"

log "Seeding sample data..."
run_mysql < "$DB_DIR/seed-sample.sql"

log "Seeding subject/category reference data..."
run_mysql < "$DB_DIR/seed-production.sql"

log "Done."
