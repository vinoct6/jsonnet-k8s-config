{
  apiVersion: 'apps/v1',
  kind: 'Deployment',
  metadata: {
    name: 'nginx-deployment',
    labels: { app: 'nginx' }
  },
  spec: {
    replicas: 1,
    selector: { matchLabels: { app: 'nginx' } },
    template: {
      metadata: { labels: { app: 'nginx' } },
      spec: {
        containers: [{
          name: 'nginx',
          image: 'nginx:latest',
          ports: [{ containerPort: 80 }]
        }]
      }
    }
  }
}
