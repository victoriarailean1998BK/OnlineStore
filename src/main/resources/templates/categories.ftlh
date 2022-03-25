<#import "parts/base.ftlh" as base>
<#import "parts/navbar.ftlh" as navbar>
<#import "parts/categories_list.ftlh" as categories>

<@base.page>
    <@navbar.nav/>
    <@categories.categories_list/>
</@base.page>