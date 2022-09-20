# texlive-basic-snap
Texlive basic scheme (plain and latex) as a snap package

## Investigating how snap Texlive
This snap is a testing for snapping TexLive

[Texlive](https://www.tug.org/texlive/doc/tlmgr.html)

## Usage

Once installed, the texlive-basic Snap package includes the following directories:

    * PATH=/snap/texlive-basic/current/bin/x86_64-linux
    * MANPATH=/snap/texlive-basic/current/texmf-dist/doc/man
    * INFOPATH=/snap/texlive-basic/current/texmf-dist/doc/info

The `texlive-basic` command itself prints the location of a file that defines environment variables

```console
$ texlive-basic
/var/snap/texlive-basic/x1/texlive.env
```

The file exports the `PATH`, `MANPATH` and `INFOPATH` environment variables

```console
$ cat $(texlive-basic)
# Source this file for TexLive environment variables
export PATH=/snap/texlive-basic/x1/bin/x86_64-linux:
export MANPATH=/snap/texlive-basic/x1/bin/x86_64-linux/texmf-dist/doc/man:
export INFOPATH=/snap/texlive-basic/x1/bin/x86_64-linux/texmf-dist/doc/info:
```

To set the environment variables in your current shell, use the `source` or "dot" (`.`) command to read and execute the commands from the file:

```console
$ . $(texlive-basic)
```

You can then verify that `PATH` are defined with:

```console
$ latex --version
pdfTeX 3.141592653-2.6-1.40.24 (TeX Live 2022)
kpathsea version 6.3.4
Copyright 2022 Han The Thanh (pdfTeX) et al.
There is NO warranty.  Redistribution of this software is
covered by the terms of both the pdfTeX copyright and
the Lesser GNU General Public License.
For more information about these matters, see the file
named COPYING and the pdfTeX source.
Primary author of pdfTeX: Han The Thanh (pdfTeX) et al.
Compiled with libpng 1.6.37; using libpng 1.6.37
Compiled with zlib 1.2.11; using zlib 1.2.11
Compiled with xpdf version 4.03
```

## Post-install: setting PATH

After the installation finishes, you must add the directory of TeX Live binaries to your
PATH. As an example, for Bourne-compatible shells (e.g., in~/.profile or ~/.bashrc):

  * PATH=/snap/texlive-basic/current/bin/x86_64-linux:$PATH; export PATH
  * MANPATH=/snap/texlive-basic/current/texmf-dist/doc/man:$MANPATH; export MANPATH
  * INFOPATH=/snap/texlive-basic/current/texmf-dist/doc/info:$INFOPATH; export INFOPATH

## Defaults

* The default is to configure the programs for the A4 paper size. To
  make the default be 8.5x11 letter-size paper, or run tlmgr paper
  letter after installation (and after setting your PATH).

## Getting updates
If you want to update packages from CTAN after installation, see these examples of using
[tlmgr](https://www.tug.org/texlive/doc/tlmgr.html). This is not required, or even necessarily recommended; it's up to you to decide
if it makes sense to get continuing updates in your particular situation.

Typically the main binaries are not updated in TeX Live between major releases. If you
want to get updates for LuaTeX and other packages and programs that aren't officially
released yet, they may be available in the TLContrib repository, or you may need to
compile the sources yourself.

## Work in progress

Snap discussion [Snapcraft forum](https://forum.snapcraft.io/t/latex-snap/31621/16)

## TODO

[] Map TEXMFHOME
[] Map TEXMLOCAL