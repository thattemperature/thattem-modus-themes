;;; Thattem-modus-themes --- extended modus themes  -*- lexical-binding: t; -*-

;; Author: That Temperature <2719023332@qq.com>
;; Package-Requires: (dash modus-themes)
;; URL: https://github.com/thattemperature/thattem-modus-themes

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(require 'dash)
(require 'modus-themes)

(defgroup thattem-modus-themes nil
  "Extended modus themes."
  :group 'faces
  :group 'modus-themes)

(defun thattem-modus-themes-generate-palette (palette)
  "Just add \"thattem-\" prefix to each symbol in PALETTE."
  (--map
   (cons
    (intern (concat "thattem-" (symbol-name (car it))))
    (cdr it))
   palette))

(defconst thattem-modus-themes-display-line-numbers-faces
  '(`(line-number
      ((,c :foreground ,fg-dim
           :background ,bg-dim
           :weight thin)))
    `(line-number-major-tick
      ((,c :box (:line-width
                 (-6 . -6)
                 :color
                 ,thattem-major-line-box)
           :foreground ,thattem-major-line-fg
           :background ,bg-dim
           :weight bold)))
    `(line-number-minor-tick
      ((,c :box (:line-width
                 (-6 . -6)
                 :color
                 ,thattem-minor-line-box)
           :foreground ,thattem-minor-line-fg
           :background ,bg-dim
           :weight normal))))
  "Faces of \\='display-line-numbers\\=' package used in \
thattem-modus-themes.")

(defconst thattem-modus-themes-flymake-faces
  '(
    `(flymake-error
      ((,c :background ,thattem-flymake-error-bg)))
    `(flymake-warning
      ((,c :background ,thattem-flymake-warning-bg)))
    `(flymake-note
      ((,c :background ,thattem-flymake-note-bg))))
  "Faces of \\='flymake\\=' package used in thattem-modus-themes.")

(defconst thattem-modus-themes-mode-line-faces
  '(
    `(thattem-mode-line/bright
      ((,c :background ,thattem-mode-line-bright-bg
           :foreground ,thattem-mode-line-dark-fg)))
    `(thattem-mode-line/bright-2
      ((,c :background ,thattem-mode-line-bright-bg-2
           :foreground ,thattem-mode-line-dark-fg-2)))
    `(thattem-mode-line/bright-inactive
      ((,c :background ,thattem-mode-line-bright-inactive
           :foreground ,thattem-mode-line-dark-inactive)))
    `(thattem-mode-line/dark
      ((,c :background ,thattem-mode-line-dark-bg
           :foreground ,thattem-mode-line-bright-fg)))
    `(thattem-mode-line/dark-2
      ((,c :background ,thattem-mode-line-dark-bg-2
           :foreground ,thattem-mode-line-bright-fg-2)))
    `(thattem-mode-line/dark-inactive
      ((,c :background ,thattem-mode-line-dark-inactive
           :foreground ,thattem-mode-line-bright-inactive)))
    `(thattem-mode-line/edge
      ((,c :background ,thattem-mode-line-dark-bg
           :foreground ,thattem-mode-line-bright-bg)))
    `(thattem-mode-line/edge-2
      ((,c :background ,thattem-mode-line-dark-bg-2
           :foreground ,thattem-mode-line-bright-bg-2)))
    `(thattem-mode-line/edge-reverse
      ((,c :background ,thattem-mode-line-bright-bg
           :foreground ,thattem-mode-line-dark-bg)))
    `(thattem-mode-line/edge-2-reverse
      ((,c :background ,thattem-mode-line-bright-bg-2
           :foreground ,thattem-mode-line-dark-bg-2)))
    `(thattem-mode-line/error
      ((,c :background ,thattem-mode-line-bright-bg
           :foreground ,thattem-mode-line-error-fg
           :weight bold)))
    `(thattem-mode-line/warning
      ((,c :background ,thattem-mode-line-bright-bg
           :foreground ,thattem-mode-line-warning-fg
           :weight bold)))
    `(thattem-mode-line/note
      ((,c :background ,thattem-mode-line-bright-bg
           :foreground ,thattem-mode-line-note-fg
           :weight bold))))
  "Faces of \\='thattem-mode-line\\=' package used in \
thattem-modus-themes.")

(defconst thattem-modus-themes-whitespace-faces
  '(
    `(whitespace-space
      ((,c :box (:line-width
                 (-2 . -2)
                 :color
                 ,thattem-space-box))))
    `(whitespace-tab
      ((,c :box (:line-width
                 (-2 . -2)
                 :color
                 ,thattem-tab-box))))
    `(whitespace-trailing
      ((,c :box (:line-width
                 (-2 . -2)
                 :color
                 ,thattem-error-space-box)
           :background ,thattem-error-space-bg)))
    `(whitespace-line
      ((,c :background ,thattem-error-space-bg)))
    `(whitespace-newline
      ((,c :foreground ,thattem-newline-fg)))
    `(whitespace-empty
      ((,c :background ,thattem-empty-line-bg)))
    `(whitespace-missing-newline-at-eof
      ((,c :background ,thattem-missing-newline-bg))))
  "Faces of \\='whitespace\\=' package used in thattem-modus-themes.")

(defconst thattem-modus-themes-custom-faces
  (append
   thattem-modus-themes-display-line-numbers-faces
   thattem-modus-themes-flymake-faces
   thattem-modus-themes-mode-line-faces
   thattem-modus-themes-whitespace-faces)
  "Faces used in thattem-modus-themes.")

;;;###autoload
(when load-file-name
  (let ((dir (file-name-directory load-file-name)))
    (add-to-list 'custom-theme-load-path dir)))


(provide 'thattem-modus-themes)
;;; thattem-modus-themes.el ends here
