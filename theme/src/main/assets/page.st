$!
  Copyright (c) 2016-2018 Martin Donath <martin.donath@squidfunk.com>
  Copyright (c) 2017-2018 Jonas Fonseca <jonas.fonseca@gmail.com>

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to
  deal in the Software without restriction, including without limitation the
  rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
  sell copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in
  all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
  IN THE SOFTWARE.
!$
<!-- Adapted from paradox-material-theme version 0.6.0 -->
<!-- https://github.com/jonas/paradox-material-theme/blob/2d57fe0567ea9fe7e8de14faef4fa777841d505a/theme/src/main/assets/page.st -->
<!DOCTYPE html>
<html lang="$page.properties.("material.language"); null="en"$" class="no-js">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="$page.properties.("project.description")$">
    <meta name="generator" content="Paradox, paradox-material-theme=$page.properties.("material.theme.version")$, mkdocs-material=3.0.3">

    $partials/language()$

    $ if (page.properties.("description")) $
      <meta name="description" content="$page.properties.("description")$">
    $ elseif (page.properties.("project.description")) $
      <meta name="description" content="$page.properties.("project.description")$">
    $ endif $
    $ if (page.properties.("material.canonical.url")) $
      <link rel="canonical" href="$page.properties.("material.canonical.url")$">
    $ endif $
    $ if (page.properties.("author")) $
      <meta name="author" content="$page.properties.("author")$">
    $ elseif (page.properties.("material.author")) $
      <meta name="author" content="$page.properties.("site.author")$">
    $ endif $
    <link rel="shortcut icon" href="$page.base$$page.properties.("material.favicon")$">
    $ if (page.properties.("title")) $
      <title>$page.properties.("title")$</title>
    $ elseif (page.title) $
      <title>$page.title$$ if (!page.home.active) $ · $page.home.title$$ endif $</title>
    $ else $
      <title>$page.home.title$</title>
    $ endif $
    <link rel="stylesheet" href="$page.properties.("assets.hostname")$$page.base$assets/stylesheets/application.451f80e5.css">
    $ if (page.properties.("material.color.primary")) $
      <link rel="stylesheet" href="$page.properties.("assets.hostname")$$page.base$assets/stylesheets/application-palette.22915126.css">
      $ if (page.properties.("material.color.primary.theme")) $
        <meta name="theme-color" content="$page.properties.("assets.hostname")$$page.properties.("material.color.primary.theme")$" />
      $ endif $
    $ endif $
    <link rel="stylesheet" href="$page.properties.("assets.hostname")$$page.base$lib/material__tabs/dist/mdc.tabs.min.css">
    <link rel="stylesheet" href="$page.properties.("assets.hostname")$$page.base$lib/prettify/prettify.css">
    <script src="$page.properties.("assets.hostname")$$page.base$assets/javascripts/modernizr.1aa3b519.js"></script>
    <link rel="stylesheet" href="$page.properties.("assets.hostname")$$page.base$assets/fonts/font-awesome.css">
    <link rel="stylesheet" href="$page.properties.("assets.hostname")$$page.base$assets/fonts/material-icons.css">
    <link rel="stylesheet" href="$page.properties.("assets.hostname")$$page.base$assets/stylesheets/paradox-material-theme.css">
    $ if (page.properties.("material.custom.stylesheet")) $
      <link rel="stylesheet" href="$page.properties.("assets.hostname")$$page.base$$page.properties.("material.custom.stylesheet")$">
    $ endif $
    $ if (page.properties.("material.custom.page-stylesheet")) $
      <link rel="stylesheet" href="$page.base$$page.properties.("material.custom.page-stylesheet")$">
    $ endif $
  </head>
  <body
    $ if (page.properties.("material.color.primary")) $
      data-md-color-primary="$page.properties.("material.color.primary")$"
    $ endif $
    $ if (page.properties.("material.color.accent")) $
      data-md-color-accent="$page.properties.("material.color.accent")$"
    $ endif $
  >
    <input class="md-toggle" data-md-toggle="drawer" type="checkbox" id="__drawer" autocomplete="off">
    <input class="md-toggle" data-md-toggle="search" type="checkbox" id="__search" autocomplete="off">
    <label class="md-overlay" data-md-component="overlay" for="__drawer"></label>
    $! FIXME: Skip to content (0e1850280a1c25d3bc697419288d97582dacbbc3) !$
    $partials/header()$
    <div class="md-container">
      $ if (page.properties.("material.hero")) $
        $partials/hero()$
      $ endif $
      <main class="md-main">
        <div class="md-main__inner md-grid" data-md-component="container">
          <div class="md-sidebar md-sidebar--primary" data-md-component="navigation">
            <div class="md-sidebar__scrollwrap">
              <div class="md-sidebar__inner">
                $partials/nav()$
              </div>
            </div>
          </div>
          $ if (page.subheaders) $
            <div class="md-sidebar md-sidebar--secondary" data-md-component="toc">
              <div class="md-sidebar__scrollwrap">
                <div class="md-sidebar__inner">
                  $partials/toc()$
                </div>
              </div>
            </div>
          $ endif $
          <div class="md-content">
            <article class="md-content__inner md-typeset">
              <div class="md-content__searchable">
                $page.content$
              </div>
              $ if (page.source_url) $
                <div>
                  <a href="$page.source_url$" title="Edit this page" class="md-source-file md-edit">
                    Edit this page
                  </a>
                </div>
              $ endif $
              $ if (!page.property_is.("disabled.versioning.display").("true")) $
                <div class="print-only">
                  <span class="md-source-file md-version">
                    $page.properties.("project.version.short")$
                  </span>
                </div>
              $ endif $
            </article>
          </div>
        </div>
      </main>
      $partials/footer()$
    </div>
    <script src="$page.properties.("assets.hostname")$$page.base$assets/javascripts/application.583bbe55.js"></script>
    <script src="$page.properties.("assets.hostname")$$page.base$assets/javascripts/paradox-material-theme.js"></script>
    $!

      The ending "." enables search to work without providing the site URL, since the
      theme JavaScript fetches the index by concatenating the base URL to an absolute
      path: "/search/search_index.json".

      It originally was "./" but this breaks previewSite because it leads to a double
      slash when fetching the index, i.e. ".//search/...". To complete the workaround
      all locations in the search index now start with a "/" so the JavaScript can
      safely do: `url.base + doc.location`.

    !$
    <script>app.initialize({version:"0.17",url:{base:"$page.base$."}})</script>
    <script type="text/javascript" src="$page.properties.("assets.hostname")$$page.base$lib/prettify/prettify.js"></script>
    <script type="text/javascript" src="$page.properties.("assets.hostname")$$page.base$lib/prettify/lang-scala.js"></script>
    <script type="text/javascript" src="$page.properties.("assets.hostname")$$page.base$lib/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="$page.properties.("assets.hostname")$$page.base$assets/javascripts/groups.js"></script>

    <script type="text/javascript">
      document.addEventListener("DOMContentLoaded", function(event) {
        window.prettyPrint && prettyPrint();
      });
    </script>
    $ if (page.properties.("material.custom.javascript")) $
      <script src="$page.base$$page.properties.("material.custom.javascript")$"></script>
    $ endif $
  </body>
</html>
