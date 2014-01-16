define ['jed'], (Jed) ->
  @i18n = new Jed
    locale_data:
      "messages":
        "" :
          "domain" : "messages",
          "lang"   : "en",
          "plural_forms" : "nplurals=2; plural=(n != 1);"
        "title" : [ null, "hello world"]
        "message" : [ null, "Welcome on board"]
        "login.form.cta.login_label" : [ null, "Login"]
        "translations.count" : [ null, "There is one translation.", "There are %d translations."]
        "username": [null, "You're %1$s."]
        "male\u0004username": [ null, "You're %1$s, man."]
        "female\u0004username": [ null, "You're %1$s, female."]
        "I like the %1$s %2$s.": [ null, "I like the %1$s %2$s.", "I like all the %1$s %2$s."]
    "domain" : "messages"