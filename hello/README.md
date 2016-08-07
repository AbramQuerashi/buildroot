# Out of tree

Minimal sample of how to add a new out of tree package.

<https://buildroot.org/downloads/manual/manual.html#outside-br-custom>

Usage:

    make BR2_EXTERNAL=/path/to/this/directory qemu_x86_defconfig
    echo 'BR2_PACKAGE_HELLO=y' >> .config

then just build normally.

Now the image should contain a `hello` command.

Undo the out-of-tree build for the next build:

    rm ~/output/.br-external
