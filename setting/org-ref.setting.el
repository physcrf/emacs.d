(require 'org-ref)
(require 'doi-utils)
(require 'org-ref-ivy)
(require 'bibtex)

(define-key org-mode-map (kbd "C-c ]") 'org-ref-insert-link)

(setq bibtex-autokey-year-length 4
      bibtex-autokey-name-year-separator ""
      bibtex-autokey-year-title-separator "-"
      bibtex-autokey-titleword-separator ""
      bibtex-autokey-titlewords 1
      bibtex-autokey-titlewords-stretch 1
      bibtex-autokey-titleword-length 120)

(setq bibtex-completion-bibliography '("/home/crf/Nutstore/Literature/papers.bib")
      bibtex-completion-library-path '("/home/crf/Nutstore/Literature/pdfs/")
      bibtex-completion-notes-path "/home/crf/Nutstore/Literature/notes.org")

(setq org-ref-insert-link-function 'org-ref-insert-link-hydra/body
      org-ref-insert-cite-function 'org-ref-cite-insert-ivy
      org-ref-insert-label-function 'org-ref-insert-label-link
      org-ref-insert-ref-function 'org-ref-insert-ref-link
      org-ref-cite-onclick-function (lambda (_) (org-ref-citation-hydra/body)))


(setq org-ref-bibliography-notes "/home/crf/Nutstore/Literature/notes.org"
      org-ref-default-bibliography '("/home/crf/Nutstore/Literature/papers.bib")
      org-ref-pdf-directory "/home/crf/Nutstore/Literature/pdfs/"
      bibtex-completion-notes-path "/home/crf/Nutstore/Literature/notes.org"
      bibtex-completion-notes-template-one-file "
** ${year} - ${title}
   :PROPERTIES:
   :Custom_ID:\t${=key=}
   :author:\t${author}
   :journal:\t${journal}
   :volume:\t${volume}
   :number:\t${number}
   :pages:\t${pages}
   :year:\t${year}
   :doi:\t${doi}
   :url:\t${url}
   :pdf:\t[[file:pdfs/${=key=}.pdf][${=key=}]]
   :END:\n")

(provide 'org-ref.setting)
