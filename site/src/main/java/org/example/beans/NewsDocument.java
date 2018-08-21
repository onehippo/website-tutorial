package org.example.beans;

import java.util.Calendar;
import org.hippoecm.hst.content.beans.Node;
import org.hippoecm.hst.content.beans.standard.HippoDocument;
import org.hippoecm.hst.content.beans.standard.HippoGalleryImageSet;
import org.hippoecm.hst.content.beans.standard.HippoHtml;
import org.onehippo.cms7.essentials.dashboard.annotations.HippoEssentialsGenerated;
import org.example.beans.Imageset;
import java.util.List;
import org.hippoecm.hst.content.beans.standard.HippoBean;

@HippoEssentialsGenerated(internalName = "gogreen:newsdocument")
@Node(jcrType = "gogreen:newsdocument")
public class NewsDocument extends HippoDocument {
    /** 
     * The document type of the news document.
     */
    public static final String DOCUMENT_TYPE = "gogreen:newsdocument";
    private static final String TITLE = "gogreen:title";
    private static final String DATE = "gogreen:date";
    private static final String INTRODUCTION = "gogreen:introduction";
    private static final String IMAGE = "gogreen:image";
    private static final String CONTENT = "gogreen:content";
    private static final String LOCATION = "gogreen:location";
    private static final String AUTHOR = "gogreen:author";
    private static final String SOURCE = "gogreen:source";

    /** 
     * Get the title of the document.
     * @return the title
     */
    @HippoEssentialsGenerated(internalName = "gogreen:title")
    public String getTitle() {
        return getProperty(TITLE);
    }

    /** 
     * Get the date of the document.
     * @return the date
     */
    @HippoEssentialsGenerated(internalName = "gogreen:date")
    public Calendar getDate() {
        return getProperty(DATE);
    }

    /** 
     * Get the introduction of the document.
     * @return the introduction
     */
    @HippoEssentialsGenerated(internalName = "gogreen:introduction")
    public String getIntroduction() {
        return getProperty(INTRODUCTION);
    }

    /** 
     * Get the main content of the document.
     * @return the content
     */
    @HippoEssentialsGenerated(internalName = "gogreen:content")
    public HippoHtml getContent() {
        return getHippoHtml(CONTENT);
    }

    /** 
     * Get the location of the document.
     * @return the location
     */
    @HippoEssentialsGenerated(internalName = "gogreen:location")
    public String getLocation() {
        return getProperty(LOCATION);
    }

    /** 
     * Get the author of the document.
     * @return the author
     */
    @HippoEssentialsGenerated(internalName = "gogreen:author")
    public String getAuthor() {
        return getProperty(AUTHOR);
    }

    /** 
     * Get the source of the document.
     * @return the source
     */
    @HippoEssentialsGenerated(internalName = "gogreen:source")
    public String getSource() {
        return getProperty(SOURCE);
    }

    @HippoEssentialsGenerated(internalName = "gogreen:image")
    public Imageset getImage() {
        return getLinkedBean("gogreen:image", Imageset.class);
    }

    @HippoEssentialsGenerated(internalName = "gogreen:relatednews")
    public List<HippoBean> getRelatednews() {
        return getLinkedBeans("gogreen:relatednews", HippoBean.class);
    }
}
