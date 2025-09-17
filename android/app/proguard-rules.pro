# Keep all Stripe Push Provisioning classes
-keep class com.stripe.android.pushProvisioning.** { *; }

# Keep any classes referenced by reflection in Stripe SDK
-keep class com.stripe.android.** { *; }
-dontwarn com.stripe.android.**
