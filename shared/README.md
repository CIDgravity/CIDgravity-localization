# Shared translation

This directory is aimed to store cross-projects translation files.

## The `unpackaged` directory

No files from `unpackaged` will be packaged and loaded, it is only there for Weblate.
This directory contains mainly `glossary.json`.

`glossary.json` is used is a very specific way. A component has been manually created in Weblate and set as a Glossary. This component is used by translators to make sure every translations use the same glossary. However, these files are not meant to be called directly in the source code, therefore, there are not included in the exported npm package.

## The `packaged` directory

Weblate component that will actually be exported in each project npm package.
For now, it doesn't contain any files.
