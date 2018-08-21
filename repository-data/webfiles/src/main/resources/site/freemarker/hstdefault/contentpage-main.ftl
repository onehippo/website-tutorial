<#include "../include/imports.ftl">
<#if document??>
  <@hst.link var="link" hippobean=document/>
  <div class="col-md-9 col-sm-9 has-edit-button">
    <@hst.manageContent hippobean=document />
    <h2>${document.title?html}</h2>
    <p>${document.introduction?html}</p>
    <@hst.html hippohtml=document.content/>
  </div>
<#elseif editMode>
  <div class="has-edit-button">
    <img src="<@hst.link path="/images/essentials/catalog-component-icons/simple-content.png" />"> Click to edit Simple Content
    <@hst.manageContent templateQuery="new-content-document" rootPath="content"/>
  </div>
</#if>