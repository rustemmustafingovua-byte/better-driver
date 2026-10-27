.class public final Lorg/maplibre/android/geometry/ProjectedMeters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/geometry/ProjectedMeters$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/maplibre/android/geometry/ProjectedMeters;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/maplibre/android/geometry/ProjectedMeters$Companion;


# instance fields
.field private easting:D

.field private northing:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/maplibre/android/geometry/ProjectedMeters$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/maplibre/android/geometry/ProjectedMeters$Companion;-><init>(Lj9/g;)V

    sput-object v0, Lorg/maplibre/android/geometry/ProjectedMeters;->Companion:Lorg/maplibre/android/geometry/ProjectedMeters$Companion;

    new-instance v0, Lorg/maplibre/android/geometry/ProjectedMeters$Companion$CREATOR$1;

    invoke-direct {v0}, Lorg/maplibre/android/geometry/ProjectedMeters$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lorg/maplibre/android/geometry/ProjectedMeters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lorg/maplibre/android/geometry/ProjectedMeters;->northing:D

    .line 4
    iput-wide p3, p0, Lorg/maplibre/android/geometry/ProjectedMeters;->easting:D

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/maplibre/android/geometry/ProjectedMeters;->northing:D

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/maplibre/android/geometry/ProjectedMeters;->easting:D

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lj9/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/maplibre/android/geometry/ProjectedMeters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/maplibre/android/geometry/ProjectedMeters;)V
    .locals 2

    const-string v0, "projectedMeters"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget-wide v0, p1, Lorg/maplibre/android/geometry/ProjectedMeters;->northing:D

    iput-wide v0, p0, Lorg/maplibre/android/geometry/ProjectedMeters;->northing:D

    .line 7
    iget-wide v0, p1, Lorg/maplibre/android/geometry/ProjectedMeters;->easting:D

    iput-wide v0, p0, Lorg/maplibre/android/geometry/ProjectedMeters;->easting:D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lorg/maplibre/android/geometry/ProjectedMeters;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/maplibre/android/geometry/ProjectedMeters;

    iget-wide v2, p1, Lorg/maplibre/android/geometry/ProjectedMeters;->easting:D

    iget-wide v4, p0, Lorg/maplibre/android/geometry/ProjectedMeters;->easting:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p1, Lorg/maplibre/android/geometry/ProjectedMeters;->northing:D

    iget-wide p0, p0, Lorg/maplibre/android/geometry/ProjectedMeters;->northing:D

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final getEasting()D
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/geometry/ProjectedMeters;->easting:D

    return-wide v0
.end method

.method public final getNorthing()D
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/geometry/ProjectedMeters;->northing:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lorg/maplibre/android/geometry/ProjectedMeters;->easting:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    iget-wide v3, p0, Lorg/maplibre/android/geometry/ProjectedMeters;->northing:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lorg/maplibre/android/geometry/ProjectedMeters;->northing:D

    iget-wide v2, p0, Lorg/maplibre/android/geometry/ProjectedMeters;->easting:D

    const-string p0, "ProjectedMeters [northing="

    const-string v4, ", easting="

    invoke-static {v0, v1, p0, v4}, La6/q;->l(DLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-static {p0, v2, v3, v0}, Lm/a;->m(Ljava/lang/StringBuilder;DLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "out"

    invoke-static {p1, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/maplibre/android/geometry/ProjectedMeters;->northing:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lorg/maplibre/android/geometry/ProjectedMeters;->easting:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
