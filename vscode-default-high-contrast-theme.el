(deftheme vscode-default-high-contrast
  "Created 2021-12-22. Based on VS Code's Default High Contrast theme.")

;; Define color palette based on VS Code's High Contrast theme
(let (
      ;; Core colors
      (vs-bg                "#000000")  ;; Main background
      (vs-fg                "#ffffff")  ;; Main foreground

      ;; Accent colors
      (vs-orange            "#f38518")  ;; Selection, focus, etc.
      (vs-border            "#6fc3df")  ;; Border color from VS Code

      ;; Syntax colors
      (vs-palegreen         "#7ca668")  ;; Comments
      (vs-lightgreen        "#dcdcaa")  ;; Functions
      (vs-forestgreen       "#859900")
      (vs-brightblue        "#268bd2")  ;; Keywords
      (vs-lightblue         "#9cdcfe")  ;; Variables
      (vs-turqoise          "#4ec9b0")  ;; Types, classes
      (vs-purple            "#b180d7")  ;; Org headings, special keywords
      (vs-lightred          "#dbaba7")  ;; TODO items
      (vs-palered           "#d16969")  ;; RegExp
      (vs-red               "#dc332f")  ;; Errors
      (vs-string            "#ce9178")  ;; Strings
      (vs-numeric           "#b5cea8")  ;; Numeric literals

      ;; UI colors
      (vs-subtle-bg         "#0c141f")  ;; Subtle background for widgets
      (vs-selection         "#ffffff")  ;; Selection background
      (vs-highlight         "#073642")  ;; Highlight background
      (vs-inactive          "#7c7c7c")  ;; Inactive elements

      ;; Font styles
      (bold                 'bold)
      (italic               'italic))

  (custom-theme-set-faces
   'vscode-default-high-contrast

   ;; Basic faces
   `(default ((t (:inherit nil :stipple nil :background ,vs-bg :foreground ,vs-fg :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "PfEd" :family "DejaVu Sans Mono"))))
   `(cursor ((t (:background ,vs-bg :foreground ,vs-fg :inverse-video t :box (:line-width 1 :color ,vs-orange)))))
   `(fixed-pitch ((t (:family "Monospace"))))
   `(variable-pitch ((((type w32)) (:foundry "outline" :family "Arial")) (t (:family "Sans Serif"))))
   `(escape-glyph ((t (:foreground "#6c71c4" :background ,vs-bg))))
   `(homoglyph ((((background dark)) (:foreground "cyan" :background ,vs-bg)) (((type pc)) (:foreground "magenta" :background ,vs-bg)) (t (:foreground "brown" :background ,vs-bg))))
   `(minibuffer-prompt ((t (:foreground ,vs-brightblue :background ,vs-bg))))
   `(highlight ((t (:background ,vs-highlight :foreground ,vs-fg))))
   `(region ((t (:background ,vs-selection :foreground ,vs-bg))))
   `(shadow ((t (:foreground "#586e75" :background ,vs-bg))))
   `(secondary-selection ((t (:background ,vs-highlight :foreground ,vs-fg))))
   `(trailing-whitespace ((t (:background ,vs-palegreen))))

   ;; Font lock faces
   `(font-lock-builtin-face ((t (:weight ,bold :slant normal :foreground ,vs-brightblue :background ,vs-bg))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,vs-palegreen :slant normal :background ,vs-bg))))
   `(font-lock-comment-face ((t (:foreground ,vs-palegreen :slant normal :background ,vs-bg))))
   `(font-lock-constant-face ((t (:foreground ,vs-brightblue :weight normal :background ,vs-bg))))
   `(font-lock-doc-face ((t (:foreground ,vs-palegreen :slant normal :background ,vs-bg))))
   `(font-lock-function-name-face ((t (:foreground ,vs-lightgreen :background ,vs-bg))))
   `(font-lock-keyword-face ((t (:foreground ,vs-brightblue :weight normal :background ,vs-bg))))
   `(font-lock-negation-char-face ((t (:weight ,bold :foreground ,vs-forestgreen :background ,vs-bg))))
   `(font-lock-preprocessor-face ((t (:foreground ,vs-brightblue :background ,vs-bg))))
   `(font-lock-regexp-grouping-backslash ((t (:weight ,bold :foreground ,vs-forestgreen :background ,vs-bg))))
   `(font-lock-regexp-grouping-construct ((t (:weight ,bold :foreground ,vs-orange :background ,vs-bg))))
   `(font-lock-string-face ((t (:foreground ,vs-string :background ,vs-bg))))
   `(font-lock-type-face ((t (:foreground ,vs-turqoise :background ,vs-bg))))
   `(font-lock-variable-name-face ((t (:foreground ,vs-lightblue :background ,vs-bg))))
   `(font-lock-warning-face ((t (:weight ,bold :foreground ,vs-palered :background ,vs-bg :inherit (error)))))
   `(font-lock-bracket-face ((t (:background ,vs-bg :foreground ,vs-numeric))))
   `(font-lock-function-call-face ((t (:background ,vs-bg :foreground ,vs-forestgreen))))

   ;; UI elements
   `(button ((t (:underline (:color ,vs-border :style line) :background ,vs-bg :foreground ,vs-fg))))
   `(link ((t (:underline t :background ,vs-bg :foreground ,vs-border))))
   `(link-visited ((t (:weight normal :underline (:color ,vs-fg :style line) :foreground ,vs-orange :background ,vs-bg))))
   `(fringe ((t (:foreground ,vs-fg :background ,vs-bg :box (:line-width 1 :color ,vs-lightblue)))))
   `(header-line ((t (:underline (:color ,vs-lightblue :style line) :overline nil :box (:line-width 1 :color ,vs-fg) :foreground ,vs-fg :background ,vs-bg))))
   `(tooltip ((t (:foreground "#DEB542" :background "#7B6000" :inherit (variable-pitch)))))

   ;; Mode line
   `(mode-line ((t (:background ,vs-bg :foreground ,vs-fg :box (:line-width 1 :color ,vs-border) :overline ,vs-border :underline ,vs-border))))
   `(mode-line-inactive ((t (:background ,vs-bg :foreground ,vs-fg :box (:line-width 1 :color ,vs-border) :overline ,vs-border :underline ,vs-border))))
   `(mode-line-buffer-id ((t (:background ,vs-bg :foreground ,vs-fg :weight ,bold :box (:line-width 1 :color ,vs-orange)))))
   `(mode-line-buffer-id-inactive ((t (:background ,vs-bg :foreground ,vs-fg :weight ,bold))))
   `(mode-line-emphasis ((t (:weight ,bold :background ,vs-bg))))
   `(mode-line-highlight ((((class color) (min-colors 88)) (:box (:line-width 2 :color "grey40" :style released-button) :background ,vs-bg)) (t (:inherit (highlight)))))

   ;; Search
   `(isearch ((t (:weight normal :box (:line-width 2 :color ,vs-orange) :foreground ,vs-bg :background "#848484"))))
   `(isearch-fail ((t (:weight ,bold :foreground ,vs-red :background ,vs-bg))))
   `(lazy-highlight ((t (:box (:line-width 1 :color ,vs-orange) :background ,vs-bg :foreground ,vs-fg))))
   `(match ((t (:weight ,bold :foreground "#93a1a1" :background ,vs-highlight))))
   `(next-error ((t (:inherit (region)))))
   `(query-replace ((((class color) (min-colors 89)) (:background "#333333" :foreground ,vs-fg))))

   ;; Line highlighting
   `(hl-line ((t (:background ,vs-bg :box (:line-width 1 :color ,vs-orange)))))

   ;; Rainbow delimiters
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,vs-fg :background ,vs-bg))))
   `(sp-show-pair-match-face ((t (:box (:line-width 1 :color ,vs-fg) :background ,vs-bg))))
   `(rainbow-delimiters-base-face ((default (:inherit nil :background ,vs-bg))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,vs-fg :background ,vs-bg))))
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,vs-fg :background ,vs-bg))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,vs-fg :background ,vs-bg))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,vs-fg :background ,vs-bg))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,vs-fg :background ,vs-bg))))

   ;; Window dividers and borders
   `(window-divider ((t (:foreground ,vs-border :width condensed))))
   `(tool-bar ((t (:background ,vs-bg :foreground ,vs-bg :box (:line-width 1 :style released-button)))))
   `(window-divider-last-pixel ((t (:foreground ,vs-inactive))))
   `(border ((t (:foreground ,vs-border))))
   `(vertical-border ((t (:foreground ,vs-border :background ,vs-bg))))

   ;; Org mode
   `(org-level-1 ((t (:foreground ,vs-purple :background ,vs-bg :height 1.0 :weight ,bold))))
   `(org-level-2 ((t (:foreground ,vs-turqoise :background ,vs-bg :height 1.0 :weight ,bold))))
   `(org-level-3 ((t (:foreground ,vs-lightgreen :background ,vs-bg :height 1.0 :weight ,bold))))
   `(org-level-4 ((t (:foreground ,vs-lightblue :background ,vs-bg :height 1.0))))
   `(org-level-5 ((t (:foreground ,vs-purple :background ,vs-bg :height 1.0))))
   `(org-level-6 ((t (:foreground ,vs-turqoise :background ,vs-bg :height 1.0))))
   `(org-level-7 ((t (:foreground ,vs-lightgreen :background ,vs-bg :height 1.0))))
   `(org-level-8 ((t (:foreground ,vs-lightblue :background ,vs-bg :height 1.0))))
   `(custom-link ((t (:foreground ,vs-lightblue :underline t :background ,vs-bg))))
   `(org-headline-todo ((t (:foreground ,vs-lightred :background ,vs-bg))))
   `(org-checkbox-statistics-todo ((t (:foreground ,vs-lightred :background ,vs-bg))))
   `(org-todo ((t (:inherit ,bold :foreground ,vs-lightred :background ,vs-bg :box (:line-width 1 :color ,vs-lightred)))))
   `(org-done ((t (:inherit ,bold :foreground ,vs-palegreen :background ,vs-bg :box (:line-width 1 :color ,vs-palegreen)))))
   `(org-headline-done ((t (:foreground ,vs-palegreen :background ,vs-bg))))
   `(org-document-title ((t (:inherit font-lock-keyword-face :weight ,bold :height 1.0 :background ,vs-bg))))
   `(org-block ((t (:inherit nil :extend t :foreground ,vs-fg :background ,vs-bg))))
   `(org-block-begin-line ((t (:foreground ,vs-palegreen :background ,vs-bg))))
   `(org-block-end-line ((t (:foreground ,vs-palegreen :background ,vs-bg))))
   `(org-date ((t (:foreground ,vs-lightblue :background ,vs-bg))))
   `(org-table ((t (:foreground ,vs-lightblue :background ,vs-bg))))
   `(org-formula ((t (:foreground ,vs-orange :background ,vs-bg))))
   `(org-special-keyword ((t (:foreground ,vs-brightblue :background ,vs-bg))))
   `(org-agenda-structure ((t (:foreground ,vs-purple :background ,vs-bg))))
   `(org-agenda-clocking ((t (:box (:line-width 2 :color "grey75" :style released-button) :background ,vs-bg :foreground ,vs-fg))))
   `(org-agenda-date ((t (:box (:line-width 2 :color "grey75" :style released-button) :background ,vs-bg :foreground ,vs-fg))))
   `(org-agenda-date-today ((t (:box (:line-width 2 :color ,vs-fg :style released-button) :background ,vs-bg :foreground ,vs-fg :weight ,bold))))
   `(org-scheduled ((t (:foreground ,vs-lightgreen :background ,vs-bg))))
   `(org-scheduled-today ((t (:foreground ,vs-lightblue :background ,vs-bg))))
   `(org-upcoming-deadline ((t (:foreground "#bfbfbf" :background ,vs-bg))))
   `(org-upcoming-distant-deadline ((t (:foreground "#808080" :background ,vs-bg))))
   `(org-super-agenda-header ((t (:foreground ,vs-purple :background ,vs-bg :weight ,bold))))

   ;; Ediff
   `(ediff-odd-diff-A ((t (:extend t :box (:line-width 2 :color "grey75" :style released-button) :background ,vs-bg))))
   `(ediff-odd-diff-B ((t (:extend t :box (:line-width 2 :color "LightGrey" :style released-button) :background ,vs-bg))))
   `(ediff-odd-diff-C ((t (:extend t :box (:line-width 2 :color "Grey" :style released-button) :background ,vs-bg))))
   `(ediff-fine-diff-A ((t (:box (:line-width 2 :color "#aa2222" :style released-button) :background ,vs-bg))))
   `(ediff-fine-diff-B ((t (:box (:line-width 2 :color "#22aa22" :style released-button) :background ,vs-bg))))
   `(ediff-fine-diff-C ((t (:box (:line-width 2 :color "#aaaa22" :style released-button) :background ,vs-bg))))
   `(ediff-even-diff-A ((t (:extend t :box (:line-width 2 :color "light grey" :style released-button) :background ,vs-bg))))
   `(ediff-even-diff-B ((t (:extend t :box (:line-width 2 :color "Grey" :style released-button) :background ,vs-bg))))
   `(ediff-even-diff-C ((t (:extend t :box (:line-width 2 :color "light grey" :style released-button) :background ,vs-bg))))
   `(ediff-current-diff-A ((t (:extend t :box (:line-width 2 :color "#553333" :style released-button) :background ,vs-bg))))
   `(ediff-current-diff-B ((t (:extend t :box (:line-width 2 :color "#335533" :style released-button) :background ,vs-bg))))
   `(ediff-current-diff-C ((t (:extend t :box (:line-width 2 :color "#888833" :style released-button) :background ,vs-bg))))
   `(ediff-odd-diff-Ancestor ((t (:extend t :box (:line-width 2 :color "gray40" :style released-button) :background ,vs-bg))))
   `(ediff-fine-diff-Ancestor ((t (:box (:line-width 2 :color "#009591" :style released-button) :background ,vs-bg))))
   `(ediff-even-diff-Ancestor ((t (:extend t :box (:line-width 2 :color "Grey" :style released-button) :background ,vs-bg))))
   `(ediff-current-diff-Ancestor ((t (:extend t :box (:line-width 2 :color "#004151" :style released-button) :background ,vs-bg))))

   ;; mu4e
   `(mu4e-unread-face ((t (:foreground ,vs-purple :background ,vs-bg :weight ,bold))))
   `(mu4e-header-face ((t (:inherit (default) :background ,vs-bg))))
   `(mu4e-flagged-face ((t (:weight ,bold :inherit (font-lock-constant-face) :background ,vs-bg))))
   `(mu4e-header-value-face ((t (:inherit (font-lock-type-face) :background ,vs-bg))))
   `(mu4e-view-body-face ((t (:inherit (default) :background ,vs-bg))))
   `(mu4e-header-highlight-face ((t (:box (:line-width 1 :color ,vs-orange) :background ,vs-bg))))
   `(mu4e-header-key-face ((t (:foreground ,vs-purple :weight ,bold :background ,vs-bg))))
   `(mu4e-header-title-face ((t (:inherit (font-lock-type-face) :background ,vs-bg))))
   `(mu4e-link-face ((t (:inherit (link) :background ,vs-bg))))

   ;; Web mode
   `(web-mode-javascript-string-face ((t (:inherit (web-mode-string-face) :background ,vs-bg))))
   `(web-mode-string-face ((t (:foreground ,vs-string :background ,vs-bg))))
   `(web-mode-javascript-comment-face ((t (:foreground ,vs-palegreen :background ,vs-bg))))
   `(web-mode-comment-face ((t (:foreground ,vs-palegreen :background ,vs-bg))))
   `(web-mode-html-tag-face ((t (:foreground ,vs-brightblue :background ,vs-bg))))
   `(web-mode-html-tag-custom-face ((t (:inherit web-mode-html-tag-face :slant ,italic :background ,vs-bg))))
   `(web-mode-html-attr-name-face ((t (:foreground ,vs-lightblue :background ,vs-bg))))
   `(web-mode-keyword-face ((t (:inherit font-lock-keyword-face :background ,vs-bg))))

   ;; JS2 mode
   `(js2-function-param ((t (:foreground ,vs-lightblue :background ,vs-bg))))
   `(js2-object-property ((t (:foreground ,vs-lightblue :background ,vs-bg))))
   `(js2-object-property-access ((t (:inherit (js2-object-property) :background ,vs-bg))))
   `(js2-external-variable ((t (:foreground ,vs-turqoise :background ,vs-bg))))
   `(js2-function-call ((t (:foreground ,vs-lightgreen :background ,vs-bg))))

   ;; Markdown
   `(markdown-inline-code-face ((t (:foreground "#e2c08d" :background ,vs-bg))))
   `(markdown-header-face ((t (:foreground ,vs-purple :background ,vs-bg :weight ,bold))))
   `(markdown-header-face-1 ((t (:foreground ,vs-purple :background ,vs-bg :weight ,bold))))
   `(markdown-header-face-2 ((t (:foreground ,vs-turqoise :background ,vs-bg :weight ,bold))))
   `(markdown-header-face-3 ((t (:foreground ,vs-lightgreen :background ,vs-bg :weight ,bold))))

   ;; Misc
   `(ahs-plugin-default-face ((t (:inherit (match) :background ,vs-bg))))
   `(org-roam-olp ((t (:inherit font-lock-function-name-face :background ,vs-bg))))
   `(magit-diff-file-heading-highlight ((t (:background ,vs-bg))))
   `(magit-section-highlight ((t (:background ,vs-bg))))
   `(magit-section-highlight-selection ((t (:background ,vs-bg))))
   `(magit-section-highlight-overlays ((t (:background ,vs-bg))))
   `(magit-section-highlight-overlays ((t (:background ,vs-bg))))
   `(magit-section-secondary-heading ((t (:background ,vs-bg))))

   `(magit-diff ((t (:background ,vs-bg))))
   `(magit-diff-highlight ((t (:background ,vs-bg))))
   `(magit-diff-highlight-heading ((t (:background ,vs-bg))))


   ;; Additional common faces
   `(line-number ((t (:foreground "#586e75" :background ,vs-bg))))
   `(line-number-current-line ((t (:foreground ,vs-fg :background ,vs-bg :weight ,bold))))
   `(widget-field ((t (:background ,vs-bg :foreground ,vs-fg :box (:line-width 1 :color ,vs-border)))))
   `(custom-group-tag ((t (:foreground ,vs-purple :background ,vs-bg :weight ,bold))))
   `(custom-variable-tag ((t (:foreground ,vs-lightblue :background ,vs-bg))))
   `(custom-state ((t (:foreground ,vs-palegreen :background ,vs-bg))))
   `(custom-button ((t (:box (:line-width 1 :color ,vs-border) :background ,vs-bg :foreground ,vs-fg))))
   `(custom-button-mouse ((t (:box (:line-width 1 :color ,vs-orange) :background ,vs-bg :foreground ,vs-fg))))
   `(custom-button-pressed ((t (:box (:line-width 1 :color ,vs-orange :style pressed-button) :background ,vs-bg :foreground ,vs-fg))))
   `(help-key-binding ((t (:background ,vs-bg :foreground ,vs-lightblue :box (:line-width 1 :color ,vs-border)))))

   ;; Additional UI elements
   `(tab-bar ((t (:background ,vs-bg :foreground ,vs-fg :box (:line-width 1 :color ,vs-border)))))
   `(tab-bar-tab ((t (:background ,vs-bg :foreground ,vs-fg :box (:line-width 1 :color ,vs-orange)))))
   `(tab-bar-tab-inactive ((t (:background ,vs-bg :foreground ,vs-fg :box (:line-width 1 :color ,vs-border)))))
   `(tab-line ((t (:background ,vs-bg :foreground ,vs-fg :box (:line-width 1 :color ,vs-border)))))

   ;; Dired
   `(dired-directory ((t (:foreground ,vs-purple :background ,vs-bg :weight ,bold))))
   `(dired-flagged ((t (:foreground ,vs-red :background ,vs-bg))))
   `(dired-symlink ((t (:foreground ,vs-turqoise :background ,vs-bg))))
   `(dired-marked ((t (:background ,vs-bg :foreground ,vs-orange :box (:line-width 1 :color ,vs-orange)))))

   ;; Company (autocompletion)
   `(company-tooltip ((t (:background ,vs-subtle-bg :foreground ,vs-fg))))
   `(company-tooltip-common ((t (:foreground ,vs-orange))))
   `(company-tooltip-selection ((t (:background ,vs-bg :box (:line-width 1 :color ,vs-orange)))))
   `(company-scrollbar-fg ((t (:background ,vs-border))))
   `(company-scrollbar-bg ((t (:background ,vs-subtle-bg))))

   ;; Flycheck
   `(flycheck-error ((t (:underline (:style wave :color ,vs-red) :background ,vs-bg))))
   `(flycheck-warning ((t (:underline (:style wave :color ,vs-orange) :background ,vs-bg))))
   `(flycheck-info ((t (:underline (:style wave :color ,vs-lightblue) :background ,vs-bg))))

   ;; Ido
   `(ido-first-match ((t (:foreground ,vs-orange :weight ,bold :background ,vs-bg))))
   `(ido-only-match ((t (:foreground ,vs-palegreen :weight ,bold :background ,vs-bg))))
   `(ido-subdir ((t (:foreground ,vs-purple :background ,vs-bg))))

   ;; Which-key
   `(which-key-key-face ((t (:foreground ,vs-orange :background ,vs-bg))))
   `(which-key-group-description-face ((t (:foreground ,vs-purple :background ,vs-bg))))
   `(which-key-command-description-face ((t (:foreground ,vs-fg :background ,vs-bg))))

   ;; Whitespace mode
   `(whitespace-space ((t (:foreground ,vs-inactive :background ,vs-bg))))
   `(whitespace-tab ((t (:foreground ,vs-inactive :background ,vs-bg))))
   `(whitespace-newline ((t (:foreground ,vs-inactive :background ,vs-bg))))

   ;; Compilation
   `(compilation-info ((t (:foreground ,vs-lightblue :background ,vs-bg))))
   `(compilation-warning ((t (:foreground ,vs-orange :background ,vs-bg))))
   `(compilation-error ((t (:foreground ,vs-red :background ,vs-bg))))

   ;; Diff
   `(diff-added ((t (:foreground ,vs-palegreen :background ,vs-bg))))
   `(diff-removed ((t (:foreground ,vs-lightred :background ,vs-bg))))
   `(diff-context ((t (:foreground ,vs-fg :background ,vs-bg))))
   `(diff-file-header ((t (:foreground ,vs-purple :background ,vs-bg :weight ,bold))))
   `(diff-header ((t (:foreground ,vs-lightblue :background ,vs-bg))))

   ;; Ivy/Counsel
   `(ivy-current-match ((t (:background ,vs-bg :foreground ,vs-fg :box (:line-width 1 :color ,vs-orange)))))
   `(ivy-minibuffer-match-face-1 ((t (:foreground ,vs-orange :background ,vs-bg))))
   `(ivy-minibuffer-match-face-2 ((t (:foreground ,vs-turqoise :background ,vs-bg :weight ,bold))))
   `(ivy-minibuffer-match-face-3 ((t (:foreground ,vs-purple :background ,vs-bg :weight ,bold))))
   `(ivy-minibuffer-match-face-4 ((t (:foreground ,vs-lightgreen :background ,vs-bg :weight ,bold))))

   ;; Helm
   `(helm-selection ((t (:background ,vs-bg :foreground ,vs-fg :box (:line-width 1 :color ,vs-orange)))))
   `(helm-match ((t (:foreground ,vs-orange :background ,vs-bg))))
   `(helm-source-header ((t (:foreground ,vs-purple :background ,vs-bg :weight ,bold))))
   ))

(provide-theme 'vscode-default-high-contrast)
