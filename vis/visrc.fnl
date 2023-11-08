(fn subscribe [event attrs]
  (let
    [actual-event
      (-> event
        (: :upper)
        (: :gsub "-" "_"))]
    (vis.events.subscribe
      (. vis.events actual-event)
     #(each [k v (pairs attrs)]
        (vis:command
          (string.format "set %s %s" k v))))))

(fn nmap [k b]
  (vis:map vis.modes.NORMAL k b))
(fn n! [b c]
  (nmap b
    (fn []
      (vis:command (.. c " '" vis.win.file.path "'")))))

(let [leader ";"]
  (nmap "<C-p>" ":fzf<Enter>")
  (nmap (.. leader ";") :<vis-window-next>)
  (n!   (.. leader "s") "!sent -i"))

(subscribe :init
  { :theme "slate"
    :tabwidth "8"
    :autoindent "on" })

(subscribe :win-open
  { :relativenumber "on"
    :layout "v"
    :cursorline "on"
    :colorcolumn "80"
    :show-spaces "on"
    :show-tabs "on" })

(local plugins
  [ ["https://repo.or.cz/vis-pairs.git"]
    ["https://repo.or.cz/vis-surround.git"]
    ["https://repo.or.cz/vis-goto-file.git"]
    ["https://repo.or.cz/vis-quickfix.git"]
    ;; ["https://repo.or.cz/vis-parkour.git"]
    ["https://git.sr.ht/~mcepl/vis-toggler"]
    ["https://git.sr.ht/~mcepl/vis-fzf-open"]
    ["https://gitlab.com/muhq/vis-spellcheck"]
    [:jpaulogg/vis-ins-completion]
    [:fischerling/vis-lspc]
    [:lutobler/vis-commentary]
    [:lutobler/vis-modelines]
    [:erf/vis-cursors]
    [:erf/vis-title]
    [:kupospelov/vis-ctags]
    [:rnpnr/vis-gpg]
    [:e-zk/vis-shebang]
    [:ingolemo/vis-smart-backspace]
    [:mpolitzer/vis-tasks] ])

((. (require :vis-plug) :init) plugins true)

(require :plugins.digraph)
(require :plugins.complete-filename)
(require :plugins.filetype)
(require :plugins.number-inc-dec)
(require :plugins.textobject-lexer)

;; (set vis.ftdetect.filetypes
;;   {:troff
;;     {:ext
;;       ["%.ms$" "%.mom$"]}})
