.class public Lorg/maplibre/android/text/LocalGlyphRasterizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final BASELINE_X:F = 10.0f

.field private static final BITMAP_SIZE:I = 0x3c

.field private static final RASTER_BUFFER:I = 0x6

.field private static final TEXTURE_SCALE:I = 0x2

.field private static final TEXT_SIZE:I = 0x30

.field private static final TOP_ADJUSTMENT:F = 26.5f


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final canvas:Landroid/graphics/Canvas;

.field private glyphTop:F

.field private final paint:Landroid/graphics/Paint;

.field private final textBounds:Landroid/graphics/Rect;

.field private final typefaceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/text/LocalGlyphRasterizer;->bitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/maplibre/android/text/LocalGlyphRasterizer;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v2, 0x42400000    # 48.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lorg/maplibre/android/text/LocalGlyphRasterizer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/text/LocalGlyphRasterizer;->textBounds:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/text/LocalGlyphRasterizer;->typefaceCache:Ljava/util/Map;

    return-void
.end method

.method private measureGlyphTop(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lorg/maplibre/android/text/LocalGlyphRasterizer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lorg/maplibre/android/text/LocalGlyphRasterizer;->textBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object p0, p0, Lorg/maplibre/android/text/LocalGlyphRasterizer;->textBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private setTypeface(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    const-string v1, "bold:"

    goto :goto_0

    :cond_0
    const-string v1, "regular:"

    :goto_0
    invoke-static {v0, v1, p1}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/maplibre/android/text/LocalGlyphRasterizer;->typefaceCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-nez v1, :cond_1

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iget-object p1, p0, Lorg/maplibre/android/text/LocalGlyphRasterizer;->typefaceCache:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lorg/maplibre/android/text/LocalGlyphRasterizer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public drawGlyphBitmap(Ljava/lang/String;ZC)Landroid/graphics/Bitmap;
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/text/LocalGlyphRasterizer;->setTypeface(Ljava/lang/String;Z)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/maplibre/android/text/LocalGlyphRasterizer;->measureGlyphTop(Ljava/lang/String;)I

    move-result p2

    int-to-float p3, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    const/high16 v0, 0x41d40000    # 26.5f

    sub-float/2addr p3, v0

    iput p3, p0, Lorg/maplibre/android/text/LocalGlyphRasterizer;->glyphTop:F

    iget-object p3, p0, Lorg/maplibre/android/text/LocalGlyphRasterizer;->canvas:Landroid/graphics/Canvas;

    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object p3, p0, Lorg/maplibre/android/text/LocalGlyphRasterizer;->canvas:Landroid/graphics/Canvas;

    add-int/lit8 p2, p2, 0x6

    int-to-float p2, p2

    iget-object v0, p0, Lorg/maplibre/android/text/LocalGlyphRasterizer;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p3, p1, v1, p2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lorg/maplibre/android/text/LocalGlyphRasterizer;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getLastGlyphTop()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/text/LocalGlyphRasterizer;->glyphTop:F

    return p0
.end method
