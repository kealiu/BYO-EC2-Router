1. WireGuard 配置
配置文件位于 `/etc/wireguard/wg0.conf`, 执行 `sudo systemctl enable --now wg-quick@wg0` 启用 `wg0` interface. 
3. GRE配置
指向 `gre.sh`
5. BIRD配置
配置文件位于 `/etc/bird/bird.conf`
