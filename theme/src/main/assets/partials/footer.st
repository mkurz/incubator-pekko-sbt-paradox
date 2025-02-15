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
<!-- https://github.com/jonas/paradox-material-theme/blob/2d57fe0567ea9fe7e8de14faef4fa777841d505a/theme/src/main/assets/partials/footer.st -->
<footer class="md-footer">
  $ if (page.next.html || page.prev.html) $
    <div class="md-footer-nav">
      <nav class="md-footer-nav__inner md-grid">
        $ if (page.prev.html) $
          <a href="$page.prev.href$" title="$page.prev.title$" class="md-flex md-footer-nav__link md-footer-nav__link--prev" rel="prev">
            <div class="md-flex__cell md-flex__cell--shrink">
              <i class="md-icon md-icon--arrow-back md-footer-nav__button"></i>
            </div>
            <div class="md-flex__cell md-flex__cell--stretch md-footer-nav__title">
              <span class="md-flex__ellipsis">
                <span class="md-footer-nav__direction">
                  Previous
                </span>
                $page.prev.title$
              </span>
            </div>
          </a>
        $ endif $
        $ if (page.next.html) $
          <a href="$page.next.href$" title="$page.next.title$" class="md-flex md-footer-nav__link md-footer-nav__link--next" rel="next">
            <div class="md-flex__cell md-flex__cell--stretch md-footer-nav__title">
              <span class="md-flex__ellipsis">
                <span class="md-footer-nav__direction">
                  Next
                </span>
                $page.next.title$
              </span>
            </div>
            <div class="md-flex__cell md-flex__cell--shrink">
              <i class="md-icon md-icon--arrow-forward md-footer-nav__button"></i>
            </div>
          </a>
        $ endif $
      </nav>
    </div>
  $endif$
  <div class="md-footer-meta md-typeset">
    <div class="md-footer-meta__inner md-grid">
      <div class="logo">
        <a href="https://incubator.apache.org/" one-link-mark="yes">
          <img src="$page.properties.("assets.hostname")$assets/images/apache-incubator.svg" alt="Apache Incubator logo" id="incubator__logo">
        </a>
      </div>
      <div class="incubation-disclaimer">
        <p>
          Apache Pekko is an effort undergoing incubation at The Apache Software Foundation (ASF), sponsored by the Apache Incubator. Incubation is required of all newly accepted projects until a further review indicates that the infrastructure, communications, and decision making process have stabilized in a manner consistent with other successful ASF projects. While incubation status is not necessarily a reflection of the completeness or stability of the code, it does indicate that the project has yet to be fully endorsed by the ASF.
        </p>
      </div>
      <div class="md-footer-copyright">
        $ if (page.properties.("material.copyright")) $
          <div class="md-footer-copyright__highlight">
            $page.properties.("material.copyright")$
          </div>
        $ endif $
      </div>
      $social()$
    </div>
  </div>
</footer>
