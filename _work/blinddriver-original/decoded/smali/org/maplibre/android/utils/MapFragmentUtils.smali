.class public Lorg/maplibre/android/utils/MapFragmentUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFragmentArgs(Lorg/maplibre/android/maps/MapLibreMapOptions;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MapLibreMapOptions"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public static resolveArgs(Landroid/content/Context;Landroid/os/Bundle;)Lorg/maplibre/android/maps/MapLibreMapOptions;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "MapLibreMapOptions"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/maps/MapLibreMapOptions;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/maplibre/android/maps/MapLibreMapOptions;->createFromAttributes(Landroid/content/Context;)Lorg/maplibre/android/maps/MapLibreMapOptions;

    move-result-object p0

    return-object p0
.end method
