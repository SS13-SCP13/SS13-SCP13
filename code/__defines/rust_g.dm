#define RUST_G (world.system_type == MS_WINDOWS ? "rust_g.dll" : "librust_g.so")

#define rustg_log_write(filename, text) world.system_type == UNIX ? file(filename) << text : call(RUST_G, "log_write")(filename, text)

#define rustg_dmi_strip_metadata(fname) call(RUST_G, "dmi_strip_metadata")(fname)

#define rustg_git_revparse(rev) call(RUST_G, "rg_git_revparse")(rev)
#define rustg_git_commit_date(rev) call(RUST_G, "rg_git_commit_date")(rev)

#define rustg_log_write(fname, text) call(RUST_G, "log_write")(fname, text)

/proc/rustg_log_close_all() return call(RUST_G, "log_close_all")()