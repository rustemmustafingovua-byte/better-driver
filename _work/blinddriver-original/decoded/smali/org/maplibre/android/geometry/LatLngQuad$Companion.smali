.class public final Lorg/maplibre/android/geometry/LatLngQuad$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/geometry/LatLngQuad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lj9/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/maplibre/android/geometry/LatLngQuad$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$readFromParcel(Lorg/maplibre/android/geometry/LatLngQuad$Companion;Landroid/os/Parcel;)Lorg/maplibre/android/geometry/LatLngQuad;
    .locals 0

    invoke-direct {p0, p1}, Lorg/maplibre/android/geometry/LatLngQuad$Companion;->readFromParcel(Landroid/os/Parcel;)Lorg/maplibre/android/geometry/LatLngQuad;

    move-result-object p0

    return-object p0
.end method

.method private final readFromParcel(Landroid/os/Parcel;)Lorg/maplibre/android/geometry/LatLngQuad;
    .locals 3

    new-instance p0, Lorg/maplibre/android/geometry/LatLng;

    invoke-direct {p0, p1}, Lorg/maplibre/android/geometry/LatLng;-><init>(Landroid/os/Parcel;)V

    new-instance v0, Lorg/maplibre/android/geometry/LatLng;

    invoke-direct {v0, p1}, Lorg/maplibre/android/geometry/LatLng;-><init>(Landroid/os/Parcel;)V

    new-instance v1, Lorg/maplibre/android/geometry/LatLng;

    invoke-direct {v1, p1}, Lorg/maplibre/android/geometry/LatLng;-><init>(Landroid/os/Parcel;)V

    new-instance v2, Lorg/maplibre/android/geometry/LatLng;

    invoke-direct {v2, p1}, Lorg/maplibre/android/geometry/LatLng;-><init>(Landroid/os/Parcel;)V

    new-instance p1, Lorg/maplibre/android/geometry/LatLngQuad;

    invoke-direct {p1, p0, v0, v1, v2}, Lorg/maplibre/android/geometry/LatLngQuad;-><init>(Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;)V

    return-object p1
.end method
