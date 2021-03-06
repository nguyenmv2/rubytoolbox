# frozen_string_literal: true

class Categorization < ApplicationRecord
  belongs_to :category,
             primary_key: :permalink,
             inverse_of:  :categorizations,
             foreign_key: :category_permalink

  belongs_to :project,
             primary_key: :permalink,
             inverse_of:  :categorizations,
             foreign_key: :project_permalink
end
