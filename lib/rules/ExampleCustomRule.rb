# frozen_string_literal: true

require 'cfn-nag/custom_rules/base'

class ExampleCustomRule < BaseRule
  def rule_text
    'S3 buckets should always be named "foo"'
  end

  def rule_type
    Violation::FAILING_VIOLATION
  end

  def rule_id
    'C1' # Custom Rule #1
  end

  def audit_impl(cfn_model)
    resources = cfn_model.resources_by_type('AWS::S3::Bucket')

    violating_buckets = resources.select do |bucket|
      bucket.bucketName != 'foo'
    end

    violating_buckets.map(&:logical_resource_id)
  end
end
