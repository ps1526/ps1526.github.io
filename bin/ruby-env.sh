# Source from bin/* scripts. Puts Homebrew ruby@3.3 before PATH so `bundle` is not /usr/bin (2.6).
# Conda and other tools often shadow the correct Bundler.
academicwebsite_prepend_ruby() {
  local prefix
  for prefix in /opt/homebrew/opt/ruby@3.3 /usr/local/opt/ruby@3.3; do
    if [[ -x "${prefix}/bin/bundle" ]]; then
      export PATH="${prefix}/bin:${PATH}"
      return 0
    fi
  done
  echo "academicwebsite: no Homebrew ruby@3.3 found (brew install ruby@3.3)." >&2
  echo "Then ensure PATH includes: /opt/homebrew/opt/ruby@3.3/bin (Apple Silicon)" >&2
  echo "or /usr/local/opt/ruby@3.3/bin (Intel)." >&2
  return 1
}
