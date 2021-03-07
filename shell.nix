with import <nixpkgs> {};
stdenv.mkDerivation rec{
  name="elixir";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    elixir
    nodejs
    postgresql
    inotify-tools
    
  ];
}
