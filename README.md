# Hippo CMS Tutorial: Building a Website

This tutorial will guide you through the development of GoGreen, Hippo's demo
web site. The tutorial follows two development iterations. In each iteration
you will deliver a working site and increase your Hippo knowledge level at the
same time. At the end of the tutorial, you will have a good idea of the basic
development tasks involved in the implementation of a Hippo-based web site.

## Full tutorial:
[https://www.onehippo.org/trails/developer-trail/introduction.html](https://www.onehippo.org/trails/developer-trail/introduction.html)

The tutorial describes two project iterations:

1. [Select Out-of-the-Box Features](https://www.onehippo.org/trails/developer-trail/configure-out-of-the-box-features/select-out-of-the-box-features.html)
2. [Develop New Features](https://www.onehippo.org/trails/developer-trail/develop-new-features/two-columns-page-configuration.html)

The result of each project iteration is available from the corresponding branch:

1. [iteration-1](https://github.com/onehippo/website-tutorial/tree/iteration-1)
2. [iteration-2](https://github.com/onehippo/website-tutorial/tree/iteration-2)

## Running locally

This project uses the Maven Cargo plugin to run Essentials, the CMS and site
locally in Tomcat.
From the project root folder, execute:

    mvn clean verify
    mvn -P cargo.run

Access the applications at the following URLs:

* Hippo Essentials: `http://localhost:8080/essentials`
* Hippo CMS: `http://localhost:8080/cms`
* Website: `http://localhost:8080/site`

Logs are located in `target/tomcat8x/logs`.

## Best Practice for development

Use the option `-Drepo.path=/some/path/to/repository` during start up. This
will avoid your repository to be cleared when you do a `mvn clean`.

For example start your project with:

    mvn -P cargo.run -Drepo.path=/home/usr/tmp/repo
    
## Automatic Export

Automatic export of repository changes to the file system is turned on by
default. To control this behavior, log into `http://localhost:8080/cms/console`
and press the "Enable/Disable Auto Export" button at the top right. To set this
as the default for your project edit the file
`./bootstrap/configuration/src/main/resources/configuration/modules/autoexport-module.xml`