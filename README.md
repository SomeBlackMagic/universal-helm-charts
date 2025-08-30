# universal-helm-charts

The **universal-helm-charts** repository provides a universal Helm chart to streamline the process of deploying applications into a Kubernetes cluster. It eliminates the need to create a new Helm chart for each application.

## Key Features

- **Reusable Chart**: Designed for deploying multiple applications using a single Helm chart.
- **Integration Tests**: Comes with integration tests that can be executed in your pipeline as part of the application build process.

## Best Practices

When using this chart within your repository, it is strongly recommended to rename the chart and its folder. Additionally, replace "app" with your company name for consistency and clarity.

### Example:
- Original: `app-worker`
- Recommended: `github-workers` or `booking-worker`

This approach ensures better organization and naming conventions across your projects.
