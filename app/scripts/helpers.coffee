define ['handlebars', 'i18n'], (Handlebars, @i18n) ->
  # i18n is now global by calling this
  # TODO: maybe find a better way than global i18n
  # as helper does not keep a reference on it's closure
  Handlebars.registerHelper 't', (key) ->
    [key, values..., options] = Array::slice.call arguments, 0
    chain = i18n.translate(key)
    
    if hash = options.hash
      chain.withDomain(hash.d) if hash.d
      chain.ifPlural(hash.n) if hash.n
      chain.withContext(hash.p) if hash.p
    
    chain.fetch values