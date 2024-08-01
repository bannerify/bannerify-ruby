# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # Project info
    class GetV1InfoResponseBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :created_at, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('createdAt') } }

      field :id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }

      field :name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }


      sig { params(created_at: ::String, id: ::String, name: ::String).void }
      def initialize(created_at: nil, id: nil, name: nil)
        @created_at = created_at
        @id = id
        @name = name
      end
    end
  end
end
