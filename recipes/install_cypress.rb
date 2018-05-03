include_recipe 'rabbitmq'

cypress_install_app 'js-ecqm-engine' do
  application_path node[:cypress][:js_ecqm_install_path]
  application_version node[:cypress][:js_ecqm_version]
  repository node[:cypress][:js_ecqm_repository]
  repository_key node[:cypress][:js_ecqm_repository_key]
  frontend_worker_count 0
  generate_secrets_on_restart false
end

cypress_install_app 'cypress' do
  application_path node[:cypress][:cypress_install_path]
  application_version node[:cypress][:cypress_version]
  repository node[:cypress][:cypress_repository]
  repository_key node[:cypress][:cypress_repository_key]
  env_vars node[:cypress][:cypress_env_vars]
  unicorn_port node[:cypress][:cypress_internal_port]
  generate_secrets_on_restart node[:cypress][:generate_secrets_on_restart]
end
