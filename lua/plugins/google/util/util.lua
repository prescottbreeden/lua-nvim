local M = {}

-- Given a g3 path, perform common substitutions so that it looks a little nicer.
function M.pretty_g3_path(path)
  path = path:gsub("^/google/src/head/[^/]+/google3/", "g3/", 1)
  path = path:gsub("^/google/src/head/[^/]+/", "depot/", 1)
  path = path:gsub("^/google/src/[^/]+/[^/]+/[^/]+/google3/", "google3/", 1)
  path = path:gsub("^/google/src/[^/]+/[^/]+/[^/]+/", "depot/", 1)
  path = path:gsub("^google3/java/com/google/", "g3/j/c/g/", 1)
  path = path:gsub("^google3/javatests/com/google/", "g3/jt/c/g/", 1)
  path = path:gsub("^google3/third_party/", "g3/3rdp/", 1)
  path = path:gsub("^google3/", "g3/", 1)
  return path
end

return M
