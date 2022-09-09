# CIDgravity Localization

This repository contains the i18next JSON localization files for the [CIDgravity application](https://app.cidgravity.com).

## How to contribute as a translator

The actual translation work happens at https://localization.cidgravity.com through our Weblate instance.

Weblate will locally commit to a feature branch every minute, then an administrator will manually push and this repository CI will trigger a pull request.

## How to contribute as a developer

Add variables by editing `./cidgravity/intermediate/filename.json`.

If the file does not exist, create it, then create also `./cidgravity/locales/en-US/filename.json`.
If you forget to create the `en-US` file, then Weblate add-on will not be able to generate the component automatically.
Our CI pipeline will fail if this condition is not respected. Install this repository's pre-commit hooks to automatically generate `en-US` files when creating a file in the `intermediate` directory.

### `pre-commit` hooks

We use [pre-commit](https://pre-commit.com/#intro)

Install it using:
```
python3 -m pip install pre-commit
```
Run 
```
pre-commit install
```
to install all the configured hooks.

To change pre-commit rules, edit `.pre-commit-config.yaml`.

## Acknowledgements

Thanks [Weblate](https://weblate.org/en/) and [i18next](https://www.i18next.com/) teams for your amazing work!

## License

This repository is distributed under the terms of both the MIT license and the Apache License (Version 2.0).

Weblate displays only "Apache" as license because of technical limitations - but Weblate content is the same as this repository content, and it is unambiguously dual-licensed.

See [LICENSE-APACHE](./LICENSE-APACHE) and [LICENSE-MIT](./LICENSE-MIT).
