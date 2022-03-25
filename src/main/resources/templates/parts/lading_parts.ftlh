<#macro new>
  <div class="row shadow my-3 bg-landing">
    <h3>New products</h3>
    <#list new_products as p>
      <div class="col-sm-3 my-4">
        <div class="thumb-wrapper">
          <div class="img-box">
            <img src="images/products/${p.imageName}" class="product_image">
          </div>
          <div class="thumb-content category_title mt-2">
            <h4>${p.name}</h4>
            <p class="item-price"> <span>$${p.price}</span></p>

            <a href="#" class="btn btn-secondary">Add to Cart</a>
          </div>
        </div>
      </div>
    </#list>
  </div>
</#macro>

<#macro description>
  <div class="row mt-5">
    <div class="col-10 offset-1 text-center shadow p-5 bg-landing">
      <h1>Lorem Ipsum</h1>
      <div>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed suscipit pharetra mauris id viverra. Sed ex lacus, cursus nec sapien vel, facilisis gravida enim. Suspendisse a semper eros. Cras ullamcorper dapibus diam vel euismod. Nullam tempus dui sit amet orci bibendum lacinia. Proin leo leo, dapibus eget dolor a, malesuada.
      </div>
      <button class="btn btn-secondary mt-2">Explore</button>
    </div>
  </div>
</#macro>