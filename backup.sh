#!/bin/bash
docker run --rm -i --name minecraftbackup -v mceternaldata:/volume -v "$(pwd)/backup:/backup" debian:bullseye \
tar -czf /backup/minecraft-$(date +%Y-%m-%d_%H-%M-%S).tar.gz -C /volume ./
