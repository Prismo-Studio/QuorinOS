# Patches

Source changes that cannot be done through overlays or product config and have
to be applied directly to the synced LineageOS tree.

## lineage-envsetup-quorin-prefix.patch

Target: `vendor/lineage/build/envsetup.sh`

LineageOS hardcodes that a product must be named `lineage_<device>`. When the
product name does not start with `lineage_`, `LINEAGE_BUILD` is left empty, which
disables the whole Lineage BoardConfig (kernel variables, soong exports). Our
product is `quorin_sdk_phone_x86_64`, so we teach `check_product` to also accept
the `quorin_` prefix.

Apply after a fresh `repo sync`:

    cd vendor/lineage
    git apply ../quorin/patches/lineage-envsetup-quorin-prefix.patch
