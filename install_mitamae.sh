case "$(uname)" in
  "Darwin")
    mitamae_file="mitamae-x86_64-darwin"
    ;;
  "Linux")
    mitamae_file="mitamae-x86_64-linux"
    ;;
  *)
    echo "unknown uname: $(uname)"
    exit 1
    ;;
esac

if [ ! -e bin/mitamae-${version} ]; then
  version="1.6.3"
  curl -L -O "https://github.com/itamae-kitchen/mitamae/releases/download/v${version}/${mitamae_file}"
  chmod +x ${mitamae_file}
  mv ${mitamae_file} ./bin/mitamae-${version}
fi
