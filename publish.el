(require 'ox-publish)
(setq org-publish-project-alist
      '(
        ("posts"
         :base-directory "~/git/ktsiligkiris.github.io/org/"
         :base-extension "org"
         :publishing-directory "~/git/ktsiligkiris.github.io/"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4   ; Just the default for this project.
         :auto-sitemap t
         )
        ("org-static"
         :base-directory "~/git/ktsiligkiris.github.io/org/"
         :base-extension "css\\|js\\|png\\|jpg\\|git\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory "~/git/ktsiligkiris.github.io/"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ("org"
         :components ("posts" "org-static"))
        ))
