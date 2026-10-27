.class public final Lorg/maplibre/android/geometry/LatLngSpan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/geometry/LatLngSpan$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/maplibre/android/geometry/LatLngSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/maplibre/android/geometry/LatLngSpan$Companion;


# instance fields
.field private latitudeSpan:D

.field private longitudeSpan:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/maplibre/android/geometry/LatLngSpan$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/maplibre/android/geometry/LatLngSpan$Companion;-><init>(Lj9/g;)V

    sput-object v0, Lorg/maplibre/android/geometry/LatLngSpan;->Companion:Lorg/maplibre/android/geometry/LatLngSpan$Companion;

    new-instance v0, Lorg/maplibre/android/geometry/LatLngSpan$Companion$CREATOR$1;

    invoke-direct {v0}, Lorg/maplibre/android/geometry/LatLngSpan$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lorg/maplibre/android/geometry/LatLngSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p1, p0, Lorg/maplibre/android/geometry/LatLngSpan;->latitudeSpan:D

    .line 7
    iput-wide p3, p0, Lorg/maplibre/android/geometry/LatLngSpan;->longitudeSpan:D

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/maplibre/android/geometry/LatLngSpan;->latitudeSpan:D

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/maplibre/android/geometry/LatLngSpan;->longitudeSpan:D

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lj9/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/maplibre/android/geometry/LatLngSpan;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/maplibre/android/geometry/LatLngSpan;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lorg/maplibre/android/geometry/LatLngSpan;->longitudeSpan:D

    check-cast p1, Lorg/maplibre/android/geometry/LatLngSpan;

    iget-wide v5, p1, Lorg/maplibre/android/geometry/LatLngSpan;->longitudeSpan:D

    cmpg-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lorg/maplibre/android/geometry/LatLngSpan;->latitudeSpan:D

    iget-wide p0, p1, Lorg/maplibre/android/geometry/LatLngSpan;->latitudeSpan:D

    cmpg-double p0, v3, p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final getLatitudeSpan()D
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngSpan;->latitudeSpan:D

    return-wide v0
.end method

.method public final getLongitudeSpan()D
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngSpan;->longitudeSpan:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngSpan;->latitudeSpan:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    iget-wide v3, p0, Lorg/maplibre/android/geometry/LatLngSpan;->longitudeSpan:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public final setLatitudeSpan(D)V
    .locals 0

    iput-wide p1, p0, Lorg/maplibre/android/geometry/LatLngSpan;->latitudeSpan:D

    return-void
.end method

.method public final setLongitudeSpan(D)V
    .locals 0

    iput-wide p1, p0, Lorg/maplibre/android/geometry/LatLngSpan;->longitudeSpan:D

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "out"

    invoke-static {p1, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngSpan;->latitudeSpan:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngSpan;->longitudeSpan:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
