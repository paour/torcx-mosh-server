# What is this for?

CoreOS / Flatcar is a bare-bones, auto-updated and sealed Linux distribution designed to run Docker containers.

Because it's sealed, there is no package manager to add functionality, but it does support Torcx, which are small modules that can add functionality.

This project implements a mosh-server torcx.

# How do I use it?

Working with Torcx takes some getting used to, since Flatcar is designed to be configured by ignition, and deployed without admin intervention.

I wrote a small script that I can run manually to install the modules I use. 

https://gist.github.com/paour/3fccdbd9daf6ea3cae15d4ae63c69155

# Troubleshooting

- because the `mosh-server` binary is installed in an usual location, run the client `mosh` command with the `--server=/var/run/torcx/bin/mosh-server` switch

# Credits

- https://github.com/dtinth/mosh-static for saving me the trouble to cross-compile mosh myself
