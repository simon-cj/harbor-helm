#!/bin/bash
docker pull goharbor/redis-photon:v2.0.2
docker tag goharbor/redis-photon:v2.0.2 cargo.dev.caicloud.xyz/release/redis-photon:v2.0.2
docker push cargo.dev.caicloud.xyz/release/redis-photon:v2.0.2

docker pull goharbor/harbor-db:v2.0.2
docker tag goharbor/harbor-db:v2.0.2 cargo.dev.caicloud.xyz/release/harbor-db:v2.0.2
docker push cargo.dev.caicloud.xyz/release/harbor-db:v2.0.2

docker pull goharbor/nginx-photon:v2.0.2
docker tag goharbor/nginx-photon:v2.0.2 cargo.dev.caicloud.xyz/release/nginx-photon:v2.0.2
docker push cargo.dev.caicloud.xyz/release/nginx-photon:v2.0.2

docker pull goharbor/harbor-portal:v2.0.2
docker tag goharbor/harbor-portal:v2.0.2 cargo.dev.caicloud.xyz/release/harbor-portal:v2.0.2
docker push cargo.dev.caicloud.xyz/release/harbor-portal:v2.0.2

docker pull goharbor/harbor-core:v2.0.2
docker tag goharbor/harbor-core:v2.0.2 cargo.dev.caicloud.xyz/release/harbor-core:v2.0.2
docker push cargo.dev.caicloud.xyz/release/harbor-core:v2.0.2

docker pull goharbor/harbor-jobservice:v2.0.2
docker tag goharbor/harbor-jobservice:v2.0.2 cargo.dev.caicloud.xyz/release/harbor-jobservice:v2.0.2
docker push cargo.dev.caicloud.xyz/release/harbor-jobservice:v2.0.2

docker pull goharbor/registry-photon:v2.0.2
docker tag goharbor/registry-photon:v2.0.2 cargo.dev.caicloud.xyz/release/registry-photon:v2.0.2
docker push cargo.dev.caicloud.xyz/release/registry-photon:v2.0.2

docker pull goharbor/harbor-registryctl:v2.0.2
docker tag goharbor/harbor-registryctl:v2.0.2 cargo.dev.caicloud.xyz/release/harbor-registryctl:v2.0.2
docker push cargo.dev.caicloud.xyz/release/harbor-registryctl:v2.0.2

docker pull goharbor/chartmuseum-photon:v2.0.2
docker tag goharbor/chartmuseum-photon:v2.0.2 cargo.dev.caicloud.xyz/release/chartmuseum-photon:v2.0.2
docker push cargo.dev.caicloud.xyz/release/chartmuseum-photon:v2.0.2

docker pull goharbor/clair-photon:v2.0.2
docker tag goharbor/clair-photon:v2.0.2 cargo.dev.caicloud.xyz/release/clair-photon:v2.0.2
docker push cargo.dev.caicloud.xyz/release/clair-photon:v2.0.2

docker pull goharbor/clair-adapter-photon:v2.0.2
docker tag goharbor/clair-adapter-photon:v2.0.2 cargo.dev.caicloud.xyz/release/clair-adapter-photon:v2.0.2
docker push cargo.dev.caicloud.xyz/release/clair-adapter-photon:v2.0.2


docker pull goharbor/trivy-adapter-photon:v2.0.2
docker tag goharbor/trivy-adapter-photon:v2.0.2 cargo.dev.caicloud.xyz/release/trivy-adapter-photon:v2.0.2
docker push cargo.dev.caicloud.xyz/release/trivy-adapter-photon:v2.0.2

docker pull goharbor/notary-server-photon:v2.0.2
docker tag goharbor/notary-server-photon:v2.0.2 cargo.dev.caicloud.xyz/release/notary-server-photon:v2.0.2
docker push cargo.dev.caicloud.xyz/release/notary-server-photon:v2.0.2

docker pull goharbor/notary-signer-photon:v2.0.2
docker tag goharbor/notary-signer-photon:v2.0.2 cargo.dev.caicloud.xyz/release/notary-signer-photon:v2.0.2
docker push cargo.dev.caicloud.xyz/release/notary-signer-photon:v2.0.2

helm install harbor . --set expose.type=nodePort --set expose.tls.enabled=false --set trivy.enabled=false --set notary.enabled=false --set persistence.enabled=false --set trivy.ignoreUnfixed=true --set trivy.insecure=true --set harborAdminPassword=Harbor12345 --set externalURL=http://192.168.33.34:30022 --namespace kleveross-system
