
Spree::Product.class_eval do
  scope :published, -> { where(publishable: true) }
  self.whitelisted_ransackable_attributes << 'publishable'

  def publishing_status
    if publishable?
      return 'Yes'
    end
    return 'No'
  end
end
