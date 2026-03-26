;;; Thattem-modus-operandi-tinted-theme --- extended modus-operandi-tinted-theme  -*- lexical-binding: t; -*-

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

(defconst thattem-modus-operandi-tinted-palette
  (thattem-modus-themes-generate-palette
   '((flymake-error-bg "#ffb9f3")
     (flymake-warning-bg "#eeffcc")
     (flymake-note-bg "#d9e6ff")
     (major-line-box "#e67ee6")
     (major-line-fg "#a60000")
     (minor-line-box "#6cd9d9")
     (minor-line-fg "#0000a6")
     (mode-line-bright-bg "#87cefa")
     (mode-line-bright-bg-2 "#ffa500")
     (mode-line-bright-inactive "#efe9dd")
     (mode-line-dark-bg "#4682b4")
     (mode-line-dark-bg-2 "#505030")
     (mode-line-dark-inactive "#a8a8a8")
     (mode-line-dark-fg "#802800")
     (mode-line-dark-fg-2 "#404058")
     (mode-line-bright-fg "#ffff70")
     (mode-line-bright-fg-2 "#fbf7f0")
     (mode-line-error-fg "#980000")
     (mode-line-warning-fg "#989800")
     (mode-line-note-fg "#009800")
     (tab-bar-dark "#b0d8f4")
     (tab-bar-bright "#ebebeb")
     (tab-bar-dark-h "#c0d0f0")
     (tab-bar-bright-h "#ffffff")
     (tab-bar-dark-w "#ff7800")
     (tab-bar-bright-w "#ff7800")
     (space-box "#c9e6e6")
     (tab-box "#e6e600")
     (error-space-box "#e60000")
     (error-space-bg "#ffd9b3")
     (newline-fg "#ccb399")
     (empty-line-bg "#ddffcc")
     (missing-newline-bg "#ff99aa")))
  "The palette of \\='thattem-modus-operandi-tinted\\='.")

(defcustom thattem-modus-operandi-tinted-palette-overrides
  nil
  "Overrides for \\='thattem-modus-operandi-tinted-palette\\='."
  :type '(repeat (list symbol (choice symbol string)))
  :group 'thattem-modus-themes)

;;;###theme-autoload
(modus-themes-theme
 'thattem-modus-operandi-tinted
 'thattem-modus-themes
 "extended \\='modus-operandi-tinted-theme\\='."
 'light
 'modus-themes-operandi-tinted-palette
 'thattem-modus-operandi-tinted-palette
 'thattem-modus-operandi-tinted-palette-overrides
 'thattem-modus-themes-custom-faces)


;;; thattem-modus-operandi-tinted-theme.el ends here
