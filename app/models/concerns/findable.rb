module Findable
  extend ActiveSupport::Concern

  module ClassMethods
    def find_by(query)
      formatted_queries = []
      query.each do |key, value|
        formatted_queries << "data ->#{value.is_a?(String) ? '>' : ''} '#{key}' = '#{value}'"
      end
      where(*formatted_queries).first
    end

    def attr_passthrough(*attributes)
      attributes.each do |attribute|
        define_method "#{attribute}".intern do
          data[attribute]
        end

        define_method "#{attribute}=".intern do |value|
          data[attribute] = value
        end
      end
    end
  end
end
