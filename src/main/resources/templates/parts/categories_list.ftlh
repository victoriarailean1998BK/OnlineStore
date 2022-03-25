<#macro categories_list>
  <div class="container mt-5">
    <h2 class="text-center category_text">Categories</h2><hr>
    <div class="row mt-3">
      <#list _categories as category>
        <div class="card mx-2 my-2 shadow" style="width: 18rem;">
          <img src="images/categories/${category.image_name}" class="card-img-top category_image">
          <div class="card-body text-center">
            <h5 class="card-title category_title">${category.name}</h5>
            <a href="/categories/${category.id}/products" class="btn btn-secondary">View</a>
          </div>
        </div>
      </#list>
    </div>
  </div>
</#macro>

<#macro nav_list>
  <div class="text-center">
    <h4 class="category_text">Categories</h4>
  </div>
  <ul class="list-group-flush mt-3">
    <#list _categories as category>
      <a href="/categories/${category.id}/products"
         class="bg-list-item bg-transparent text-muted rounded-3 shadow-sm list-group-item list-group-item-action my-3">
          ${category.name}
      </a>
    </#list>
  </ul>
</#macro>