#!/usr/bin/env bash
# Creates/updates the local MySQL databases for this project.
# Usage: scripts/setup-db.sh [--reset] [--help]
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DB_DIR="$REPO_ROOT/database"
SCHEMA_FILE="$DB_DIR/schema.sql"
SEED_SAMPLE_FILE="$DB_DIR/seed-sample.sql"
SEED_PRODUCTION_FILE="$DB_DIR/seed-production.sql"

log() { echo "[setup-db] $1"; }
die() { echo "[setup-db] ERROR: $1" >&2; exit 1; }

RESET=false
for arg in "$@"; do
  case "$arg" in
    --reset) RESET=true ;;
    -h|--help)
      echo "Usage: scripts/setup-db.sh [--reset]  (--reset drops and recreates both databases)"
      exit 0 ;;
    *) die "Unknown argument: $arg" ;;
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
SAMPLE_DB="${SAMPLE_DB:-cs348_sample}"
PRODUCTION_DB="${PRODUCTION_DB:-cs348_production}"

run_mysql() {
  MYSQL_PWD="$MYSQL_PASSWORD" mysql -h "$MYSQL_HOST" -P "$MYSQL_PORT" -u "$MYSQL_USER" "$@"
}

if $RESET; then
  run_mysql -e "DROP DATABASE IF EXISTS \`$SAMPLE_DB\`; DROP DATABASE IF EXISTS \`$PRODUCTION_DB\`;"
  log "Dropped existing databases."
fi

log "Creating databases if needed..."
run_mysql -e "CREATE DATABASE IF NOT EXISTS \`$SAMPLE_DB\` CHARACTER SET utf8mb4;"
run_mysql -e "CREATE DATABASE IF NOT EXISTS \`$PRODUCTION_DB\` CHARACTER SET utf8mb4;"

log "Applying schema..."
run_mysql "$SAMPLE_DB" < "$SCHEMA_FILE"
run_mysql "$PRODUCTION_DB" < "$SCHEMA_FILE"

log "Seeding sample database..."
run_mysql "$SAMPLE_DB" < "$SEED_SAMPLE_FILE"
log "Seeding production database..."
run_mysql "$PRODUCTION_DB" < "$SEED_PRODUCTION_FILE"

log "Done."
