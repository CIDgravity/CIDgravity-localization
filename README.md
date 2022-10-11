# CIDgravity Localization

This repository contains the i18next JSON localization files for the [CIDgravity application](https://app.cidgravity.com).

## How to contribute as a translator

The actual translation work happens at https://localization.cidgravity.com through our Weblate instance.

Weblate will locally commit to a feature branch every minute, then an administrator will manually push and this repository CI will trigger a pull request.

## How to contribute as a developer

Add variables by editing `./cidgravity/locales/dev/filename.json`.

Then run the following command to create a file named `./cidgravity/locales/en-US/filename.json` containing an empty JSON:
- `npm run create-en-US-from-dev`

If you forget to create this `en-US` file, then Weblate `component discovery` add-on will not be able to generate the component automatically.

Finally eventually run `npm run format:write` in `cidgravity/`.

Our CI pipeline will fail if these conditions are not respected. 

### `pre-commit` hooks

We use [pre-commit](https://pre-commit.com/#intro) to avoid committing large files & unresolved merge conflicts.
 
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

Copyright © 2022, CIDgravity <contact@cidgravity.com>

This repository is distributed under the terms of both the MIT license and the Apache License (Version 2.0).

[Our Weblate instance](https://localization.cidgravity.com) only displays "Apache" as license because of technical limitations - but its content is the same as this repository content, that is unambiguously dual-licensed.

See [LICENSE-APACHE](./LICENSE-APACHE) and [LICENSE-MIT](./LICENSE-MIT).
