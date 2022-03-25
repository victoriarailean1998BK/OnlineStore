<div class="modal fade" id="add-to-cart-modal" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-body text-center">
        <div class="modal-product-name shadow-sm mb-2"></div>
        <label class="mt-2" for="quantity">Quantity: </label>
        <input class="q-input" type="text" value="1" id="quantity"/>
      </div>
      <div class="modal-footer d-flex justify-content-between">
        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
        <form action="/product/add" method="post">
          <div hidden>
            <input type="name" name="name" value="abc"/>
            <input type="id" name="id" value="1"/>
          </div>
          <input type="hidden" name="_csrf" value="${_csrf.token}"/>
          <button type="submit" class="btn btn-secondary" id="confirm-add">Add</button>
        </form>
      </div>
    </div>
  </div>
</div>