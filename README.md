# Lobash

A modern shell script utility library.

## TOC

<!-- MarkdownTOC GFM -->

- [Supported Shells](#supported-shells)
- [Installation](#installation)
- [Usage](#usage)
    - [Import all modules](#import-all-modules)
    - [Import specific modules](#import-specific-modules)
    - [Import all modules with prefix naming](#import-all-modules-with-prefix-naming)
    - [Import specific modules with prefix naming](#import-specific-modules-with-prefix-naming)
- [Modules](#modules)
- [Contributions](#contributions)
- [Versioning](#versioning)
- [Copyright and License](#copyright-and-license)

<!-- /MarkdownTOC -->

## Supported Shells

| Supported | Shell    | Version       | Reason                                     |
|:---------:|:---------|:--------------|:-------------------------------------------|
|     ✅    | Bash     | v3 and higher | -                                          |
|     ❔    | Zsh      |               | No tested                                  |
|     ❔    | Ash      |               | No tested                                  |
|     ❔    | Fish     |               | No tested                                  |
|     ❔    | Ksh      |               | `read -A` is different from bash `read -a` |
|     ❔    | Xiki     |               | No tested                                  |
|     🚫    | POSIX sh |               | not supported `local` keyword              |

## Installation

```
git clone --depth 1 https://github.com/adoyle-h/lobash.git
git submodule update --init --recursive
```

## Usage

### Import all modules

```sh
source ./src/import.bash

import_all

ask hello world
```

### Import specific modules

```sh
source ./src/import.bash

# import <module name>
import ask
import logger

ask hello world
```

### Import all modules with prefix naming

```sh
source ./src/import.bash

import_all l.

l.ask hello world
```

### Import specific modules with prefix naming

```sh
source ./src/import.bash

# import <module name>
import ask l.
import logger l.

l.ask hello world
```

## Modules

See the files in [./test/modules/](./test/modules/) to get each module APIs and usages.

## Contributions

Contributions are welcomed. Please read [this document]('./doc/contribution.md').

## Versioning

The versioning follows the rules of SemVer 2.0.0.

**Attentions**: anything may have **BREAKING CHANGES** at **ANY TIME** when major version is zero (0.y.z), which is for initial development and the public API should be considered unstable.

For more information on SemVer, please visit http://semver.org/.


## Copyright and License

Copyright (c) 2019 ADoyle. The project is licensed under the **Apache License Version 2.0**.

See the [LICENSE][] file for the specific language governing permissions and limitations under the License.

See the [NOTICE][] file distributed with this work for additional information regarding copyright ownership.


<!-- Links -->

[LICENSE]: ./LICENSE
[NOTICE]: ./NOTICE
