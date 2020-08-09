# Release guide

## Android

### Prepare for release

1. Generate the key using following command:  
   ```
   keytool -genkey -v -keystore <name>.keystore -alias <key alias> -keyalg RSA -keysize 2048 -validity 10000
   ```
2. Add key-related fields to `/android/local.properties`
   ```conf
   storePassword=<keystore password>
   keyPassword=<key password>
   keyAlias=<key alias>
   storeFile=/path/to/<name>.keystore
   ```

   Note: Alternatively, you can use following environmental variables: `KEY_ALIAS`, `KEY_PASSWORD`, `KEY_STORE_FILE`, `KEY_STORE_PASSWORD`.
3. When running `flutter build apk --release`, if `local.properties` contained `storeFile` key, it will try to sign the build using given key. Otherwise, it will sign the build using debug key.

### Build for release

```sh
# Running `start-release.sh` will do:
# 1. Increment version field in `pubspec.yaml`.
# 2. Update `CHANGELOG.md` from commit messages since last release.
#
# When incrementing major / minor version: Use -M / -m option respectively.
# When incrementing only build number: Use -V option.
# You can also use -d (dry-run) option to see what will happen without
# actually modifying files.
./scripts/pre-release.sh

# If necessary, manually edit `CHANGELOG.md` before running `commit-release.sh` (which commits changes made to `CHANGELOG.md`).
$EDITOR CHANGELOG.md

# After editing CHANGELOG.md, you now make release commit with `commit-release.sh`.
# 1. This script make sure you have no uncommited changes to files other than `CHANGELOG.md`.
# 2. Update `assets/release_notes.html` from `CHANGELOG.md`.
# 3. Create git-tag with release notes using `CHANGELOG.md`'s diff.
./scripts/release.sh
```
