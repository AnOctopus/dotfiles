{:user {:dependencies [[acyclic/squiggly-clojure "0.1.7"]
                       ;; [pjstadig/humane-test-output "0.8.1"]
                       ]
        :plugins      [[org.clojure/core.typed "0.3.7"]
                       [jonase/eastwood "0.2.1" :exclusions [org.clojure/clojure]]
                       [jonase/kibit "0.1.2"]
                       [lein-ancient "0.6.10" :exclusions [org.clojure/core.cache org.clojure/clojure]]]}}
