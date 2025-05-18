# infra
Where I keep my personal IaC

# Run

from the `ansible/` directory

```
ansible-playbook -i ./inventory.ini ./roles/cimmaron/tasks/configure_syncthing.yaml
```

Note to self: Delete the nexcloud docker volumes if you need an extra 10-20GB someday. They are no longer used.

# Networking

To add an app to traefik,

- Copy labels from another service like Nextcloud
- `s/nextcloud/<your_app>/g`
- Expose the port the app wants to use, make sure to update the label with the right port
- Make sure to add the app to the traefik network
```
    networks:
      - traefik
```

- Add the `networks` stanza

```
networks:
  traefik:
    external: true
    name: traefik-net
  navidrome:
```
