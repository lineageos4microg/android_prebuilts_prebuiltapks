# Prebuilt APKs

This is a collection of mostly FOSS APKs, coupled with the respective Android.mk for aneasy integration in the Android build system.
These are just the official unmodified prebuilt binaries, signed by the corresponding developers, except for:
 * com.google.android.maps, as the JAR and the XML have been extracted from the ZIP on the [microG's GitHub release page](https://github.com/microg/android_frameworks_mapsv1/releases)
 * additional_repos.xml, as it is just the microG FDroid repository XML file
 * com.android.vending, as it is closed source extracted from OpenGapps, and resigned with my own private key for integration into my own private LineageOS4microG build.
To include them in your build just add their name in CUSTOM_PACKAGES (for
example in vendor/lineage/config/common.mk).

The included APKs are:
 * FDroid packages (binaries sourced from [here](https://f-droid.org/packages/org.fdroid.fdroid/) and [here](https://f-droid.org/packages/org.fdroid.fdroid.privileged/))
   * FDroid: a catalogue of FOSS (Free and Open Source Software) applications for the Android platform
   * FDroid Privileged Extension: a FDroid extension to ease the installation/removal of apps
   * additional_repos.xmly: a simple package to include the [microG FDroid repository](https://microg.org/fdroid.html) in the ROM (requires FDroid >= 1.5)
 * microG packages (binaries sourced from [here](https://microg.org/download.html) and [here](https://github.com/microg/android_frameworks_mapsv1))
   * GmsCore: the main component of microG, a FOSS reimplementation of the Google Play Services (requires GsfProxy and FakeStore for full functionality)
   * GsfProxy: a GmsCore proxy for legacy GCM compatibility
   * com.google.android.maps: legacy microG's mapsv1 reimplementation
 * LineageOS packages (binaries sourced from [here](https://download.lineageos.org/extras))
   * OpenWeatherMapWeatherProvider: "Open Weather Map" weather provider for the LineageOS' weather service
 * OpenGapps packages (binaries extracted from [here](https://opengapps.org/)):
   * Phonesky: the official Google Play Store, patched with NanoLX patches from [here](https://gitlab.com/Nanolx/microg-phonesky-iap-support), and resigned with my private key.
