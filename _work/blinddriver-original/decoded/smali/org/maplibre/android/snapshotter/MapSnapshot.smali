.class public final Lorg/maplibre/android/snapshotter/MapSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final attributions:[Ljava/lang/String;

.field private final bitmap:Landroid/graphics/Bitmap;

.field private final isShowAttribution:Z

.field private final isShowLogo:Z

.field private final nativePtr:J


# direct methods
.method private constructor <init>(JLandroid/graphics/Bitmap;[Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/maplibre/android/snapshotter/MapSnapshot;->nativePtr:J

    iput-object p3, p0, Lorg/maplibre/android/snapshotter/MapSnapshot;->bitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lorg/maplibre/android/snapshotter/MapSnapshot;->attributions:[Ljava/lang/String;

    iput-boolean p5, p0, Lorg/maplibre/android/snapshotter/MapSnapshot;->isShowLogo:Z

    iput-boolean p6, p0, Lorg/maplibre/android/snapshotter/MapSnapshot;->isShowAttribution:Z

    return-void
.end method

.method private final native initialize()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method


# virtual methods
.method public final native finalize()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final getAttributions()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshot;->attributions:[Ljava/lang/String;

    return-object p0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshot;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lorg/maplibre/android/snapshotter/MapSnapshot;->nativePtr:J

    return-wide v0
.end method

.method public final isShowAttribution()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshot;->isShowAttribution:Z

    return p0
.end method

.method public final isShowLogo()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshot;->isShowLogo:Z

    return p0
.end method

.method public final native latLngForPixel(Landroid/graphics/PointF;)Lorg/maplibre/android/geometry/LatLng;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final native pixelForLatLng(Lorg/maplibre/android/geometry/LatLng;)Landroid/graphics/PointF;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method
