Spree::Product.class_eval do
  scope :published, -> { where(publishable: true) }
  self.whitelisted_ransackable_attributes << 'publishable'
end
