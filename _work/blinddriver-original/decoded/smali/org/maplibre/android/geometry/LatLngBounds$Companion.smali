.class public final Lorg/maplibre/android/geometry/LatLngBounds$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/geometry/LatLngBounds;
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
    invoke-direct {p0}, Lorg/maplibre/android/geometry/LatLngBounds$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$checkParams(Lorg/maplibre/android/geometry/LatLngBounds$Companion;DDDD)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/maplibre/android/geometry/LatLngBounds$Companion;->checkParams(DDDD)V

    return-void
.end method

.method public static final synthetic access$readFromParcel(Lorg/maplibre/android/geometry/LatLngBounds$Companion;Landroid/os/Parcel;)Lorg/maplibre/android/geometry/LatLngBounds;
    .locals 0

    invoke-direct {p0, p1}, Lorg/maplibre/android/geometry/LatLngBounds$Companion;->readFromParcel(Landroid/os/Parcel;)Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object p0

    return-object p0
.end method

.method private final checkParams(DDDD)V
    .locals 4

    sget-object p0, Lj9/h;->a:Lj9/h;

    invoke-static {p0, p1, p2}, Lorg/maplibre/android/utils/ExtensionsKt;->isNaN(Lj9/h;D)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0, p5, p6}, Lorg/maplibre/android/utils/ExtensionsKt;->isNaN(Lj9/h;D)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0, p3, p4}, Lorg/maplibre/android/utils/ExtensionsKt;->isNaN(Lj9/h;D)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0, p7, p8}, Lorg/maplibre/android/utils/ExtensionsKt;->isNaN(Lj9/h;D)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0, p3, p4}, Lorg/maplibre/android/utils/ExtensionsKt;->isInfinite(Lj9/h;D)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, p7, p8}, Lorg/maplibre/android/utils/ExtensionsKt;->isInfinite(Lj9/h;D)Z

    move-result p0

    if-nez p0, :cond_3

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double p0, p1, v0

    if-gtz p0, :cond_2

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double p0, p1, v2

    if-ltz p0, :cond_2

    cmpl-double p0, p5, v0

    if-gtz p0, :cond_2

    cmpg-double p0, p5, v2

    if-ltz p0, :cond_2

    cmpl-double p0, p1, p5

    if-ltz p0, :cond_1

    cmpl-double p0, p3, p7

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lonEast cannot be less than lonWest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "latNorth cannot be less than latSouth"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "latitude must be between -90 and 90"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "longitude must not be infinite"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "longitude must not be NaN"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "latitude must not be NaN"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final lat_(II)D
    .locals 4

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v2, p2

    mul-double/2addr v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-double p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    div-double/2addr v2, p0

    const-wide p0, 0x400921fb54442d18L    # Math.PI

    sub-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    neg-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    sub-double/2addr v0, p0

    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private final lon_(II)D
    .locals 4

    int-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double p0, p1

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    div-double/2addr v0, p0

    const-wide p0, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, p0

    const-wide p0, 0x4066800000000000L    # 180.0

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method private final readFromParcel(Landroid/os/Parcel;)Lorg/maplibre/android/geometry/LatLngBounds;
    .locals 9

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    new-instance v0, Lorg/maplibre/android/geometry/LatLngBounds;

    invoke-direct/range {v0 .. v8}, Lorg/maplibre/android/geometry/LatLngBounds;-><init>(DDDD)V

    return-object v0
.end method


# virtual methods
.method public final from(DDDD)Lorg/maplibre/android/geometry/LatLngBounds;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lorg/maplibre/android/geometry/LatLngBounds$Companion;->checkParams(DDDD)V

    .line 2
    new-instance p0, Lorg/maplibre/android/geometry/LatLngBounds;

    invoke-direct/range {p0 .. p8}, Lorg/maplibre/android/geometry/LatLngBounds;-><init>(DDDD)V

    return-object p0
.end method

.method public final from(III)Lorg/maplibre/android/geometry/LatLngBounds;
    .locals 9

    .line 3
    new-instance v0, Lorg/maplibre/android/geometry/LatLngBounds;

    invoke-direct {p0, p1, p3}, Lorg/maplibre/android/geometry/LatLngBounds$Companion;->lat_(II)D

    move-result-wide v1

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, p1, v3}, Lorg/maplibre/android/geometry/LatLngBounds$Companion;->lon_(II)D

    move-result-wide v3

    add-int/lit8 p3, p3, 0x1

    invoke-direct {p0, p1, p3}, Lorg/maplibre/android/geometry/LatLngBounds$Companion;->lat_(II)D

    move-result-wide v5

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/geometry/LatLngBounds$Companion;->lon_(II)D

    move-result-wide v7

    invoke-direct/range {v0 .. v8}, Lorg/maplibre/android/geometry/LatLngBounds;-><init>(DDDD)V

    return-object v0
.end method

.method public final fromLatLngs(Ljava/util/List;)Lorg/maplibre/android/geometry/LatLngBounds;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/maplibre/android/geometry/LatLng;",
            ">;)",
            "Lorg/maplibre/android/geometry/LatLngBounds;"
        }
    .end annotation

    const-string v0, "latLngs"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v1, 0x4056800000000000L    # 90.0

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v5, -0x3fa9800000000000L    # -90.0

    const-wide v7, -0x10000000000001L

    move-wide v14, v1

    move-wide v10, v5

    move-wide v12, v7

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {v1}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v1}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    move-result-wide v1

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    goto :goto_0

    :cond_0
    new-instance v9, Lorg/maplibre/android/geometry/LatLngBounds;

    move-wide/from16 v16, v3

    invoke-direct/range {v9 .. v17}, Lorg/maplibre/android/geometry/LatLngBounds;-><init>(DDDD)V

    return-object v9
.end method

.method public final world()Lorg/maplibre/android/geometry/LatLngBounds;
    .locals 9

    const-wide v5, -0x3fa9800000000000L    # -90.0

    const-wide v7, -0x3f99800000000000L    # -180.0

    const-wide v1, 0x4056800000000000L    # 90.0

    const-wide v3, 0x4066800000000000L    # 180.0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/maplibre/android/geometry/LatLngBounds$Companion;->from(DDDD)Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object p0

    return-object p0
.end method
