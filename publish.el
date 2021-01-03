(require 'ox-publish)
(setq org-publish-project-alist
      '(
        ("posts"
         :base-directory "~/git/ktsiligkiris.github.io/org/"
         :base-extension "org"
         :publishing-directory "~/git/ktsiligkiris.github.io/_posts"
         :recursive t
         :publishing-function org-md-publish-to-md
         :headline-levels 4   ; Just the default for this project.
         :markdown-extensions "markdown"
         )
        ("org-static"
         :base-directory "~/git/ktsiligkiris.github.io/org/"
         :base-extension "css\\|js\\|png\\|jpg\\|git\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory "~/git/ktsiligkiris.github.io/assets"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ("blog"
         :components ("posts" "org-static"))
        ))
