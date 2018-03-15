module Dummy
  class API < Grape::API
    resource :fake do
      params do
        requires :id, type: String
      end
      get '' do
      end

      put ':id' do

      end

      delete ':id' do

      end
    end
  end
end