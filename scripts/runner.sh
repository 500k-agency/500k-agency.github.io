podman run -d --rm --name github-runner \
  -e RUN_AS_ROOT=false \
  -e REPO_URL="https://github.com/$REPO_OWNER/$REPO_NAME" \
  -e ACCESS_TOKEN="$ACCESS_TOKEN" \
  -e RUNNER_SCOPE="repo" \
  -e LABELS="self-hosted,X64,pod" \
  -v /var/run/docker.sock:/var/run/docker.sock \
  myoung34/github-runner:latest
