<#include "../include/imports.ftl">
<#if pageable??>
  <div class="row">
    <div class="col-md-12 col-sm-12">
      <h2 class="h2-section-title">Featured Products</h2>
    </div>
  </div>
  <div class="container">
    <div class="row">
      <#list pageable.items as item>
        <@hst.link var="link" hippobean=item/>
        <div class="col-md-4 col-sm-4">
          <div class="feature product-category">
            <@hst.manageContent hippobean=item 
                                parameterName="document" + item?counter 
                                documentTemplateQuery="new-product-document" 
                                rootPath="products" />
            <div class="feature-image">
              <a href="${link}">
                <#if item.images?? && item.images[0]??>
                  <@hst.link var="img" hippobean=item.images[0].largesquare/>
                  <img src="${img}" alt="${item.title?html}" />
                </#if>
              </a>
              <div class="feature-content">
                <h3 class="h3-body-title">
                  <a href="${link}">${item.title?html}</a>
                </h3>
              </div>
            </div>
          </div>
        </div>
      </#list>
      <#list [1, 2, 3] as i>
        <#if (pageable.total < i) >
          <div class="col-md-4 col-sm-4">
            <div class="feature product-category">
              <@hst.manageContent parameterName="document" + i
                                  documentTemplateQuery="new-product-document" 
                                  rootPath="products" />
            </div>
          </div>
        </#if>
      </#list>
    </div>
  </div>
</#if>