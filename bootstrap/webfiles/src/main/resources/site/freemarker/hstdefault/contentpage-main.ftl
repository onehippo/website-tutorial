<#include "../include/imports.ftl">
<div class="body-wrapper">
  <div class="container">
    <div class="row">
      <#if document??>
        <@hst.link var="link" hippobean=document/>
        <div class="col-md-9 col-sm-9">
          <h2>${document.title?html}</h2>
          <p>${document.introduction?html}</p>
          <@hst.html hippohtml=document.content/>
        </div>
      <#elseif editMode>
        <img src="<@hst.link path="/images/essentials/catalog-component-icons/simple-content.png" />"> Click to edit Simple Content
      </#if>
    </div>
  </div>
</div>