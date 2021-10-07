# Hugo tricks
Hugo is a tool allowing to generate a static website from different types of source files.
This document describes the tricks for a smooth application of Hugo on [GitHub] Markdown source files.

## Anatomy of the `Website` directory
- `config.toml`: configuration file of Hugo
- `archetypes`
- `content` : contains the webpages [Markdown] source files
- `layouts` : contains small specific pieces of code (namely *templates*) used by Hugo to generate specific pieces of the webpages
- `static` : contains static content (not parsed by Hugo but served *as is*) such as images
- `themes` : contains the used Hugo theme(s) (hyde in our case)
- `public` : is built by Hugo when generating the webpages and contains all the generated website
- `resources` : is built by Hugo when generating/serving the webpages and can be safely deleted

## Hugo configuration choices
This section details the content of the configuration file `config.toml`.

`baseURL = "."` states the root URL of the future website. Here the `.` will be replaced with the true root URL at deployment (see `.travis.yml` file over the `Website` directory).
`uglyURLs = "true"` is used to allow the URLs written in the Markdown source files to be used *as is*. It avoids transforming a page

`#canonifyURLs = "true"` is commented out to keep the default setting at false.
When enabled, Hugo generates one subdirectory by Markdown source file, which invalidates all links to this file.
It is clearly undesired as we don't want to edit our source files for Hugo.

The following block allows to keep the raw HTML code embedded in the Markdown source files.
By default, Hugo reads the Markdown source files and remove any HTML content.
```
[markup.goldmark.renderer]
unsafe = true
```

### Multilingual content
`DefaultContentLanguage = "en"` tells Hugo to treat any undefined content language as English.

The `[Languages]` section contains the language specific variables in dedicated subsections (eg `[Languages.fr]`).
In these subsections (here `[Languages.fr]`, `contentDir = "content/fr"` specifies a directory of exclusive language content (here French only content).


### Navigation map/menus
The `[Menus]` section contains a set of objects (per language) describing the links of the navigation menu.
The `Name`, `URL` and `weight` fields of the objects respectively set the text, URL and order of the links.

There are multiple way to build navigation menus, more or less customizable.
More insight of our particular implementation is available in the `layouts/partials/section-menu.html` source file.


## Hugo server
Hugo is launched in live server mode with the command `hugo server`.
Warning! In this mode, Hugo documentation says it's rebuilding the website at any change in the website sources, but it is sometimes wrong (especially when playing with the configuration parameters).
It is safer to stop the live server mode, clean the intermediate files with `rm -rf resources` and relaunch.

## Hugo website generator
Hugo generates the whole website from the provided source files with the simple command `hugo`.
The website files are put in the `public` subdirectory.

## Hugo partial templates
Citing the [official Hugo documentation about partial templates](https://gohugo.io/templates/partials/) : 
> Partials are smaller, context-aware components in your list and page templates that can be used economically to keep your templating DRY.

We have adapted a [partial template][portable-hugo-links] allowing Markdown/github links to be seamlessly used in Hugo source files.
It was modified to support multilingual relative links.
See files `render-image.html` and `render-link.html` files in directory `layouts/_default/_markup/`.

## Hugo shortcodes

Citing the [official documentation about shortcodes](https://gohugo.io/content-management/shortcodes/) : 
> Shortcodes are simple snippets inside your content files calling built-in or custom templates.

We want to stay independent from Hugo, i.e. we don't want to write our Mardown documentation in a specific Hugo way.
For this reason, we refrain from using Hugo shortcodes and rather tweak the generated pages through Hugo [partial] templates.


## References
- [Official Hugo documentation](https://gohugo.io)
- [Hugo Multilingual Part 1: Content translation](https://www.regisphilibert.com/blog/2018/08/hugo-multilingual-part-1-managing-content-translation/#crossing-the-language-barrier-with-sites)
- [portable-hugo-links](https://github.com/bep/portable-hugo-links)
