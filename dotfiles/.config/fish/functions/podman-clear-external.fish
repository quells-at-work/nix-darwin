function podman-clear-external
    podman ps -a --external --format '{{.ID}}' | xargs -r podman rm -f
end
