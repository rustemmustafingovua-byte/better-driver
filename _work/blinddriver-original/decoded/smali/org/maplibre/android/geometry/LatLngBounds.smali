.class public final Lorg/maplibre/android/geometry/LatLngBounds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/geometry/LatLngBounds$Builder;,
        Lorg/maplibre/android/geometry/LatLngBounds$Companion;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/maplibre/android/geometry/LatLngBounds;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/maplibre/android/geometry/LatLngBounds$Companion;


# instance fields
.field public final latitudeNorth:D
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public final latitudeSouth:D
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public final longitudeEast:D
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public final longitudeWest:D
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/maplibre/android/geometry/LatLngBounds$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/maplibre/android/geometry/LatLngBounds$Companion;-><init>(Lj9/g;)V

    sput-object v0, Lorg/maplibre/android/geometry/LatLngBounds;->Companion:Lorg/maplibre/android/geometry/LatLngBounds$Companion;

    new-instance v0, Lorg/maplibre/android/geometry/LatLngBounds$Companion$CREATOR$1;

    invoke-direct {v0}, Lorg/maplibre/android/geometry/LatLngBounds$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lorg/maplibre/android/geometry/LatLngBounds;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeNorth:D

    iput-wide p3, p0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeEast:D

    iput-wide p5, p0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeSouth:D

    iput-wide p7, p0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeWest:D

    return-void
.end method

.method private final containsLatitude(D)Z
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeNorth:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeSouth:D

    cmpl-double p0, p1, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final containsLongitude(D)Z
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeEast:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeWest:D

    cmpl-double p0, p1, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final from(DDDD)Lorg/maplibre/android/geometry/LatLngBounds;
    .locals 9

    .line 1
    sget-object v0, Lorg/maplibre/android/geometry/LatLngBounds;->Companion:Lorg/maplibre/android/geometry/LatLngBounds$Companion;

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    move-wide v7, p6

    invoke-virtual/range {v0 .. v8}, Lorg/maplibre/android/geometry/LatLngBounds$Companion;->from(DDDD)Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object p0

    return-object p0
.end method

.method public static final from(III)Lorg/maplibre/android/geometry/LatLngBounds;
    .locals 1

    .line 2
    sget-object v0, Lorg/maplibre/android/geometry/LatLngBounds;->Companion:Lorg/maplibre/android/geometry/LatLngBounds$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lorg/maplibre/android/geometry/LatLngBounds$Companion;->from(III)Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object p0

    return-object p0
.end method

.method private final intersectNoParamCheck(DDDD)Lorg/maplibre/android/geometry/LatLngBounds;
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeWest:D

    invoke-static {v0, v1, p7, p8}, Ljava/lang/Math;->max(DD)D

    move-result-wide p7

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeEast:D

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide p3

    cmpl-double v0, p3, p7

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeSouth:D

    invoke-static {v0, v1, p5, p6}, Ljava/lang/Math;->max(DD)D

    move-result-wide p5

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeNorth:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    cmpl-double p0, p1, p5

    if-ltz p0, :cond_0

    new-instance p0, Lorg/maplibre/android/geometry/LatLngBounds;

    invoke-direct/range {p0 .. p8}, Lorg/maplibre/android/geometry/LatLngBounds;-><init>(DDDD)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final unionNoParamCheck(DDDD)Lorg/maplibre/android/geometry/LatLngBounds;
    .locals 4

    move-object v0, p0

    new-instance p0, Lorg/maplibre/android/geometry/LatLngBounds;

    iget-wide v1, v0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeNorth:D

    cmpg-double v3, v1, p1

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, v1

    :goto_0
    iget-wide v1, v0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeEast:D

    cmpg-double v3, v1, p3

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    move-wide p3, v1

    :goto_1
    iget-wide v1, v0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeSouth:D

    cmpl-double v3, v1, p5

    if-lez v3, :cond_2

    goto :goto_2

    :cond_2
    move-wide p5, v1

    :goto_2
    iget-wide v0, v0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeWest:D

    cmpl-double v2, v0, p7

    if-lez v2, :cond_3

    goto :goto_3

    :cond_3
    move-wide p7, v0

    :goto_3
    invoke-direct/range {p0 .. p8}, Lorg/maplibre/android/geometry/LatLngBounds;-><init>(DDDD)V

    return-object p0
.end method

.method public static final world()Lorg/maplibre/android/geometry/LatLngBounds;
    .locals 1

    sget-object v0, Lorg/maplibre/android/geometry/LatLngBounds;->Companion:Lorg/maplibre/android/geometry/LatLngBounds$Companion;

    invoke-virtual {v0}, Lorg/maplibre/android/geometry/LatLngBounds$Companion;->world()Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final contains(Lorg/maplibre/android/geometry/LatLng;)Z
    .locals 2

    const-string v0, "latLng"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/maplibre/android/geometry/LatLngBounds;->containsLatitude(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/maplibre/android/geometry/LatLngBounds;->containsLongitude(D)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final contains(Lorg/maplibre/android/geometry/LatLngBounds;)Z
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lorg/maplibre/android/geometry/LatLngBounds;->getNorthEast()Lorg/maplibre/android/geometry/LatLng;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/geometry/LatLngBounds;->contains(Lorg/maplibre/android/geometry/LatLng;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/maplibre/android/geometry/LatLngBounds;->getSouthWest()Lorg/maplibre/android/geometry/LatLng;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/geometry/LatLngBounds;->contains(Lorg/maplibre/android/geometry/LatLng;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

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
    instance-of v1, p1, Lorg/maplibre/android/geometry/LatLngBounds;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeNorth:D

    check-cast p1, Lorg/maplibre/android/geometry/LatLngBounds;

    iget-wide v5, p1, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeNorth:D

    cmpg-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeSouth:D

    iget-wide v5, p1, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeSouth:D

    cmpg-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeEast:D

    iget-wide v5, p1, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeEast:D

    cmpg-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeWest:D

    iget-wide p0, p1, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeWest:D

    cmpg-double p0, v3, p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final getCenter()Lorg/maplibre/android/geometry/LatLng;
    .locals 8

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeNorth:D

    iget-wide v2, p0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeSouth:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    iget-wide v4, p0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeEast:D

    iget-wide v6, p0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeWest:D

    add-double/2addr v4, v6

    div-double/2addr v4, v2

    new-instance p0, Lorg/maplibre/android/geometry/LatLng;

    invoke-direct {p0, v0, v1, v4, v5}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    return-object p0
.end method

.method public final getLatNorth()D
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeNorth:D

    return-wide v0
.end method

.method public final getLatSouth()D
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeSouth:D

    return-wide v0
.end method

.method public final getLatitudeSpan()D
    .locals 4

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeNorth:D

    iget-wide v2, p0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeSouth:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getLonEast()D
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeEast:D

    return-wide v0
.end method

.method public final getLonWest()D
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeWest:D

    return-wide v0
.end method

.method public final getLongitudeSpan()D
    .locals 4

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeEast:D

    iget-wide v2, p0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeWest:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getNorthEast()Lorg/maplibre/android/geometry/LatLng;
    .locals 5

    new-instance v0, Lorg/maplibre/android/geometry/LatLng;

    iget-wide v1, p0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeNorth:D

    iget-wide v3, p0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeEast:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public final getNorthWest()Lorg/maplibre/android/geometry/LatLng;
    .locals 5

    new-instance v0, Lorg/maplibre/android/geometry/LatLng;

    iget-wide v1, p0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeNorth:D

    iget-wide v3, p0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeWest:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public final getSouthEast()Lorg/maplibre/android/geometry/LatLng;
    .locals 5

    new-instance v0, Lorg/maplibre/android/geometry/LatLng;

    iget-wide v1, p0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeSouth:D

    iget-wide v3, p0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeEast:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public final getSouthWest()Lorg/maplibre/android/geometry/LatLng;
    .locals 5

    new-instance v0, Lorg/maplibre/android/geometry/LatLng;

    iget-wide v1, p0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeSouth:D

    iget-wide v3, p0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeWest:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public final getSpan()Lorg/maplibre/android/geometry/LatLngSpan;
    .locals 5

    new-instance v0, Lorg/maplibre/android/geometry/LatLngSpan;

    invoke-virtual {p0}, Lorg/maplibre/android/geometry/LatLngBounds;->getLatitudeSpan()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/maplibre/android/geometry/LatLngBounds;->getLongitudeSpan()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/maplibre/android/geometry/LatLngSpan;-><init>(DD)V

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeNorth:D

    const/16 v2, 0x5a

    int-to-double v2, v2

    add-double/2addr v0, v2

    iget-wide v4, p0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeSouth:D

    add-double/2addr v4, v2

    const/16 v2, 0x3e8

    int-to-double v2, v2

    mul-double/2addr v4, v2

    add-double/2addr v4, v0

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeEast:D

    const/16 v2, 0xb4

    int-to-double v2, v2

    add-double/2addr v0, v2

    const v6, 0xf4240

    int-to-double v6, v6

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    iget-wide v4, p0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeWest:D

    add-double/2addr v4, v2

    const p0, 0x3b9aca00

    int-to-double v2, p0

    mul-double/2addr v4, v2

    add-double/2addr v4, v0

    double-to-int p0, v4

    return p0
.end method

.method public final include(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/geometry/LatLngBounds;
    .locals 2

    const-string v0, "latLng"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/maplibre/android/geometry/LatLngBounds$Builder;

    invoke-direct {v0}, Lorg/maplibre/android/geometry/LatLngBounds$Builder;-><init>()V

    invoke-virtual {p0}, Lorg/maplibre/android/geometry/LatLngBounds;->getNorthEast()Lorg/maplibre/android/geometry/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/geometry/LatLngBounds$Builder;->include(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/geometry/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/maplibre/android/geometry/LatLngBounds;->getSouthWest()Lorg/maplibre/android/geometry/LatLng;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/maplibre/android/geometry/LatLngBounds$Builder;->include(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/geometry/LatLngBounds$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/geometry/LatLngBounds$Builder;->include(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/geometry/LatLngBounds$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/geometry/LatLngBounds$Builder;->build()Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object p0

    return-object p0
.end method

.method public final intersect(DDDD)Lorg/maplibre/android/geometry/LatLngBounds;
    .locals 9

    .line 2
    sget-object v0, Lorg/maplibre/android/geometry/LatLngBounds;->Companion:Lorg/maplibre/android/geometry/LatLngBounds$Companion;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lorg/maplibre/android/geometry/LatLngBounds$Companion;->access$checkParams(Lorg/maplibre/android/geometry/LatLngBounds$Companion;DDDD)V

    .line 3
    invoke-direct/range {p0 .. p8}, Lorg/maplibre/android/geometry/LatLngBounds;->intersectNoParamCheck(DDDD)Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object p0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final intersect(Lorg/maplibre/android/geometry/LatLngBounds;)Lorg/maplibre/android/geometry/LatLngBounds;
    .locals 10

    const-string v0, "box"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v2, p1, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeNorth:D

    iget-wide v4, p1, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeEast:D

    iget-wide v6, p1, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeSouth:D

    iget-wide v8, p1, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeWest:D

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lorg/maplibre/android/geometry/LatLngBounds;->intersectNoParamCheck(DDDD)Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object p0

    return-object p0
.end method

.method public final isEmptySpan()Z
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/geometry/LatLngBounds;->getLongitudeSpan()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/android/geometry/LatLngBounds;->getLatitudeSpan()D

    move-result-wide v0

    cmpg-double p0, v0, v2

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final toLatLngs()[Lorg/maplibre/android/geometry/LatLng;
    .locals 1

    invoke-virtual {p0}, Lorg/maplibre/android/geometry/LatLngBounds;->getNorthEast()Lorg/maplibre/android/geometry/LatLng;

    move-result-object v0

    invoke-virtual {p0}, Lorg/maplibre/android/geometry/LatLngBounds;->getSouthWest()Lorg/maplibre/android/geometry/LatLng;

    move-result-object p0

    filled-new-array {v0, p0}, [Lorg/maplibre/android/geometry/LatLng;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeNorth:D

    iget-wide v2, p0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeEast:D

    iget-wide v4, p0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeSouth:D

    iget-wide v6, p0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeWest:D

    const-string p0, "N:"

    const-string v8, "; E:"

    invoke-static {v0, v1, p0, v8}, La6/q;->l(DLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "; S:"

    const-string v1, "; W:"

    invoke-static {p0, v0, v4, v5, v1}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final union(DDDD)Lorg/maplibre/android/geometry/LatLngBounds;
    .locals 9

    .line 2
    sget-object v0, Lorg/maplibre/android/geometry/LatLngBounds;->Companion:Lorg/maplibre/android/geometry/LatLngBounds$Companion;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lorg/maplibre/android/geometry/LatLngBounds$Companion;->access$checkParams(Lorg/maplibre/android/geometry/LatLngBounds$Companion;DDDD)V

    .line 3
    invoke-direct/range {p0 .. p8}, Lorg/maplibre/android/geometry/LatLngBounds;->unionNoParamCheck(DDDD)Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object p0

    return-object p0
.end method

.method public final union(Lorg/maplibre/android/geometry/LatLngBounds;)Lorg/maplibre/android/geometry/LatLngBounds;
    .locals 10

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v2, p1, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeNorth:D

    iget-wide v4, p1, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeEast:D

    iget-wide v6, p1, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeSouth:D

    iget-wide v8, p1, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeWest:D

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lorg/maplibre/android/geometry/LatLngBounds;->unionNoParamCheck(DDDD)Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "out"

    invoke-static {p1, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeNorth:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeEast:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeSouth:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeWest:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
