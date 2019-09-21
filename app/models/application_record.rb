class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def as_json(options = {})
    attributes.reject { |key,_| ['created_at', 'updated_at'].include?(key) }
  end
end
