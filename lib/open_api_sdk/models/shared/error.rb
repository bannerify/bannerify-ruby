# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class Error < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # A machine readable error code.
      field :code, ::OpenApiSDK::Shared::Code, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('code'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Shared::Code, false) } }
      # A link to our documentation with more details about this error code
      field :docs, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('docs') } }
      # A human readable explanation of what went wrong
      field :message, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('message') } }
      # Please always include the requestId in your error report
      field :request_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('requestId') } }


      sig { params(code: ::OpenApiSDK::Shared::Code, docs: ::String, message: ::String, request_id: ::String).void }
      def initialize(code: nil, docs: nil, message: nil, request_id: nil)
        @code = code
        @docs = docs
        @message = message
        @request_id = request_id
      end
    end
  end
end
