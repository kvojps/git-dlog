find "<PATH>" -name ".git" | while read -r line; do
  dir="${line/.git/}"
  repo_name="$(basename "$dir")"
  echo
  echo "📁 Repositório: $repo_name"

  cd "$dir" || continue

  # git fetch --all --prune --quiet

  head_commit=$(git log -1 --pretty=format:'%d')
  echo "🔖 Último commit (HEAD): $head_commit"

  echo "🌿 Branches locais:"
  git for-each-ref --format='%(refname:short)' refs/heads/ | while read -r branch; do
    commit_info=$(git log -1 --pretty=format:'%h - %an, %ar' "$branch")
    echo "  🔀 $branch → $commit_info"
  done

  echo "🌍 Branches remotas:"
  git for-each-ref --format='%(refname:short)' refs/remotes/ | while read -r remote_branch; do
    commit_info=$(git log -1 --pretty=format:'%h - %an, %ar' "$remote_branch")
    echo "  🌐 $remote_branch → $commit_info"
  done

  echo
done
