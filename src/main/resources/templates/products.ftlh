<#import "parts/base.ftlh" as base>
<#import "parts/categories_list.ftlh" as categories>

<@base.page>
  <div class="container-fluid">
    <div class="row d-flex justify-content-evenly">
      <div class="col-3 border-end">
          <@categories.nav_list/>
      </div>
      <div class="col-9 ">
        <#include "parts/products_list.ftlh">
      </div>
    </div>
  </div>
</@base.page>