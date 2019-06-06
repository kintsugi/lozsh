# ---
# Category: File
# Since: 0.1.0
## Dependent: count_lines
# Usage: l.count_files <directory_path>
# ---

l.count_files() {
  local files
  files=( $(compgen -f "$1"/) )
  printf '%s\n' "${#files[@]}"
}
