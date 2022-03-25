<div class="row">
  <div class="col-8 offset-2">
    <table class="table table-striped mt-4">
      <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">Product name</th>
        <th scope="col">Quantity</th>
      </tr>
      </thead>
      <tbody>
      <#list order_products as product, quantity>
        <tr>
          <th scope="row">${product?index + 1}</th>
          <td>${product.name}</td>
          <td>${quantity}</td>
          <td>
            <button class="btn btn-outline-primary">Update</button>
            <button class="btn btn-outline-danger">Remove</button>
          </td>
        </tr>
      </#list>
      </tbody>
    </table>
    <div class="text-center mt-5">
      <td><button class="btn btn-secondary">Submit order</button></td>
    </div>
  </div>
</div>