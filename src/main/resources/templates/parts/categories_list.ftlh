<#macro categories_list>
  <div class="container mt-5">
    <h2 class="text-center category_text">Categories</h2><hr>
    <div class="row mt-3">
      <#list _categories as category>
        <div class="card mx-2 my-2 shadow" style="width: 18rem;">
          <img src="images/categories/${category.image_name}" class="card-img-top category_image">
          <div class="card-body text-center">
            <h5 class="card-title category_title">${category.name}</h5>
            <a href="#" class="btn btn-secondary">View</a>
          </div>
        </div>
      </#list>
    </div>
  </div>
</#macro>