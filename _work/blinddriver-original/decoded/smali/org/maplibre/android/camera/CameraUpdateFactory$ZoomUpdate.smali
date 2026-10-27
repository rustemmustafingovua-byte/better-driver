.class public final Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/camera/CameraUpdate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/camera/CameraUpdateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ZoomUpdate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate$Companion;,
        Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate$Type;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate$Companion;

.field public static final ZOOM_BY:I = 0x2

.field public static final ZOOM_IN:I = 0x0

.field public static final ZOOM_OUT:I = 0x1

.field public static final ZOOM_TO:I = 0x3

.field public static final ZOOM_TO_POINT:I = 0x4


# instance fields
.field private final type:I

.field private x:F

.field private y:F

.field private final zoom:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate$Companion;-><init>(Lj9/g;)V

    sput-object v0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->Companion:Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate$Companion;

    return-void
.end method

.method public constructor <init>(DFF)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 8
    iput v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->type:I

    .line 9
    iput-wide p1, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->zoom:D

    .line 10
    iput p3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->x:F

    .line 11
    iput p4, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->y:F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->type:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->zoom:D

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->type:I

    .line 6
    iput-wide p2, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->zoom:D

    return-void
.end method

.method public static synthetic getType$annotations()V
    .locals 0

    return-void
.end method

.method private final transformZoom(D)D
    .locals 2

    iget v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->type:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    sget-object p0, Lrc/b;->a:Lrc/a;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lrc/a;->b([Ljava/lang/Object;)V

    const-wide/high16 p0, 0x4010000000000000L    # 4.0

    return-wide p0

    :cond_0
    iget-wide p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->zoom:D

    return-wide p0

    :cond_1
    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->zoom:D

    :goto_0
    add-double/2addr p1, v0

    return-wide p1

    :cond_2
    int-to-double v0, v1

    sub-double/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->max(DD)D

    move-result-wide p0

    return-wide p0

    :cond_3
    int-to-double v0, v1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const-class v2, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;

    iget v2, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->type:I

    iget v3, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->type:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-wide v2, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->zoom:D

    iget-wide v4, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->zoom:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget v2, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->x:F

    iget v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->x:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    iget p1, p1, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->y:F

    iget p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->y:F

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_5

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public getCameraPosition(Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/camera/CameraPosition;
    .locals 4

    const-string v0, "maplibreMap"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v0

    const-string v1, "getCameraPosition(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->type:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    new-instance p1, Lorg/maplibre/android/camera/CameraPosition$Builder;

    invoke-direct {p1, v0}, Lorg/maplibre/android/camera/CameraPosition$Builder;-><init>(Lorg/maplibre/android/camera/CameraPosition;)V

    iget-wide v0, v0, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    invoke-direct {p0, v0, v1}, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->transformZoom(D)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/maplibre/android/camera/CameraPosition$Builder;->zoom(D)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/camera/CameraPosition$Builder;->build()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Lorg/maplibre/android/camera/CameraPosition$Builder;

    invoke-direct {v1, v0}, Lorg/maplibre/android/camera/CameraPosition$Builder;-><init>(Lorg/maplibre/android/camera/CameraPosition;)V

    iget-wide v2, v0, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    invoke-direct {p0, v2, v3}, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->transformZoom(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/maplibre/android/camera/CameraPosition$Builder;->zoom(D)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMap;->getProjection()Lorg/maplibre/android/maps/Projection;

    move-result-object p1

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->x:F

    iget p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->y:F

    invoke-direct {v1, v2, p0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v1}, Lorg/maplibre/android/maps/Projection;->fromScreenLocation(Landroid/graphics/PointF;)Lorg/maplibre/android/geometry/LatLng;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/maplibre/android/camera/CameraPosition$Builder;->target(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/camera/CameraPosition$Builder;->build()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p0

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->type:I

    return p0
.end method

.method public final getX()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->x:F

    return p0
.end method

.method public final getY()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->y:F

    return p0
.end method

.method public final getZoom()D
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->zoom:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->type:I

    iget-wide v1, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->zoom:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    mul-int/lit8 v0, v0, 0x1f

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->x:F

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->y:F

    cmpg-float v1, p0, v2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    :goto_1
    add-int/2addr v0, v4

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->type:I

    iget-wide v1, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->zoom:D

    iget v3, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->x:F

    iget p0, p0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;->y:F

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ZoomUpdate{type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", zoom="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", x="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", y="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
