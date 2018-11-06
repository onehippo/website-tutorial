<#include "../include/imports.ftl">
<div class="body-wrapper">
  <div class="container">
    <div class="row">
      <#if document??>
        <@hst.link var="link" hippobean=document/>
        <div class="col-md-9 col-sm-9">
          <div class="blog-post has-edit-button">
            <@hst.manageContent hippobean=document/>
            <div class="blog-post-type">
              <i class="icon-news"> </i>
            </div>
            <div class="blog-span">
              <#if document.image?? && document.image.large??>
                <@hst.link var="img" hippobean=document.image.large/>
                <div class="blog-post-featured-img">
                  <img src="${img}" alt="${document.title?html}" />
                </div>
              </#if>
              <h2>${document.title?html}</h2>
              <div class="blog-post-body">
                <p>${document.introduction?html}</p>
                <@hst.html hippohtml=document.content/>
              </div>
              <div class="blog-post-details">
                <div class="blog-post-details-item blog-post-details-item-left icon-calendar">
                  <#if document.date??>
                    <span class="date">
                      <@fmt.formatDate value=document.date.time type="both" dateStyle="medium" timeStyle="short"/>
                    </span>
                  </#if>
                </div>
              </div>
            </div>
          </div>
        </div>
      </#if>
    </div>
  </div>
</div>