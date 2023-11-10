# NeoSLUG
This is the repository for the [RU SLUG](https://slug.sinepost.us)
website. As a reimplementation the original 2001 version of the site,
it has been named "NeoSLUG."

## Goals
The history of the RU SLUG website is the history of switching between
site generators that were relevant at the time. In addition to
creating a site the replicates the original and avoids feature creep,
we impose the following requirements:
- Small
- Static; no CGI or JavaScript
- Written in modern HTML and CSS
- Friendly to as many browsers as possible, including text-based browsers

## Generating
To generate the site from the script, run the script `gensite.sh` from
the `scripts` directory with the argument to a build directory. By
default, it will be built to the directory "slug" under the root of
the project itself.



