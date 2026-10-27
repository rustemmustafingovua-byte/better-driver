.class Lorg/maplibre/android/annotations/Bubble;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private arrowHeight:F

.field private arrowPosition:F

.field private arrowWidth:F

.field private cornersRadius:F

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private rect:Landroid/graphics/RectF;

.field private strokePaint:Landroid/graphics/Paint;

.field private strokePath:Landroid/graphics/Path;

.field private strokeWidth:F


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Lorg/maplibre/android/annotations/ArrowDirection;FFFFIFI)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/maplibre/android/annotations/Bubble;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/annotations/Bubble;->path:Landroid/graphics/Path;

    iput-object p1, p0, Lorg/maplibre/android/annotations/Bubble;->rect:Landroid/graphics/RectF;

    iput p3, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    iput p4, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    iput p5, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    iput p6, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    iget-object p1, p0, Lorg/maplibre/android/annotations/Bubble;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p7}, Landroid/graphics/Paint;->setColor(I)V

    iput p8, p0, Lorg/maplibre/android/annotations/Bubble;->strokeWidth:F

    const/4 p1, 0x0

    cmpl-float p3, p8, p1

    if-lez p3, :cond_0

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lorg/maplibre/android/annotations/Bubble;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p9}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lorg/maplibre/android/annotations/Bubble;->strokePath:Landroid/graphics/Path;

    iget-object p3, p0, Lorg/maplibre/android/annotations/Bubble;->path:Landroid/graphics/Path;

    invoke-direct {p0, p2, p3, p8}, Lorg/maplibre/android/annotations/Bubble;->initPath(Lorg/maplibre/android/annotations/ArrowDirection;Landroid/graphics/Path;F)V

    iget-object p3, p0, Lorg/maplibre/android/annotations/Bubble;->strokePath:Landroid/graphics/Path;

    invoke-direct {p0, p2, p3, p1}, Lorg/maplibre/android/annotations/Bubble;->initPath(Lorg/maplibre/android/annotations/ArrowDirection;Landroid/graphics/Path;F)V

    return-void

    :cond_0
    iget-object p3, p0, Lorg/maplibre/android/annotations/Bubble;->path:Landroid/graphics/Path;

    invoke-direct {p0, p2, p3, p1}, Lorg/maplibre/android/annotations/Bubble;->initPath(Lorg/maplibre/android/annotations/ArrowDirection;Landroid/graphics/Path;F)V

    return-void
.end method

.method private initBottomRoundedPath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 8

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    sub-float v3, v1, v2

    iget v4, p1, Landroid/graphics/RectF;->top:F

    add-float v5, v4, p3

    sub-float/2addr v1, p3

    add-float/2addr v2, v4

    invoke-direct {v0, v3, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, 0x43870000    # 270.0f

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    sub-float/2addr v1, v3

    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v1, v3

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    sub-float v4, v1, v3

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v5, v3

    iget v6, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    sub-float/2addr v3, v6

    sub-float/2addr v1, p3

    sub-float/2addr v5, v6

    sub-float/2addr v5, p3

    invoke-direct {v0, v4, v3, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, p3, v1

    sub-float/2addr v0, v3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    sub-float/2addr v4, v5

    sub-float/2addr v4, p3

    invoke-virtual {p2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v4

    iget v4, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    div-float/2addr v4, v1

    add-float/2addr v4, v0

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p3

    sub-float/2addr v0, p3

    invoke-virtual {p2, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v1

    add-float/2addr v0, v3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    sub-float/2addr v1, v3

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float/2addr v1, v0

    add-float/2addr v1, p3

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    sub-float/2addr v0, v3

    sub-float/2addr v0, p3

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float v3, v1, p3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    sub-float v6, v4, v5

    iget v7, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    sub-float/2addr v6, v7

    add-float/2addr v5, v1

    sub-float/2addr v4, v7

    sub-float/2addr v4, p3

    invoke-direct {v0, v3, v6, v5, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2, v0, v2, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    add-float/2addr v1, v3

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float v3, v1, p3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p3, p1

    iget p0, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    add-float/2addr v1, p0

    add-float/2addr p0, p1

    invoke-direct {v0, v3, p3, v1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p0, 0x43340000    # 180.0f

    invoke-virtual {p2, v0, p0, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private initBottomSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 5

    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p3, v1

    sub-float/2addr v0, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    sub-float/2addr v3, v4

    sub-float/2addr v3, p3

    invoke-virtual {p2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v3

    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    div-float/2addr v3, v1

    add-float/2addr v3, v0

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p3

    sub-float/2addr v0, p3

    invoke-virtual {p2, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget p0, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    sub-float/2addr v1, p0

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget p0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p0, p3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p3

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private initLeftRoundedPath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 8

    iget v0, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    sub-float v3, v1, v2

    iget v4, p1, Landroid/graphics/RectF;->top:F

    add-float v5, v4, p3

    sub-float/2addr v1, p3

    add-float/2addr v2, v4

    invoke-direct {v0, v3, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, 0x43870000    # 270.0f

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v1, v3

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    sub-float v4, v1, v3

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v5, v3

    sub-float/2addr v1, p3

    sub-float/2addr v5, p3

    invoke-direct {v0, v4, v3, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    add-float v4, v1, v3

    add-float/2addr v4, p3

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    sub-float v7, v5, v6

    add-float/2addr v6, v1

    add-float/2addr v6, v3

    sub-float/2addr v5, p3

    invoke-direct {v0, v4, v7, v6, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2, v0, v2, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, p3, v3

    sub-float/2addr v1, v4

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    add-float/2addr v0, p3

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    iget v5, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    div-float/2addr v5, v3

    add-float/2addr v5, v1

    invoke-virtual {p2, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    add-float/2addr v1, v4

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    add-float/2addr v1, v3

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    add-float v4, v1, v3

    add-float/2addr v4, p3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p3, p1

    iget p0, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    add-float/2addr v1, p0

    add-float/2addr v1, v3

    add-float/2addr p0, p1

    invoke-direct {v0, v4, p3, v1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p0, 0x43340000    # 180.0f

    invoke-virtual {p2, v0, p0, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private initLeftSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 5

    iget v0, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    iget v2, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, p3, v2

    sub-float/2addr v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    add-float/2addr v0, p3

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    iget v4, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    div-float/2addr v4, v2

    add-float/2addr v4, v1

    invoke-virtual {p2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    add-float/2addr v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget p0, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, p0

    add-float/2addr v0, p3

    iget p0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p0, p3

    invoke-virtual {p2, v0, p0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private initPath(Lorg/maplibre/android/annotations/ArrowDirection;Landroid/graphics/Path;F)V
    .locals 2

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/ArrowDirection;->getValue()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_1

    iget-object p1, p0, Lorg/maplibre/android/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/annotations/Bubble;->initBottomSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    return-void

    :cond_1
    cmpl-float v0, p3, v0

    if-lez v0, :cond_2

    cmpl-float p1, p3, p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lorg/maplibre/android/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/annotations/Bubble;->initBottomSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    return-void

    :cond_2
    iget-object p1, p0, Lorg/maplibre/android/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/annotations/Bubble;->initBottomRoundedPath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    return-void

    :cond_3
    iget p1, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_4

    iget-object p1, p0, Lorg/maplibre/android/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/annotations/Bubble;->initTopSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    return-void

    :cond_4
    cmpl-float v0, p3, v0

    if-lez v0, :cond_5

    cmpl-float p1, p3, p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lorg/maplibre/android/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/annotations/Bubble;->initTopSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    return-void

    :cond_5
    iget-object p1, p0, Lorg/maplibre/android/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/annotations/Bubble;->initTopRoundedPath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    return-void

    :cond_6
    iget p1, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_7

    iget-object p1, p0, Lorg/maplibre/android/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/annotations/Bubble;->initRightSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    return-void

    :cond_7
    cmpl-float v0, p3, v0

    if-lez v0, :cond_8

    cmpl-float p1, p3, p1

    if-lez p1, :cond_8

    iget-object p1, p0, Lorg/maplibre/android/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/annotations/Bubble;->initRightSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    return-void

    :cond_8
    iget-object p1, p0, Lorg/maplibre/android/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/annotations/Bubble;->initRightRoundedPath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    return-void

    :cond_9
    iget p1, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_a

    iget-object p1, p0, Lorg/maplibre/android/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/annotations/Bubble;->initLeftSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    return-void

    :cond_a
    cmpl-float v0, p3, v0

    if-lez v0, :cond_b

    cmpl-float p1, p3, p1

    if-lez p1, :cond_b

    iget-object p1, p0, Lorg/maplibre/android/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/annotations/Bubble;->initLeftSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    return-void

    :cond_b
    iget-object p1, p0, Lorg/maplibre/android/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/annotations/Bubble;->initLeftRoundedPath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V

    return-void
.end method

.method private initRightRoundedPath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 7

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    sub-float v3, v1, v2

    iget v4, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    sub-float/2addr v3, v4

    iget v5, p1, Landroid/graphics/RectF;->top:F

    add-float v6, v5, p3

    sub-float/2addr v1, v4

    sub-float/2addr v1, p3

    add-float/2addr v2, v5

    invoke-direct {v0, v3, v6, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, 0x43870000    # 270.0f

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, p3, v3

    add-float/2addr v1, v4

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    sub-float/2addr v0, p3

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    iget v5, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    div-float/2addr v5, v3

    add-float/2addr v5, v1

    invoke-virtual {p2, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    add-float/2addr v1, v3

    sub-float/2addr v1, v4

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v1, v3

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    sub-float v4, v1, v3

    iget v5, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    sub-float/2addr v4, v5

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v6, v3

    sub-float/2addr v1, v5

    sub-float/2addr v1, p3

    sub-float/2addr v6, p3

    invoke-direct {v0, v4, v3, v1, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float v3, v1, p3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    sub-float v6, v4, v5

    add-float/2addr v5, v1

    sub-float/2addr v4, p3

    invoke-direct {v0, v3, v6, v5, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2, v0, v2, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float v3, v1, p3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p3, p1

    iget p0, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    add-float/2addr v1, p0

    add-float/2addr p0, p1

    invoke-direct {v0, v3, p3, v1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p0, 0x43340000    # 180.0f

    invoke-virtual {p2, v0, p0, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private initRightSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 5

    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, p3, v2

    add-float/2addr v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    sub-float/2addr v0, p3

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    iget v4, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    div-float/2addr v4, v2

    add-float/2addr v4, v1

    invoke-virtual {p2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    iget v2, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    add-float/2addr v1, v2

    sub-float/2addr v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget p0, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    sub-float/2addr v0, p0

    sub-float/2addr v0, p3

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p0, p3

    invoke-virtual {p2, v0, p0}, Landroid/graphics/Path;->lineTo(FF)V

    iget p0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p0, p3

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p3

    invoke-virtual {p2, p0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget p0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p0, p3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p3

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private initTopRoundedPath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 7

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    iget v2, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float/2addr v1, v0

    add-float/2addr v1, p3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    add-float/2addr v0, v2

    add-float/2addr v0, p3

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p3, v1

    add-float/2addr v0, v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    add-float/2addr v3, v4

    add-float/2addr v3, p3

    invoke-virtual {p2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    div-float/2addr v3, v1

    add-float/2addr v3, v0

    iget v0, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    add-float/2addr v3, v0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p3

    add-float/2addr v0, p3

    invoke-virtual {p2, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v1

    sub-float/2addr v0, v2

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    add-float/2addr v1, v2

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    add-float/2addr v1, v2

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    sub-float v3, v1, v2

    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    add-float v6, v4, v5

    add-float/2addr v6, p3

    sub-float/2addr v1, p3

    add-float/2addr v2, v4

    add-float/2addr v2, v5

    invoke-direct {v0, v3, v6, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, 0x43870000    # 270.0f

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    sub-float/2addr v1, v3

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    sub-float v4, v1, v3

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v5, v3

    sub-float/2addr v1, p3

    sub-float/2addr v5, p3

    invoke-direct {v0, v4, v3, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float v3, v1, p3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    sub-float v6, v4, v5

    add-float/2addr v5, v1

    sub-float/2addr v4, p3

    invoke-direct {v0, v3, v6, v5, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2, v0, v2, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    add-float/2addr v1, v3

    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    add-float/2addr v1, v3

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float v3, v1, p3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    add-float v5, p1, v4

    add-float/2addr v5, p3

    iget p0, p0, Lorg/maplibre/android/annotations/Bubble;->cornersRadius:F

    add-float/2addr v1, p0

    add-float/2addr p0, p1

    add-float/2addr p0, v4

    invoke-direct {v0, v3, v5, v1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p0, 0x43340000    # 180.0f

    invoke-virtual {p2, v0, p0, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private initTopSquarePath(Landroid/graphics/RectF;Landroid/graphics/Path;F)V
    .locals 5

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    add-float/2addr v1, v2

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p3, v1

    add-float/2addr v0, v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    add-float/2addr v3, v4

    add-float/2addr v3, p3

    invoke-virtual {p2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    div-float/2addr v3, v1

    add-float/2addr v3, v0

    iget v0, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    add-float/2addr v3, v0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p3

    add-float/2addr v0, p3

    invoke-virtual {p2, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v1

    sub-float/2addr v0, v2

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    add-float/2addr v1, v2

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    add-float/2addr v1, v2

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    add-float/2addr v1, v2

    add-float/2addr v1, p3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/maplibre/android/annotations/Bubble;->arrowPosition:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget p0, p0, Lorg/maplibre/android/annotations/Bubble;->arrowHeight:F

    add-float/2addr p1, p0

    add-float/2addr p1, p3

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lorg/maplibre/android/annotations/Bubble;->strokeWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/annotations/Bubble;->strokePath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/maplibre/android/annotations/Bubble;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/annotations/Bubble;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lorg/maplibre/android/annotations/Bubble;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/annotations/Bubble;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/annotations/Bubble;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/annotations/Bubble;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
