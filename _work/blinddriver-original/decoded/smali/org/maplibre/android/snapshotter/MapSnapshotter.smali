.class public Lorg/maplibre/android/snapshotter/MapSnapshotter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/snapshotter/MapSnapshotter$Companion;,
        Lorg/maplibre/android/snapshotter/MapSnapshotter$ErrorHandler;,
        Lorg/maplibre/android/snapshotter/MapSnapshotter$Logo;,
        Lorg/maplibre/android/snapshotter/MapSnapshotter$Observer;,
        Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;,
        Lorg/maplibre/android/snapshotter/MapSnapshotter$SnapshotReadyCallback;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/maplibre/android/snapshotter/MapSnapshotter$Companion;

.field private static final LOGO_MARGIN_DP:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Mbgl-MapSnapshotter"


# instance fields
.field private callback:Lorg/maplibre/android/snapshotter/MapSnapshotter$SnapshotReadyCallback;

.field private final context:Landroid/content/Context;

.field private errorHandler:Lorg/maplibre/android/snapshotter/MapSnapshotter$ErrorHandler;

.field private fullyLoaded:Z

.field private final nativePtr:J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private observer:Lorg/maplibre/android/snapshotter/MapSnapshotter$Observer;

.field private final options:Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/maplibre/android/snapshotter/MapSnapshotter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Companion;-><init>(Lj9/g;)V

    sput-object v0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->Companion:Lorg/maplibre/android/snapshotter/MapSnapshotter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "options"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->checkThread()V

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "getApplicationContext(...)"

    invoke-static {v2, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->context:Landroid/content/Context;

    iput-object v1, v0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->options:Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;

    invoke-static {v3}, Lorg/maplibre/android/storage/FileSource;->getInstance(Landroid/content/Context;)Lorg/maplibre/android/storage/FileSource;

    move-result-object v2

    invoke-virtual {v1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->getApiBaseUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Lorg/maplibre/android/storage/FileSource;->setApiBaseUrl(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->getPixelRatio()F

    move-result v3

    invoke-virtual {v1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->getStyleUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->getStyleJson()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->getRegion()Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object v8

    invoke-virtual {v1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v9

    invoke-virtual {v1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->getShowLogo()Z

    move-result v10

    invoke-virtual {v1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->getShowAttribution()Z

    move-result v11

    invoke-virtual {v1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->getLocalIdeographFontFamily()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->getRegionPadding()[I

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    int-to-float v13, v13

    invoke-virtual {v1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->getPixelRatio()F

    move-result v14

    div-float/2addr v13, v14

    invoke-virtual {v1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->getRegionPadding()[I

    move-result-object v14

    const/4 v15, 0x1

    aget v14, v14, v15

    int-to-float v14, v14

    invoke-virtual {v1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->getPixelRatio()F

    move-result v15

    div-float/2addr v14, v15

    invoke-virtual {v1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->getRegionPadding()[I

    move-result-object v15

    const/16 v16, 0x2

    aget v15, v15, v16

    int-to-float v15, v15

    invoke-virtual {v1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->getPixelRatio()F

    move-result v16

    div-float v15, v15, v16

    invoke-virtual {v1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->getRegionPadding()[I

    move-result-object v16

    const/16 v17, 0x3

    aget v0, v16, v17

    int-to-float v0, v0

    invoke-virtual {v1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->getPixelRatio()F

    move-result v1

    div-float v16, v0, v1

    move-object/from16 v1, p0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v16}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->nativeInitialize(Lorg/maplibre/android/snapshotter/MapSnapshotter;Lorg/maplibre/android/storage/FileSource;FIILjava/lang/String;Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngBounds;Lorg/maplibre/android/camera/CameraPosition;ZZLjava/lang/String;FFFF)V

    return-void
.end method

.method public static synthetic a(Lorg/maplibre/android/snapshotter/MapSnapshotter;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->onSnapshotFailed$lambda$2(Lorg/maplibre/android/snapshotter/MapSnapshotter;Ljava/lang/String;)V

    return-void
.end method

.method private final addLayerAbove(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/Layer;->getNativePtr()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->nativeAddLayerAbove(JLjava/lang/String;)V

    return-void
.end method

.method private final addLayerAt(Lorg/maplibre/android/style/layers/Layer;I)V
    .locals 2

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/Layer;->getNativePtr()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->nativeAddLayerAt(JI)V

    return-void
.end method

.method private final addLayerBelow(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/Layer;->getNativePtr()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->nativeAddLayerBelow(JLjava/lang/String;)V

    return-void
.end method

.method private final addSource(Lorg/maplibre/android/style/sources/Source;)V
    .locals 2

    invoke-virtual {p1}, Lorg/maplibre/android/style/sources/Source;->getNativePtr()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->nativeAddSource(Lorg/maplibre/android/style/sources/Source;J)V

    return-void
.end method

.method public static synthetic b(Lorg/maplibre/android/snapshotter/MapSnapshotter;Lorg/maplibre/android/snapshotter/MapSnapshot;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->onSnapshotReady$lambda$1(Lorg/maplibre/android/snapshotter/MapSnapshotter;Lorg/maplibre/android/snapshotter/MapSnapshot;)V

    return-void
.end method

.method private final calculateLogoScale(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)F
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/2addr p0, p1

    int-to-float p0, p0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x2

    int-to-float p1, p1

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p2, p0, p1

    if-lez p2, :cond_0

    return p1

    :cond_0
    const p1, 0x3f19999a    # 0.6f

    cmpg-float p2, p0, p1

    if-gez p2, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method private final checkThread()V
    .locals 0

    const-string p0, "Mbgl-MapSnapshotter"

    invoke-static {p0}, Lorg/maplibre/android/utils/ThreadUtils;->checkThread(Ljava/lang/String;)V

    return-void
.end method

.method private final createAttributionString(Lorg/maplibre/android/snapshotter/MapSnapshot;Z)Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/maplibre/android/attribution/AttributionParser$Options;

    iget-object p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lorg/maplibre/android/attribution/AttributionParser$Options;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lorg/maplibre/android/snapshotter/MapSnapshot;->getAttributions()[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/maplibre/android/attribution/AttributionParser$Options;->withAttributionData([Ljava/lang/String;)Lorg/maplibre/android/attribution/AttributionParser$Options;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/attribution/AttributionParser$Options;->withCopyrightSign(Z)Lorg/maplibre/android/attribution/AttributionParser$Options;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/attribution/AttributionParser$Options;->withImproveMap(Z)Lorg/maplibre/android/attribution/AttributionParser$Options;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/attribution/AttributionParser$Options;->build()Lorg/maplibre/android/attribution/AttributionParser;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/maplibre/android/attribution/AttributionParser;->createAttributionString(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "createAttributionString(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final createScaledLogo(Landroid/graphics/Bitmap;)Lorg/maplibre/android/snapshotter/MapSnapshotter$Logo;
    .locals 11

    iget-object v0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/maplibre/android/R$drawable;->maplibre_logo_icon:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v1, v4, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {v0, v1, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bitmap is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v9, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, v5, v6, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object v0, v8

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v3}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->calculateLogoScale(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)F

    move-result p1

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v8, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/maplibre/android/R$drawable;->maplibre_logo_helmet:I

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "createBitmap(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    move-object v9, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lorg/maplibre/android/snapshotter/MapSnapshotter$Logo;

    invoke-direct {v2, p0, v1, v0, p1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Logo;-><init>(Lorg/maplibre/android/snapshotter/MapSnapshotter;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V

    return-object v2
.end method

.method private final createTextView(Lorg/maplibre/android/snapshotter/MapSnapshot;ZF)Landroid/widget/TextView;
    .locals 7

    iget-object v0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/maplibre/android/R$color;->maplibre_gray_dark:I

    iget-object v2, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lk3/d;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v5, 0xa

    int-to-float v5, v5

    mul-float/2addr v5, p3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget p3, Lorg/maplibre/android/R$drawable;->maplibre_rounded_corner:I

    invoke-virtual {v4, p3}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->createAttributionString(Lorg/maplibre/android/snapshotter/MapSnapshot;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-static {p1, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Attribution string is empty. Make sure you provide your own attribution for the used sources if needed."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mbgl-MapSnapshotter"

    invoke-static {p2, p1}, Lorg/maplibre/android/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/widget/TextView;

    iget-object p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->context:Landroid/content/Context;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    invoke-static {p1}, Lorg/maplibre/android/snapshotter/MapSnapshotterKt;->fromHTML(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {v4, v1, v1, p0, p1}, Landroid/view/View;->layout(IIII)V

    return-object v4
.end method

.method private final drawAttribution(Landroid/graphics/Canvas;Lorg/maplibre/android/attribution/AttributionMeasure;Landroid/graphics/PointF;)V
    .locals 0

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 15
    iget p0, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16
    invoke-virtual {p2}, Lorg/maplibre/android/attribution/AttributionMeasure;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private final drawAttribution(Lorg/maplibre/android/snapshotter/MapSnapshot;Landroid/graphics/Canvas;Lorg/maplibre/android/attribution/AttributionMeasure;Lorg/maplibre/android/attribution/AttributionLayout;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/maplibre/android/snapshotter/MapSnapshot;->isShowAttribution()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p4}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p4}, Lorg/maplibre/android/attribution/AttributionLayout;->getAnchorPoint()Landroid/graphics/PointF;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 3
    invoke-direct {p0, p2, p3, p4}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->drawAttribution(Landroid/graphics/Canvas;Lorg/maplibre/android/attribution/AttributionMeasure;Landroid/graphics/PointF;)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Lorg/maplibre/android/snapshotter/MapSnapshot;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Lorg/maplibre/android/snapshotter/MapSnapshot;->getAttributions()[Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    const/16 p4, 0x3f

    invoke-static {p4, p3, p1}, Lu8/l;->y0(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, " x "

    const-string p4, ". You are required to provide your own attribution for the used sources: "

    .line 6
    const-string v0, "Could not generate attribution for snapshot size: "

    invoke-static {v0, p2, p3, p0, p4}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Mbgl-MapSnapshotter"

    invoke-static {p1, p0}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final drawLogo(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;ILorg/maplibre/android/attribution/AttributionLayout;)V
    .locals 1

    .line 3
    invoke-virtual {p4}, Lorg/maplibre/android/attribution/AttributionLayout;->getLogo()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    int-to-float p4, p3

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    sub-int/2addr p1, p3

    int-to-float p1, p1

    const/4 p3, 0x0

    invoke-virtual {p2, p0, p4, p1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private final drawLogo(Lorg/maplibre/android/snapshotter/MapSnapshot;Landroid/graphics/Canvas;ILorg/maplibre/android/attribution/AttributionLayout;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/maplibre/android/snapshotter/MapSnapshot;->isShowLogo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/maplibre/android/snapshotter/MapSnapshot;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->drawLogo(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;ILorg/maplibre/android/attribution/AttributionLayout;)V

    :cond_0
    return-void
.end method

.method private final drawOverlay(Lorg/maplibre/android/snapshotter/MapSnapshot;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p4}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->getAttributionMeasure(Lorg/maplibre/android/snapshotter/MapSnapshot;Landroid/graphics/Bitmap;I)Lorg/maplibre/android/attribution/AttributionMeasure;

    move-result-object p2

    invoke-virtual {p2}, Lorg/maplibre/android/attribution/AttributionMeasure;->measure()Lorg/maplibre/android/attribution/AttributionLayout;

    move-result-object v0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p3, p4, v0}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->drawLogo(Lorg/maplibre/android/snapshotter/MapSnapshot;Landroid/graphics/Canvas;ILorg/maplibre/android/attribution/AttributionLayout;)V

    invoke-direct {p0, p1, p3, p2, v0}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->drawAttribution(Lorg/maplibre/android/snapshotter/MapSnapshot;Landroid/graphics/Canvas;Lorg/maplibre/android/attribution/AttributionMeasure;Lorg/maplibre/android/attribution/AttributionLayout;)V

    return-void
.end method

.method private final getAttributionMeasure(Lorg/maplibre/android/snapshotter/MapSnapshot;Landroid/graphics/Bitmap;I)Lorg/maplibre/android/attribution/AttributionMeasure;
    .locals 4

    invoke-direct {p0, p2}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->createScaledLogo(Landroid/graphics/Bitmap;)Lorg/maplibre/android/snapshotter/MapSnapshotter$Logo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Logo;->getScale()F

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->createTextView(Lorg/maplibre/android/snapshotter/MapSnapshot;ZF)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Logo;->getScale()F

    move-result v3

    invoke-direct {p0, p1, v2, v3}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->createTextView(Lorg/maplibre/android/snapshotter/MapSnapshot;ZF)Landroid/widget/TextView;

    move-result-object p0

    new-instance p1, Lorg/maplibre/android/attribution/AttributionMeasure$Builder;

    invoke-direct {p1}, Lorg/maplibre/android/attribution/AttributionMeasure$Builder;-><init>()V

    invoke-virtual {p1, p2}, Lorg/maplibre/android/attribution/AttributionMeasure$Builder;->setSnapshot(Landroid/graphics/Bitmap;)Lorg/maplibre/android/attribution/AttributionMeasure$Builder;

    move-result-object p1

    invoke-virtual {v0}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Logo;->getLarge()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/maplibre/android/attribution/AttributionMeasure$Builder;->setLogo(Landroid/graphics/Bitmap;)Lorg/maplibre/android/attribution/AttributionMeasure$Builder;

    move-result-object p1

    invoke-virtual {v0}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Logo;->getSmall()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/maplibre/android/attribution/AttributionMeasure$Builder;->setLogoSmall(Landroid/graphics/Bitmap;)Lorg/maplibre/android/attribution/AttributionMeasure$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/maplibre/android/attribution/AttributionMeasure$Builder;->setTextView(Landroid/widget/TextView;)Lorg/maplibre/android/attribution/AttributionMeasure$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/maplibre/android/attribution/AttributionMeasure$Builder;->setTextViewShort(Landroid/widget/TextView;)Lorg/maplibre/android/attribution/AttributionMeasure$Builder;

    move-result-object p0

    int-to-float p1, p3

    invoke-virtual {p0, p1}, Lorg/maplibre/android/attribution/AttributionMeasure$Builder;->setMarginPadding(F)Lorg/maplibre/android/attribution/AttributionMeasure$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/attribution/AttributionMeasure$Builder;->build()Lorg/maplibre/android/attribution/AttributionMeasure;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final native nativeAddImages([Lorg/maplibre/android/maps/Image;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native nativeAddLayerAbove(JLjava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native nativeAddLayerAt(JI)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native nativeAddLayerBelow(JLjava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native nativeAddSource(Lorg/maplibre/android/style/sources/Source;J)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native nativeGetLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native nativeGetSource(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private static final onSnapshotFailed$lambda$2(Lorg/maplibre/android/snapshotter/MapSnapshotter;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->errorHandler:Lorg/maplibre/android/snapshotter/MapSnapshotter$ErrorHandler;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$ErrorHandler;->onError(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->reset()V

    :cond_0
    return-void
.end method

.method private static final onSnapshotReady$lambda$1(Lorg/maplibre/android/snapshotter/MapSnapshotter;Lorg/maplibre/android/snapshotter/MapSnapshot;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->callback:Lorg/maplibre/android/snapshotter/MapSnapshotter$SnapshotReadyCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->addOverlay(Lorg/maplibre/android/snapshotter/MapSnapshot;)V

    iget-object v0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->callback:Lorg/maplibre/android/snapshotter/MapSnapshotter$SnapshotReadyCallback;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$SnapshotReadyCallback;->onSnapshotReady(Lorg/maplibre/android/snapshotter/MapSnapshot;)V

    invoke-virtual {p0}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->reset()V

    :cond_0
    return-void
.end method

.method public static synthetic start$default(Lorg/maplibre/android/snapshotter/MapSnapshotter;Lorg/maplibre/android/snapshotter/MapSnapshotter$SnapshotReadyCallback;Lorg/maplibre/android/snapshotter/MapSnapshotter$ErrorHandler;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->start(Lorg/maplibre/android/snapshotter/MapSnapshotter$SnapshotReadyCallback;Lorg/maplibre/android/snapshotter/MapSnapshotter$ErrorHandler;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: start"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;

    invoke-direct {v0, p1, p2, p3}, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    invoke-static {v0}, Lorg/maplibre/android/maps/Style;->toImage(Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;)Lorg/maplibre/android/maps/Image;

    move-result-object p1

    const-string p2, "toImage(...)"

    invoke-static {p1, p2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p1}, [Lorg/maplibre/android/maps/Image;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->nativeAddImages([Lorg/maplibre/android/maps/Image;)V

    return-void
.end method

.method public addOverlay(Lorg/maplibre/android/snapshotter/MapSnapshot;)V
    .locals 3

    const-string v0, "mapSnapshot"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/maplibre/android/snapshotter/MapSnapshot;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->drawOverlay(Lorg/maplibre/android/snapshotter/MapSnapshot;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V

    return-void
.end method

.method public final cancel()V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->checkThread()V

    invoke-virtual {p0}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->reset()V

    invoke-virtual {p0}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->nativeCancel()V

    return-void
.end method

.method public native finalize()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;
    .locals 1

    const-string v0, "layerId"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->checkThread()V

    iget-boolean v0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->fullyLoaded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->nativeGetLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSource(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;
    .locals 1

    const-string v0, "sourceId"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->checkThread()V

    iget-boolean v0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->fullyLoaded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->nativeGetSource(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final native nativeCancel()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final native nativeInitialize(Lorg/maplibre/android/snapshotter/MapSnapshotter;Lorg/maplibre/android/storage/FileSource;FIILjava/lang/String;Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngBounds;Lorg/maplibre/android/camera/CameraPosition;ZZLjava/lang/String;FFFF)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final native nativeStart()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final onDidFailLoadingStyle(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-string v0, "reason"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->onSnapshotFailed(Ljava/lang/String;)V

    return-void
.end method

.method public final onDidFinishLoadingStyle()V
    .locals 5
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-boolean v0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->fullyLoaded:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->fullyLoaded:Z

    iget-object v0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->options:Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;

    invoke-virtual {v0}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Options;->getBuilder()Lorg/maplibre/android/maps/Style$Builder;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/maplibre/android/maps/Style$Builder;->getSources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/maplibre/android/style/sources/Source;

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/maplibre/android/style/sources/Source;->getNativePtr()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->nativeAddSource(Lorg/maplibre/android/style/sources/Source;J)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/maplibre/android/maps/Style$Builder;->getLayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/maplibre/android/maps/Style$Builder$LayerWrapper;

    instance-of v3, v2, Lorg/maplibre/android/maps/Style$Builder$LayerAtWrapper;

    const-string v4, "getLayer(...)"

    if-eqz v3, :cond_1

    check-cast v2, Lorg/maplibre/android/maps/Style$Builder$LayerAtWrapper;

    invoke-virtual {v2}, Lorg/maplibre/android/maps/Style$Builder$LayerWrapper;->getLayer()Lorg/maplibre/android/style/layers/Layer;

    move-result-object v3

    invoke-static {v3, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/maplibre/android/maps/Style$Builder$LayerAtWrapper;->getIndex()I

    move-result v2

    invoke-direct {p0, v3, v2}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->addLayerAt(Lorg/maplibre/android/style/layers/Layer;I)V

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lorg/maplibre/android/maps/Style$Builder$LayerAboveWrapper;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/maplibre/android/maps/Style$Builder$LayerAboveWrapper;

    invoke-virtual {v2}, Lorg/maplibre/android/maps/Style$Builder$LayerWrapper;->getLayer()Lorg/maplibre/android/style/layers/Layer;

    move-result-object v3

    invoke-static {v3, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/maplibre/android/maps/Style$Builder$LayerAboveWrapper;->getAboveLayer()Ljava/lang/String;

    move-result-object v2

    const-string v4, "getAboveLayer(...)"

    invoke-static {v2, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v2}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->addLayerAbove(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    instance-of v3, v2, Lorg/maplibre/android/maps/Style$Builder$LayerBelowWrapper;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/maplibre/android/maps/Style$Builder$LayerBelowWrapper;

    invoke-virtual {v2}, Lorg/maplibre/android/maps/Style$Builder$LayerWrapper;->getLayer()Lorg/maplibre/android/style/layers/Layer;

    move-result-object v3

    invoke-static {v3, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/maplibre/android/maps/Style$Builder$LayerBelowWrapper;->getBelowLayer()Ljava/lang/String;

    move-result-object v2

    const-string v4, "getBelowLayer(...)"

    invoke-static {v2, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v2}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->addLayerBelow(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lorg/maplibre/android/maps/Style$Builder$LayerWrapper;->getLayer()Lorg/maplibre/android/style/layers/Layer;

    move-result-object v2

    invoke-static {v2, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "org.maplibre.annotations.points"

    invoke-direct {p0, v2, v3}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->addLayerBelow(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lorg/maplibre/android/maps/Style$Builder;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;

    invoke-virtual {v1}, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getId(...)"

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    const-string v4, "getBitmap(...)"

    invoke-static {v3, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/maplibre/android/maps/Style$Builder$ImageWrapper;->isSdf()Z

    move-result v1

    invoke-virtual {p0, v2, v3, v1}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->observer:Lorg/maplibre/android/snapshotter/MapSnapshotter$Observer;

    if-eqz p0, :cond_6

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Observer;->onDidFinishLoadingStyle()V

    :cond_6
    return-void
.end method

.method public final onSnapshotFailed(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-string v0, "reason"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lb/d;

    const/16 v2, 0xe

    invoke-direct {v1, v2, p0, p1}, Lb/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSnapshotReady(Lorg/maplibre/android/snapshotter/MapSnapshot;)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lb/d;

    const/16 v2, 0xd

    invoke-direct {v1, v2, p0, p1}, Lb/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onStyleImageMissing(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-string v0, "imageName"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->observer:Lorg/maplibre/android/snapshotter/MapSnapshotter$Observer;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lorg/maplibre/android/snapshotter/MapSnapshotter$Observer;->onStyleImageMissing(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->callback:Lorg/maplibre/android/snapshotter/MapSnapshotter$SnapshotReadyCallback;

    iput-object v0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->errorHandler:Lorg/maplibre/android/snapshotter/MapSnapshotter$ErrorHandler;

    return-void
.end method

.method public final native setCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final setObserver(Lorg/maplibre/android/snapshotter/MapSnapshotter$Observer;)V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->checkThread()V

    iput-object p1, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->observer:Lorg/maplibre/android/snapshotter/MapSnapshotter$Observer;

    return-void
.end method

.method public final native setPadding(IIII)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final native setRegion(Lorg/maplibre/android/geometry/LatLngBounds;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final native setSize(II)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final native setStyleJson(Ljava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final native setStyleUrl(Ljava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final start(Lorg/maplibre/android/snapshotter/MapSnapshotter$SnapshotReadyCallback;)V
    .locals 2

    .line 1
    const-string v0, "callback"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->start$default(Lorg/maplibre/android/snapshotter/MapSnapshotter;Lorg/maplibre/android/snapshotter/MapSnapshotter$SnapshotReadyCallback;Lorg/maplibre/android/snapshotter/MapSnapshotter$ErrorHandler;ILjava/lang/Object;)V

    return-void
.end method

.method public final start(Lorg/maplibre/android/snapshotter/MapSnapshotter$SnapshotReadyCallback;Lorg/maplibre/android/snapshotter/MapSnapshotter$ErrorHandler;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->callback:Lorg/maplibre/android/snapshotter/MapSnapshotter$SnapshotReadyCallback;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->checkThread()V

    .line 4
    iput-object p1, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->callback:Lorg/maplibre/android/snapshotter/MapSnapshotter$SnapshotReadyCallback;

    .line 5
    iput-object p2, p0, Lorg/maplibre/android/snapshotter/MapSnapshotter;->errorHandler:Lorg/maplibre/android/snapshotter/MapSnapshotter$ErrorHandler;

    .line 6
    invoke-virtual {p0}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->nativeStart()V

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Snapshotter was already started"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
