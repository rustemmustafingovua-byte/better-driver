.class public final Lorg/maplibre/android/camera/CameraPosition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/camera/CameraPosition$Builder;,
        Lorg/maplibre/android/camera/CameraPosition$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/maplibre/android/camera/CameraPosition;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/maplibre/android/camera/CameraPosition$Companion;

.field public static final DEFAULT:Lorg/maplibre/android/camera/CameraPosition;


# instance fields
.field public final bearing:D
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public final centerAltitude:D
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public final fov:D
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public final padding:[D
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public final roll:D
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public final target:Lorg/maplibre/android/geometry/LatLng;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public final tilt:D
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public final zoom:D
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/maplibre/android/camera/CameraPosition$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/maplibre/android/camera/CameraPosition$Companion;-><init>(Lj9/g;)V

    sput-object v0, Lorg/maplibre/android/camera/CameraPosition;->Companion:Lorg/maplibre/android/camera/CameraPosition$Companion;

    new-instance v2, Lorg/maplibre/android/camera/CameraPosition;

    new-instance v3, Lorg/maplibre/android/geometry/LatLng;

    invoke-direct {v3}, Lorg/maplibre/android/geometry/LatLng;-><init>()V

    const/4 v0, 0x4

    new-array v10, v0, [D

    fill-array-data v10, :array_0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v2 .. v10}, Lorg/maplibre/android/camera/CameraPosition;-><init>(Lorg/maplibre/android/geometry/LatLng;DDD[D)V

    sput-object v2, Lorg/maplibre/android/camera/CameraPosition;->DEFAULT:Lorg/maplibre/android/camera/CameraPosition;

    new-instance v0, Lorg/maplibre/android/camera/CameraPosition$Companion$CREATOR$1;

    invoke-direct {v0}, Lorg/maplibre/android/camera/CameraPosition$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lorg/maplibre/android/camera/CameraPosition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lorg/maplibre/android/geometry/LatLng;DDD)V
    .locals 9
    .annotation runtime Lt8/c;
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    .line 11
    invoke-direct/range {v0 .. v8}, Lorg/maplibre/android/camera/CameraPosition;-><init>(Lorg/maplibre/android/geometry/LatLng;DDD[D)V

    return-void
.end method

.method public constructor <init>(Lorg/maplibre/android/geometry/LatLng;DDDDDD[D)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 3
    iput-wide p2, p0, Lorg/maplibre/android/camera/CameraPosition;->centerAltitude:D

    .line 4
    iput-wide p4, p0, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    .line 5
    iput-wide p6, p0, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    .line 6
    iput-wide p8, p0, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    .line 7
    iput-wide p10, p0, Lorg/maplibre/android/camera/CameraPosition;->roll:D

    .line 8
    iput-wide p12, p0, Lorg/maplibre/android/camera/CameraPosition;->fov:D

    .line 9
    iput-object p14, p0, Lorg/maplibre/android/camera/CameraPosition;->padding:[D

    return-void
.end method

.method public constructor <init>(Lorg/maplibre/android/geometry/LatLng;DDD[D)V
    .locals 15
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-wide/16 v10, 0x0

    const-wide v12, 0x40426f58ce59e23cL    # 36.86989764584402

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v14, p8

    .line 10
    invoke-direct/range {v0 .. v14}, Lorg/maplibre/android/camera/CameraPosition;-><init>(Lorg/maplibre/android/geometry/LatLng;DDDDDD[D)V

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

    if-eqz p1, :cond_4

    const-class v2, Lorg/maplibre/android/camera/CameraPosition;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/maplibre/android/camera/CameraPosition;

    iget-object v2, p0, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    invoke-static {v2, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Lorg/maplibre/android/camera/CameraPosition;->centerAltitude:D

    iget-wide v4, p1, Lorg/maplibre/android/camera/CameraPosition;->centerAltitude:D

    cmpg-double v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    iget-wide v4, p1, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    cmpg-double v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    iget-wide v4, p1, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    cmpg-double v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lorg/maplibre/android/camera/CameraPosition;->roll:D

    iget-wide v4, p1, Lorg/maplibre/android/camera/CameraPosition;->roll:D

    cmpg-double v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lorg/maplibre/android/camera/CameraPosition;->fov:D

    iget-wide v4, p1, Lorg/maplibre/android/camera/CameraPosition;->fov:D

    cmpg-double v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    iget-wide v4, p1, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    cmpg-double v2, v2, v4

    if-nez v2, :cond_4

    iget-object p0, p0, Lorg/maplibre/android/camera/CameraPosition;->padding:[D

    iget-object p1, p1, Lorg/maplibre/android/camera/CameraPosition;->padding:[D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/maplibre/android/geometry/LatLng;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraPosition;->centerAltitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraPosition;->roll:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraPosition;->fov:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/maplibre/android/camera/CameraPosition;->padding:[D

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    iget-object v0, p0, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    iget-wide v1, p0, Lorg/maplibre/android/camera/CameraPosition;->centerAltitude:D

    iget-wide v3, p0, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    iget-wide v5, p0, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    iget-wide v7, p0, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    iget-wide v9, p0, Lorg/maplibre/android/camera/CameraPosition;->roll:D

    iget-wide v11, p0, Lorg/maplibre/android/camera/CameraPosition;->fov:D

    iget-object p0, p0, Lorg/maplibre/android/camera/CameraPosition;->padding:[D

    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object p0

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Target: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", Center Altitude:"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", Zoom:"

    const-string v1, ", Bearing:"

    invoke-static {v13, v0, v3, v4, v1}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", Tilt:"

    const-string v1, ", Roll:"

    invoke-static {v13, v0, v7, v8, v1}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", FOV:"

    const-string v1, ", Padding:"

    invoke-static {v13, v0, v11, v12, v1}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string v0, "out"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v0, p0, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraPosition;->centerAltitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraPosition;->roll:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraPosition;->fov:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object p2, p0, Lorg/maplibre/android/camera/CameraPosition;->padding:[D

    if-eqz p2, :cond_1

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lorg/maplibre/android/camera/CameraPosition;->padding:[D

    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-wide v1, p0, v0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
