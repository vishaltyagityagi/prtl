module Controller
  module Dashboard
    class AddressStruct < ::Dry::Struct
      # transform_keys(&:to_sym)

      attribute :addresses, Types::Array do
        attribute :id, Types::Integer
        attribute :my_address, Types::String
        attribute :phone_number, Types::String
        attribute :email, Types::String
      end

      def address
        addresses[0]
      end
    end
  end
end