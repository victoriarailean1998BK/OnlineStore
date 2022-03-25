<#import "parts/base.ftlh" as base>
<#import "parts/navbar.ftlh" as navbar>
<#import "parts/lading_parts.ftlh" as landing_parts>


<@base.page>
  <@navbar.nav/>
  <div class="container">
    <@landing_parts.description/>
    <@landing_parts.new/>
  </div>
</@base.page>