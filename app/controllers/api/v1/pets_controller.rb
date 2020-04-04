module Api
  module V1
    class PetsController < ApplicationController
      def index
        render jsonapi: pets,
               include: [:medical_records],
               status: :ok
      end

      private

      def pets
        @pets ||= Pet.all
      end
    end
  end
end
