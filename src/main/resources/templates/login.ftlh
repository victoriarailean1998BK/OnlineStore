<#import "parts/base.ftlh" as base>
<#import "parts/auth_form.ftlh" as form>
<#import "parts/navbar.ftlh" as navbar>


<@base.page>
    <@navbar.nav/>
    <@form.login/>
</@base.page>