<#if products?size = 0>
  <div class="text-center mt-5">
    <h2>There are no products in this category</h2>
  </div>
<#else>
  <div class="row row-cols-1 row-cols-md-4 row-cols-sm-3 g-2 overflow-auto">
    <#list products as product>
      <div class="col">
        <div class="card shadow-sm bg-transparent">
          <img src="/images/products/${product.imageName}" class="card-img-top product_image">
          <div class="card-body p-0">
            <h4>${product.name}</h4>
            <div class="d-flex justify-content-between align-items-center">
              <span class="mx-1">$${product.price}</span>
              <a href="#" class="btn btn-outline-secondary m-1">Add to Cart</a>
            </div>
          </div>
        </div>
      </div>
    </#list>
  </div>
</#if>