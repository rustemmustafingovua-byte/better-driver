.class public final Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/snapshotter/MapSnapshotter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Options"
.end annotation


# instance fields
.field private apiBaseUri:Ljava/lang/String;

.field private builder:Lorg/maplibre/android/maps/Style$Builder;

.field private cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

.field private final height:I

.field private localIdeographFontFamily:Ljava/lang/String;

.field private pixelRatio:F

.field private region:Lorg/maplibre/android/geometry/LatLngBounds;

.field private regionPadding:[I

.field private showAttribution:Z

.field private showLogo:Z

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->pixelRatio:F

    const/4 v0, 0x0

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->regionPadding:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->showLogo:Z

    iput-boolean v0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->showAttribution:Z

    const-string v0, "sans-serif"

    iput-object v0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->localIdeographFontFamily:Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput p1, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->width:I

    iput p2, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->height:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to create a snapshot with width or height set to 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getApiBaseUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->apiBaseUri:Ljava/lang/String;

    return-object p0
.end method

.method public final getBuilder()Lorg/maplibre/android/maps/Style$Builder;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->builder:Lorg/maplibre/android/maps/Style$Builder;

    return-object p0
.end method

.method public final getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    return-object p0
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->height:I

    return p0
.end method

.method public final getLocalIdeographFontFamily()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->localIdeographFontFamily:Ljava/lang/String;

    return-object p0
.end method

.method public final getPixelRatio()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->pixelRatio:F

    return p0
.end method

.method public final getRegion()Lorg/maplibre/android/geometry/LatLngBounds;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->region:Lorg/maplibre/android/geometry/LatLngBounds;

    return-object p0
.end method

.method public final getRegionPadding()[I
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->regionPadding:[I

    return-object p0
.end method

.method public final getShowAttribution()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->showAttribution:Z

    return p0
.end method

.method public final getShowLogo()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->showLogo:Z

    return p0
.end method

.method public final getStyleJson()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->builder:Lorg/maplibre/android/maps/Style$Builder;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Style$Builder;->getJson()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getStyleUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->builder:Lorg/maplibre/android/maps/Style$Builder;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Style$Builder;->getUri()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getStyleUrl()Ljava/lang/String;
    .locals 0
    .annotation runtime Lt8/c;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->builder:Lorg/maplibre/android/maps/Style$Builder;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Style$Builder;->getUri()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->width:I

    return p0
.end method

.method public final setShowAttribution(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->showAttribution:Z

    return-void
.end method

.method public final setShowLogo(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->showLogo:Z

    return-void
.end method

.method public final withApiBaseUri(Ljava/lang/String;)Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->apiBaseUri:Ljava/lang/String;

    return-object p0
.end method

.method public final withApiBaseUrl(Ljava/lang/String;)Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;
    .locals 0
    .annotation runtime Lt8/c;
    .end annotation

    iput-object p1, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->apiBaseUri:Ljava/lang/String;

    return-object p0
.end method

.method public final withAttribution(Z)Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->showAttribution:Z

    return-object p0
.end method

.method public final withCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    return-object p0
.end method

.method public final withLocalIdeographFontFamily(Ljava/lang/String;)Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;
    .locals 1

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/maplibre/android/utils/FontUtils;->extractValidFont([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "extractValidFont(...)"

    invoke-static {p1, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->localIdeographFontFamily:Ljava/lang/String;

    return-object p0
.end method

.method public final varargs withLocalIdeographFontFamily([Ljava/lang/String;)Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;
    .locals 1

    const-string v0, "fontFamilies"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lorg/maplibre/android/utils/FontUtils;->extractValidFont([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "extractValidFont(...)"

    invoke-static {p1, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->localIdeographFontFamily:Ljava/lang/String;

    return-object p0
.end method

.method public final withLogo(Z)Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->showLogo:Z

    return-object p0
.end method

.method public final withPadding(IIII)Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;
    .locals 0

    filled-new-array {p1, p2, p3, p4}, [I

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->regionPadding:[I

    return-object p0
.end method

.method public final withPixelRatio(F)Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;
    .locals 0

    iput p1, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->pixelRatio:F

    return-object p0
.end method

.method public final withRegion(Lorg/maplibre/android/geometry/LatLngBounds;)Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->region:Lorg/maplibre/android/geometry/LatLngBounds;

    return-object p0
.end method

.method public final withStyle(Ljava/lang/String;)Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;
    .locals 1
    .annotation runtime Lt8/c;
    .end annotation

    new-instance v0, Lorg/maplibre/android/maps/Style$Builder;

    invoke-direct {v0}, Lorg/maplibre/android/maps/Style$Builder;-><init>()V

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lorg/maplibre/android/maps/Style$Builder;->fromUri(Ljava/lang/String;)Lorg/maplibre/android/maps/Style$Builder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->withStyleBuilder(Lorg/maplibre/android/maps/Style$Builder;)Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;

    return-object p0
.end method

.method public final withStyleBuilder(Lorg/maplibre/android/maps/Style$Builder;)Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->builder:Lorg/maplibre/android/maps/Style$Builder;

    return-object p0
.end method

.method public final withStyleJson(Ljava/lang/String;)Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;
    .locals 1
    .annotation runtime Lt8/c;
    .end annotation

    new-instance v0, Lorg/maplibre/android/maps/Style$Builder;

    invoke-direct {v0}, Lorg/maplibre/android/maps/Style$Builder;-><init>()V

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lorg/maplibre/android/maps/Style$Builder;->fromJson(Ljava/lang/String;)Lorg/maplibre/android/maps/Style$Builder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->withStyleBuilder(Lorg/maplibre/android/maps/Style$Builder;)Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;

    return-object p0
.end method
