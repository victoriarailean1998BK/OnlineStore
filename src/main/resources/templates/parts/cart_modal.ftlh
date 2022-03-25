<div class="modal fade" id="add-to-cart-modal" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-body text-center shadow-sm">
        <div class="modal-product-name mb-2"></div>
        <img class="modal-product-image"/>
      </div>
      <div class="modal-footer d-flex justify-content-between">
        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
        <form action="/product/add" method="post">
          <label class="mt-2" for="quantity">Quantity: </label>
          <input class="q-input me-4" type="text" name="quantity" value="1" id="quantity"/>
          <input type="hidden" name="product_id" value="" id="product-id"/>
          <input type="hidden" name="_csrf" value="${_csrf.token}"/>
          <button type="submit" class="btn btn-secondary" id="confirm-add">Add</button>
        </form>
      </div>
    </div>
  </div>
</div>