.class public final Lorg/maplibre/android/camera/CameraUpdateFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;,
        Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;,
        Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/maplibre/android/camera/CameraUpdateFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/maplibre/android/camera/CameraUpdateFactory;

    invoke-direct {v0}, Lorg/maplibre/android/camera/CameraUpdateFactory;-><init>()V

    sput-object v0, Lorg/maplibre/android/camera/CameraUpdateFactory;->INSTANCE:Lorg/maplibre/android/camera/CameraUpdateFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final bearingTo(D)Lorg/maplibre/android/camera/CameraUpdate;
    .locals 15

    new-instance v0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    const/4 v14, 0x0

    const/4 v3, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    move-wide v1, p0

    invoke-direct/range {v0 .. v14}, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;-><init>(DLorg/maplibre/android/geometry/LatLng;DDDDD[D)V

    return-object v0
.end method

.method public static final newCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)Lorg/maplibre/android/camera/CameraUpdate;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "cameraPosition"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;

    iget-wide v3, v0, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    iget-object v5, v0, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    iget-wide v6, v0, Lorg/maplibre/android/camera/CameraPosition;->centerAltitude:D

    iget-wide v8, v0, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    iget-wide v10, v0, Lorg/maplibre/android/camera/CameraPosition;->roll:D

    iget-wide v12, v0, Lorg/maplibre/android/camera/CameraPosition;->fov:D

    iget-wide v14, v0, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    iget-object v0, v0, Lorg/maplibre/android/camera/CameraPosition;->padding:[D

    move-object/from16 v16, v0

    invoke-direct/range {v2 .. v16}, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;-><init>(DLorg/maplibre/android/geometry/LatLng;DDDDD[D)V

    return-object v2
.end method

.method public static final newLatLng(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/camera/CameraUpdate;
    .locals 16

    const-string v0, "latLng"

    move-object/from16 v4, p0

    invoke-static {v4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    const/4 v15, 0x0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    invoke-direct/range {v1 .. v15}, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;-><init>(DLorg/maplibre/android/geometry/LatLng;DDDDD[D)V

    return-object v1
.end method

.method public static final newLatLngBounds(Lorg/maplibre/android/geometry/LatLngBounds;DDI)Lorg/maplibre/android/camera/CameraUpdate;
    .locals 10

    const-string v0, "bounds"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move v7, p5

    move v8, p5

    move v9, p5

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 2
    invoke-static/range {v1 .. v9}, Lorg/maplibre/android/camera/CameraUpdateFactory;->newLatLngBounds(Lorg/maplibre/android/geometry/LatLngBounds;DDIIII)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object p0

    return-object p0
.end method

.method public static final newLatLngBounds(Lorg/maplibre/android/geometry/LatLngBounds;DDIIII)Lorg/maplibre/android/camera/CameraUpdate;
    .locals 2

    const-string v0, "bounds"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide v0, p1

    move-object p1, p0

    .line 4
    new-instance p0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    move p4, p5

    move p5, p6

    move p6, p7

    move p7, p8

    invoke-direct/range {p0 .. p7}, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;-><init>(Lorg/maplibre/android/geometry/LatLngBounds;Ljava/lang/Double;Ljava/lang/Double;IIII)V

    return-object p0
.end method

.method public static final newLatLngBounds(Lorg/maplibre/android/geometry/LatLngBounds;I)Lorg/maplibre/android/camera/CameraUpdate;
    .locals 1

    const-string v0, "bounds"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p1, p1, p1}, Lorg/maplibre/android/camera/CameraUpdateFactory;->newLatLngBounds(Lorg/maplibre/android/geometry/LatLngBounds;IIII)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object p0

    return-object p0
.end method

.method public static final newLatLngBounds(Lorg/maplibre/android/geometry/LatLngBounds;IIII)Lorg/maplibre/android/camera/CameraUpdate;
    .locals 9

    const-string v0, "bounds"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraBoundsUpdate;-><init>(Lorg/maplibre/android/geometry/LatLngBounds;Ljava/lang/Double;Ljava/lang/Double;IIII)V

    return-object v1
.end method

.method public static final newLatLngPadding(Lorg/maplibre/android/geometry/LatLng;DDDD)Lorg/maplibre/android/camera/CameraUpdate;
    .locals 16

    const-string v0, "latLng"

    move-object/from16 v4, p0

    invoke-static {v4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;

    const/4 v0, 0x4

    new-array v15, v0, [D

    const/4 v0, 0x0

    aput-wide p1, v15, v0

    const/4 v0, 0x1

    aput-wide p3, v15, v0

    const/4 v0, 0x2

    aput-wide p5, v15, v0

    const/4 v0, 0x3

    aput-wide p7, v15, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-direct/range {v1 .. v15}, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;-><init>(DLorg/maplibre/android/geometry/LatLng;DDDDD[D)V

    return-object v1
.end method

.method public static final newLatLngZoom(Lorg/maplibre/android/geometry/LatLng;D)Lorg/maplibre/android/camera/CameraUpdate;
    .locals 16

    const-string v0, "latLng"

    move-object/from16 v4, p0

    invoke-static {v4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    const/4 v15, 0x0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    move-wide/from16 v13, p1

    invoke-direct/range {v1 .. v15}, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;-><init>(DLorg/maplibre/android/geometry/LatLng;DDDDD[D)V

    return-object v1
.end method

.method public static final paddingTo(DDDD)Lorg/maplibre/android/camera/CameraUpdate;
    .locals 2

    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    const/4 p0, 0x1

    aput-wide p2, v0, p0

    const/4 p0, 0x2

    aput-wide p4, v0, p0

    const/4 p0, 0x3

    aput-wide p6, v0, p0

    invoke-static {v0}, Lorg/maplibre/android/camera/CameraUpdateFactory;->paddingTo([D)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object p0

    return-object p0
.end method

.method public static final paddingTo([D)Lorg/maplibre/android/camera/CameraUpdate;
    .locals 15

    .line 1
    new-instance v0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const/4 v3, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    move-object v14, p0

    invoke-direct/range {v0 .. v14}, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;-><init>(DLorg/maplibre/android/geometry/LatLng;DDDDD[D)V

    return-object v0
.end method

.method public static final tiltTo(D)Lorg/maplibre/android/camera/CameraUpdate;
    .locals 15

    new-instance v0, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    const/4 v14, 0x0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const/4 v3, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    move-wide v6, p0

    invoke-direct/range {v0 .. v14}, Lorg/maplibre/android/camera/CameraUpdateFactory$CameraPositionUpdate;-><init>(DLorg/maplibre/android/geometry/LatLng;DDDDD[D)V

    return-object v0
.end method

.method public static final zoomBy(D)Lorg/maplibre/android/camera/CameraUpdate;
    .locals 2

    .line 2
    new-instance v0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;-><init>(ID)V

    return-object v0
.end method

.method public static final zoomBy(DLandroid/graphics/Point;)Lorg/maplibre/android/camera/CameraUpdate;
    .locals 2

    const-string v0, "focus"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;

    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;-><init>(DFF)V

    return-object v0
.end method

.method public static final zoomIn()Lorg/maplibre/android/camera/CameraUpdate;
    .locals 2

    new-instance v0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;-><init>(I)V

    return-object v0
.end method

.method public static final zoomOut()Lorg/maplibre/android/camera/CameraUpdate;
    .locals 2

    new-instance v0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;-><init>(I)V

    return-object v0
.end method

.method public static final zoomTo(D)Lorg/maplibre/android/camera/CameraUpdate;
    .locals 2

    new-instance v0, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1}, Lorg/maplibre/android/camera/CameraUpdateFactory$ZoomUpdate;-><init>(ID)V

    return-object v0
.end method
