
Spree::Product.class_eval do
  scope :published, -> { where(publishable: true) }
end
