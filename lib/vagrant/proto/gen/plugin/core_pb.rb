# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: core.proto

require 'google/protobuf'

require_relative './plugin_pb'
require 'google/protobuf/any_pb'
require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("core.proto", :syntax => :proto3) do
    add_message "hashicorp.vagrant.sdk.StateBag" do
      map :data, :string, :message, 1, "hashicorp.vagrant.sdk.StateBag.Value"
    end
    add_message "hashicorp.vagrant.sdk.StateBag.Value" do
      oneof :value do
        optional :text, :string, 1
        optional :map, :message, 2, "google.protobuf.Any"
      end
    end
    add_message "hashicorp.vagrant.sdk.LabelSet" do
      map :labels, :string, :string, 1
    end
    add_message "hashicorp.vagrant.sdk.Options" do
      optional :opt, :message, 1, "hashicorp.vagrant.sdk.LabelSet"
    end
    add_message "hashicorp.vagrant.sdk.SSHInfo" do
      optional :host, :string, 1
      optional :port, :string, 2
      optional :private_key_path, :string, 3
      optional :keys_only, :bool, 4
      optional :verify_host_key, :bool, 5
      optional :username, :string, 6
      optional :remote_user, :string, 7
      optional :compression, :bool, 8
      optional :dsa_authentication, :bool, 9
      optional :config, :string, 10
      repeated :extra_args, :string, 11
      optional :forward_agent, :bool, 12
      optional :forward_x11, :bool, 13
      repeated :forward_env, :string, 14
      optional :connect_timeout, :int64, 15
      optional :ssh_command, :string, 16
      optional :proxy_command, :string, 17
    end
    add_message "hashicorp.vagrant.sdk.WinrmInfo" do
      optional :username, :string, 1
      optional :password, :string, 2
      optional :host, :string, 3
      optional :port, :int64, 4
      optional :guest_port, :int64, 5
      optional :max_tries, :int64, 6
      optional :retry_delay, :int64, 7
      optional :timeout, :int64, 8
      optional :transport, :enum, 9, "hashicorp.vagrant.sdk.WinrmInfo.Transport"
      optional :ssl_peer_verification, :bool, 10
      optional :execution_time_limit, :string, 11
      optional :basic_auth_only, :bool, 12
      optional :codepage, :string, 13
    end
    add_enum "hashicorp.vagrant.sdk.WinrmInfo.Transport" do
      value :NEGOTIATE, 0
      value :SSL, 1
      value :PLAINTEXT, 2
    end
    add_message "hashicorp.vagrant.sdk.MachineState" do
      optional :id, :string, 1
      optional :short_description, :string, 2
      optional :long_description, :string, 3
    end
    add_message "hashicorp.vagrant.sdk.MachineIndex" do
    end
    add_message "hashicorp.vagrant.sdk.MachineIndex.Entry" do
      optional :id, :string, 1
      optional :local_data_path, :string, 2
      optional :name, :string, 3
      optional :provider, :string, 4
      optional :state, :string, 5
      optional :vagrantfile_name, :string, 6
      optional :vagrantfile_path, :string, 7
      optional :updated_at, :string, 8
      optional :extra_data, :message, 9, "hashicorp.vagrant.sdk.Options"
    end
    add_message "hashicorp.vagrant.sdk.BoxCollection" do
      optional :directory, :string, 1
    end
    add_message "hashicorp.vagrant.sdk.Box" do
      optional :name, :string, 1
      optional :provider, :string, 2
      optional :version, :string, 3
      optional :directory, :string, 4
      optional :metadata, :message, 5, "hashicorp.vagrant.sdk.Options"
      optional :metadata_url, :string, 6
    end
    add_message "hashicorp.vagrant.sdk.Environment" do
    end
    add_message "hashicorp.vagrant.sdk.MachineProvider" do
    end
    add_message "hashicorp.vagrant.sdk.Configuration" do
    end
    add_message "hashicorp.vagrant.sdk.Vagrantfile" do
    end
    add_message "hashicorp.vagrant.sdk.Ref" do
    end
    add_message "hashicorp.vagrant.sdk.Ref.Machine" do
      optional :resource_id, :string, 1
    end
    add_message "hashicorp.vagrant.sdk.Machine" do
    end
    add_message "hashicorp.vagrant.sdk.Machine.SetNameRequest" do
      optional :machine, :message, 1, "hashicorp.vagrant.sdk.Ref.Machine"
      optional :name, :string, 2
    end
    add_message "hashicorp.vagrant.sdk.Machine.SetNameResponse" do
    end
    add_message "hashicorp.vagrant.sdk.Machine.GetNameRequest" do
      optional :machine, :message, 1, "hashicorp.vagrant.sdk.Ref.Machine"
    end
    add_message "hashicorp.vagrant.sdk.Machine.GetNameResponse" do
      optional :name, :string, 1
    end
    add_message "hashicorp.vagrant.sdk.Machine.SetIDRequest" do
      optional :machine, :message, 1, "hashicorp.vagrant.sdk.Ref.Machine"
      optional :id, :string, 2
    end
    add_message "hashicorp.vagrant.sdk.Machine.SetIDResponse" do
    end
    add_message "hashicorp.vagrant.sdk.Machine.GetIDRequest" do
      optional :machine, :message, 1, "hashicorp.vagrant.sdk.Ref.Machine"
    end
    add_message "hashicorp.vagrant.sdk.Machine.GetIDResponse" do
      optional :id, :string, 1
    end
    add_message "hashicorp.vagrant.sdk.Machine.BoxRequest" do
      optional :machine, :message, 1, "hashicorp.vagrant.sdk.Ref.Machine"
    end
    add_message "hashicorp.vagrant.sdk.Machine.BoxResponse" do
      optional :box, :message, 1, "hashicorp.vagrant.sdk.Box"
    end
    add_message "hashicorp.vagrant.sdk.Machine.DatadirRequest" do
      optional :machine, :message, 1, "hashicorp.vagrant.sdk.Ref.Machine"
    end
    add_message "hashicorp.vagrant.sdk.Machine.DatadirResponse" do
      optional :datadir, :message, 1, "hashicorp.vagrant.sdk.Args.DataDir.Machine"
    end
    add_message "hashicorp.vagrant.sdk.Machine.LocalDataPathRequest" do
      optional :machine, :message, 1, "hashicorp.vagrant.sdk.Ref.Machine"
    end
    add_message "hashicorp.vagrant.sdk.Machine.LocalDataPathResponse" do
      optional :path, :string, 1
    end
    add_message "hashicorp.vagrant.sdk.Machine.ProviderRequest" do
      optional :machine, :message, 1, "hashicorp.vagrant.sdk.Ref.Machine"
    end
    add_message "hashicorp.vagrant.sdk.Machine.ProviderResponse" do
    end
    add_message "hashicorp.vagrant.sdk.Machine.VagrantfileNameRequest" do
      optional :machine, :message, 1, "hashicorp.vagrant.sdk.Ref.Machine"
    end
    add_message "hashicorp.vagrant.sdk.Machine.VagrantfileNameResponse" do
      optional :name, :string, 1
    end
    add_message "hashicorp.vagrant.sdk.Machine.VagrantfilePathRequest" do
      optional :machine, :message, 1, "hashicorp.vagrant.sdk.Ref.Machine"
    end
    add_message "hashicorp.vagrant.sdk.Machine.VagrantfilePathResponse" do
      optional :path, :string, 1
    end
    add_message "hashicorp.vagrant.sdk.Machine.UpdatedAtRequest" do
      optional :machine, :message, 1, "hashicorp.vagrant.sdk.Ref.Machine"
    end
    add_message "hashicorp.vagrant.sdk.Machine.UpdatedAtResponse" do
      optional :updated_at, :message, 1, "google.protobuf.Timestamp"
    end
    add_message "hashicorp.vagrant.sdk.Machine.UIRequest" do
      optional :machine, :message, 1, "hashicorp.vagrant.sdk.Ref.Machine"
    end
    add_message "hashicorp.vagrant.sdk.Machine.UIResponse" do
      optional :ui, :message, 1, "hashicorp.vagrant.sdk.Args.TerminalUI"
    end
  end
end

module Hashicorp
  module Vagrant
    module Sdk
      StateBag = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.StateBag").msgclass
      StateBag::Value = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.StateBag.Value").msgclass
      LabelSet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.LabelSet").msgclass
      Options = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Options").msgclass
      SSHInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.SSHInfo").msgclass
      WinrmInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.WinrmInfo").msgclass
      WinrmInfo::Transport = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.WinrmInfo.Transport").enummodule
      MachineState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.MachineState").msgclass
      MachineIndex = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.MachineIndex").msgclass
      MachineIndex::Entry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.MachineIndex.Entry").msgclass
      BoxCollection = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.BoxCollection").msgclass
      Box = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Box").msgclass
      Environment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Environment").msgclass
      MachineProvider = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.MachineProvider").msgclass
      Configuration = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Configuration").msgclass
      Vagrantfile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Vagrantfile").msgclass
      Ref = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Ref").msgclass
      Ref::Machine = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Ref.Machine").msgclass
      Machine = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine").msgclass
      Machine::SetNameRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine.SetNameRequest").msgclass
      Machine::SetNameResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine.SetNameResponse").msgclass
      Machine::GetNameRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine.GetNameRequest").msgclass
      Machine::GetNameResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine.GetNameResponse").msgclass
      Machine::SetIDRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine.SetIDRequest").msgclass
      Machine::SetIDResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine.SetIDResponse").msgclass
      Machine::GetIDRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine.GetIDRequest").msgclass
      Machine::GetIDResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine.GetIDResponse").msgclass
      Machine::BoxRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine.BoxRequest").msgclass
      Machine::BoxResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine.BoxResponse").msgclass
      Machine::DatadirRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine.DatadirRequest").msgclass
      Machine::DatadirResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine.DatadirResponse").msgclass
      Machine::LocalDataPathRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine.LocalDataPathRequest").msgclass
      Machine::LocalDataPathResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine.LocalDataPathResponse").msgclass
      Machine::ProviderRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine.ProviderRequest").msgclass
      Machine::ProviderResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine.ProviderResponse").msgclass
      Machine::VagrantfileNameRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine.VagrantfileNameRequest").msgclass
      Machine::VagrantfileNameResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine.VagrantfileNameResponse").msgclass
      Machine::VagrantfilePathRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine.VagrantfilePathRequest").msgclass
      Machine::VagrantfilePathResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine.VagrantfilePathResponse").msgclass
      Machine::UpdatedAtRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine.UpdatedAtRequest").msgclass
      Machine::UpdatedAtResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine.UpdatedAtResponse").msgclass
      Machine::UIRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine.UIRequest").msgclass
      Machine::UIResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hashicorp.vagrant.sdk.Machine.UIResponse").msgclass
    end
  end
end
