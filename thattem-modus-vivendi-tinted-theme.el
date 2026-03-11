;;; Thattem-modus-vivendi-tinted-theme --- extended modus-vivendi-tinted-theme  -*- lexical-binding: t; -*-

;; Author: That Temperature <2719023332@qq.com>
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

(require 'thattem-modus-themes)

(defconst thattem-modus-vivendi-tinted-palette
  (thattem-modus-themes-generate-palette
   '((flymake-error-bg "#863c6d")
     (flymake-warning-bg "#415229")
     (flymake-note-bg "#212d66")
     (major-line-box "#995c99")
     (major-line-fg "#bf4026")
     (minor-line-box "#2f8c8c")
     (minor-line-fg "#45a632")
     (mode-line-bright-bg "#1e2c37")
     (mode-line-bright-bg-2 "#303022")
     (mode-line-bright-inactive "#101820")
     (mode-line-dark-bg "#28639a")
     (mode-line-dark-bg-2 "#c08800")
     (mode-line-dark-inactive "#606060")
     (mode-line-dark-fg "#50d5b0")
     (mode-line-dark-fg-2 "#c8bcae")
     (mode-line-bright-fg "#ca8600")
     (mode-line-bright-fg-2 "#383c53")
     (mode-line-error-fg "#980000")
     (mode-line-warning-fg "#989800")
     (mode-line-note-fg "#009800")
     (tab-bar-dark "#784c74")
     (tab-bar-bright "#303030")
     (tab-bar-dark-h "#d89cb4")
     (tab-bar-bright-h "#000000")
     (space-box "#082a4d")
     (tab-box "#084d08")
     (error-space-box "#800000")
     (error-space-bg "#4D3900")
     (newline-fg "#332D26")
     (empty-line-bg "#243321")
     (missing-newline-bg "#80200D")))
  "The palette of \\='thattem-modus-vivendi-tinted\\='.")

(defcustom thattem-modus-vivendi-tinted-palette-overrides
  nil
  "Overrides for \\='thattem-modus-vivendi-tinted-palette\\='."
  :type '(repeat (list symbol (choice symbol string)))
  :group 'thattem-modus-themes)

;;;###theme-autoload
(modus-themes-theme
 'thattem-modus-vivendi-tinted
 'thattem-modus-themes
 "extended \\='modus-vivendi-tinted-theme\\='."
 'dark
 'modus-themes-vivendi-tinted-palette
 'thattem-modus-vivendi-tinted-palette
 'thattem-modus-vivendi-tinted-palette-overrides
 'thattem-modus-themes-custom-faces)


;;; thattem-modus-vivendi-tinted-theme.el ends here
