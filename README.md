# fastlane-plugin-version

[![fastlane plugin badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-version)
[![gem version](https://img.shields.io/gem/v/fastlane-plugin-version.svg)](https://rubygems.org/gems/fastlane-plugin-version)
[![travis-ci build status](https://travis-ci.com/jasonnam/fastlane-plugin-version.svg?branch=master)](https://travis-ci.com/jasonnam/fastlane-plugin-version)

## Getting Started

This project is a [_fastlane_](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-version`, add it to your project by running:

```bash
fastlane add_plugin version
```

## About fastlane-plugin-version

Update version.

## Example

Check out the [example `Fastfile`](fastlane/Fastfile) to see how to use this plugin. Try it by cloning the repo, running `fastlane install_plugins` and `bundle exec fastlane test`.

```ruby
lane :test do
  update_version(
    plist: "path/to/Info.plist",
    version: "1.0.0",
    build_version: 1234
  )
  update_version(
    plist: "path/to/Info.plist",
    version: "1.0.0"
  )
  update_version(
    plist: "path/to/Info.plist",
    build_version: 1234
  )
end
```

## Run Tests

To run both the tests, and code style validation, run

```
rake
```

To automatically fix many of the styling issues, use
```
rubocop -a
```

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://docs.fastlane.tools/plugins/plugins-troubleshooting/) guide.

## Using _fastlane_ Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://docs.fastlane.tools/plugins/create-plugin/).

## About _fastlane_

_fastlane_ is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
