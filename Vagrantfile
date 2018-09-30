# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'json'
require 'yaml'

VAGRANTFILE_API_VERSION ||= "2"
confDir = $confDir ||= File.expand_path(File.dirname(__FILE__))

windsteadYamlPath = confDir + "/Windstead.yaml"
windsteadJsonPath = confDir + "/Windstead.json"

require File.expand_path(File.dirname(__FILE__) + '/scripts/Windstead.rb')

Vagrant.require_version '>= 2.1.0'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    if File.exist? windsteadYamlPath then
        settings = YAML::load(File.read(windsteadYamlPath))
    elsif File.exist? windsteadJsonPath then
        settings = JSON::parse(File.read(windsteadJsonPath))
    else
        abort "Windstead settings file not found in #{confDir}"
    end

    Windstead.configure(config, settings)

    if Vagrant.has_plugin?('vagrant-hostsupdater')
        config.hostsupdater.aliases = settings['sites'].map { |site| site['map'] }
    elsif Vagrant.has_plugin?('vagrant-hostmanager')
        config.hostmanager.enabled = true
        config.hostmanager.manage_host = true
        config.hostmanager.aliases = settings['sites'].map { |site| site['map'] }
    end
end
