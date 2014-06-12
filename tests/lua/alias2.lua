local env = environment()

local env      = environment()
local l        = mk_param_univ("l")
local u        = mk_global_univ("u")
env = add_alias(env, "m", max_univ(l, u))
env = add_alias(env, "l1", max_univ(l, 1))
assert(is_aliased(env, max_univ(l, u)) == name("m"))
assert(not is_aliased(env, max_univ(u, l)))
assert(get_alias_level(env, "m") == max_univ(l, u))
assert(get_alias_level(env, "l1") == max_univ(l, 1))
assert(not get_alias_level(env, "l2"))
