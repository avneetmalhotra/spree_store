Spree::ProductsController.class_eval do
  private
    def load_product
      if try_spree_current_user.try(:has_spree_role?, "admin")
        @products = Spree::Product.with_deleted
      else
        # published scope added
        @products = Spree::Product.active(current_currency).published
      end
      @product = @products.includes(:variants_including_master, variant_images: :viewable).friendly.find(params[:id])
    end
end
