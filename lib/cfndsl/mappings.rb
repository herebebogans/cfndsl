require 'cfndsl/jsonable'

module CfnDsl
  # Handles mapping objects
  #
  # Usage:
  #     Mapping("AWSRegionArch2AMI", {
  #               "us-east-1" => { "32" => "ami-6411e20d", "64" => "ami-7a11e213" },
  #               "us-west-1" => { "32" => "ami-c9c7978c", "64" => "ami-cfc7978a" },
  #               "eu-west-1" => { "32" => "ami-37c2f643", "64" => "ami-31c2f645" },
  #               "ap-southeast-1" => { "32" => "ami-66f28c34", "64" => "ami-60f28c32" },
  #               "ap-northeast-1" => { "32" => "ami-9c03a89d", "64" => "ami-a003a8a1" }
  #    })
  class MappingDefinition < JSONable
    def initialize(value)
      @value = value
    end

    def to_json(*a)
      @value.to_json(*a)
    end
  end
end
