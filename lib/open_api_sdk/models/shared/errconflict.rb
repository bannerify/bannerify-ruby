# Code generated by Speakeasy (https://speakeasyapi.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class ErrConflict < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :error, ::OpenApiSDK::Shared::ErrConflictError, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('error') } }


      sig { params(error: ::OpenApiSDK::Shared::ErrConflictError).void }
      def initialize(error: nil)
        @error = error
      end
    end
  end
end
