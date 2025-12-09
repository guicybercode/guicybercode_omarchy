;;; doom-guicybercode_omarchy-theme.el --- guicybercode palette for Doom -*- lexical-binding: t; -*-

;;; Commentary:
;; Dark discipline with crimson focus. Built from the guicybercode_omarchy palette
;; used across this theme pack (Hyprland, Waybar, Neovim). Foregrounds draw from
;; warm stone neutrals; accents lean red/orange for focus cues. Mandarin numerals
;; and cross motifs are left to the user’s modeline/workspaces.

;;; Code:

(require 'doom-themes)

(defgroup doom-guicybercode_omarchy-theme nil
  "Options for the `doom-guicybercode_omarchy' theme."
  :group 'doom-themes)

(def-doom-theme doom-guicybercode_omarchy
  "A crimson-focused dark theme tuned for Omarchy’s guicybercode palette."

  ;; Palette
  ((bg         '("#0F0F0F" "black"       "black"))
   (bg-alt     '("#1B1B1B" "#181818"     "brightblack"))
   (base0      '("#0F0F0F" "black"       "black"))
   (base1      '("#1B1B1B" "#1c1c1c"     "brightblack"))
   (base2      '("#3A403B" "#303030"     "brightblack"))
   (base3      '("#6E6A5A" "#5f5f5f"     "brightblack"))
   (base4      '("#7B726A" "#737373"     "brightblack"))
   (base5      '("#9c907f" "#8a8a8a"     "brightblack"))
   (base6      '("#E0D4C2" "#d0d0d0"     "brightblack"))
   (base7      '("#F3E9DA" "#f0f0f0"     "brightblack"))
   (base8      '("#FFFFFF" "#ffffff"     "white"))
   (fg         '("#E0D4C2" "#eaeaea"     "white"))
   (fg-alt     '("#C7B8A2" "#cfc7c7"     "brightwhite"))

   (grey       base4)
   (red        '("#B20000" "#ff5f5f"     "red"))
   (orange     '("#FF5C1F" "#ff8700"     "brightred"))
   (amber      '("#FFAA00" "#ffaf00"     "brightyellow"))
   (yellow     amber)
   (green      '("#445047" "#5f875f"     "green"))
   (teal       '("#889197" "#87afaf"     "brightgreen"))
   (blue       '("#55624B" "#5f875f"     "brightblue"))
   (dark-blue  '("#3A403B" "#303030"     "blue"))
   (magenta    '("#8E7A70" "#af8787"     "magenta"))
   (violet     '("#A67C52" "#d7875f"     "brightmagenta"))
   (cyan       '("#889197" "#87afaf"     "cyan"))
   (dark-cyan  '("#465047" "#5f8787"     "brightcyan"))

   ;; UI
   (highlight      orange)
   (vertical-bar   (doom-lighten bg-alt 0.08))
   (selection      (doom-darken base2 0.1))
   (builtin        orange)
   (comments       base3)
   (doc-comments   (doom-lighten base3 0.15))
   (constants      amber)
   (functions      '("#FF6347" "#ff5f5f" "brightred"))
   (keywords       '("#E24C00" "#ff5f00" "red"))
   (methods        functions)
   (operators      orange)
   (type           teal)
   (strings        '("#D87F3E" "#d7875f" "yellow"))
   (variables      fg)
   (numbers        amber)
   (region         (doom-blend orange bg 0.12))
   (error          red)
   (warning        amber)
   (success        green)
   (vc-modified    amber)
   (vc-added       green)
   (vc-deleted     red)

   ;; Modeline
   (modeline-bg           (doom-darken bg-alt 0.15))
   (modeline-bg-alt       (doom-darken bg-alt 0.25))
   (modeline-fg           fg)
   (modeline-fg-alt       base5)
   (modeline-pad          3))

  ;; Face categories
  (((line-number &override) :foreground base3)
   ((line-number-current-line &override) :foreground fg :background (doom-darken bg 0.25))
   ((mode-line &override) :box `(:line-width 2 :color ,modeline-bg-alt))
   ((mode-line-inactive &override) :box `(:line-width 2 :color ,modeline-bg))
   (cursor :background red)
   (link :foreground orange :underline t)
   (font-lock-comment-face :slant 'italic)
   (font-lock-doc-face :slant 'italic)
   (vertical-border :foreground (doom-darken base2 0.2)))

  ;; Variables
  ())

(provide-theme 'doom-guicybercode_omarchy)

;;; doom-guicybercode_omarchy-theme.el ends here

