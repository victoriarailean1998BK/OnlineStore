<#import "parts/base.ftlh" as base>
<#import "parts/auth_form.ftlh" as form>

<@base.page>
  <@form.register/>
  <#if already_exists??>
    <div class="alert alert-danger" role="alert">
      The user with ${email} email already exists!
    </div>
  </#if>
</@base.page>