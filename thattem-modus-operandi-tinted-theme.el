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
