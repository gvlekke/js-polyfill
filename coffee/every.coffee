unless Array::every
  Array::every = (fun) -> #, thisp
    len = @length
    throw new TypeError()  unless typeof fun is "function"
    thisp = arguments_[1]
    i = 0

    while i < len
      return false  if i of this and not fun.call(thisp, this[i], i, this)
      i++
    true
