{
  config_exporters = { optionalAttrs, ... }: [
    (config: { digitalOcean = optionalAttrs (config.deployment.targetEnv == "digitalOcean") config.deployment.digitalOcean; })
  ];
  options = [
    ./digital-ocean.nix
  ];
  resources = { evalResources, zipAttrs, resourcesByType, ... }: { };
}
