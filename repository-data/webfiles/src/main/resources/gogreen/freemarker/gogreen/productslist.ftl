<#include "../include/imports.ftl">
<#if pageable??>
  <div id="masonry-elements">
    <#list pageable.items as item>
      <@hst.link var="link" hippobean=item/>
      <div class="feature blog-masonry">
        <#if item.images?? && item.images[0].smallsquare??>
          <@hst.link var="img" hippobean=item.images[0].smallsquare />
          <div class="feature-image img-overlay">
            <@hst.manageContent hippobean=item />
            <img src="${img}" alt="" />
            <div class="item-img-overlay">
              <div class="item_img_overlay_link">
                <a href="${link}" title="${item.title?html}"> </a>
              </div>
              <div class="item_img_overlay_content">
                <h3 class="thumb-label-item-title">
                  <a href="${link}">Add to cart</a>
                </h3>
              </div>
            </div>
          </div>
        </#if>
        <div class="feature-content">
          <h3 class="h3-body-title blog-title">
            <a href="${link}">${item.title?html}</a>
          </h3>
          <p>${item.introduction?html}</p>
        </div>
        <div class="feature-details">
          <img src="<@hst.webfile path="/images/icon-banknote.png"/>" class="icon">
          <span><@fmt.formatNumber value="${item.price}" type="currency" /></span> 
          <#--<div class="feature-share"><span data-score="3.5" class="product-rating"/></div>-->
        </div>
      </div>
    </#list>
  </div>
  <#if cparam.showPagination>
    <#include "../include/pagination.ftl">
  </#if>
</#if>
   
<@hst.headContribution category="htmlHead">
  <link rel="stylesheet" href="<@hst.webfile path="/css/jquery.raty.css"/>" />
</@hst.headContribution>
<@hst.headContribution category="htmlBodyEnd">
  <script type="text/javascript" src="<@hst.webfile path="/js/jquery.raty.js"/>"></script>
</@hst.headContribution>
<@hst.headContribution category="htmlBodyEnd">
  <script type="text/javascript">
    jQuery(document).ready(function($) {
      $('#masonry-elements .product-rating').raty({
          score: function() {
              return $(this).attr('data-score');
          },
          readOnly: true,
          half: true,
          starType :  'i'
      });
    });
  </script>
</@hst.headContribution>