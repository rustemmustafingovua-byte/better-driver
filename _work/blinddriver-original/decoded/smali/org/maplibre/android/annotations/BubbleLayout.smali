.class public Lorg/maplibre/android/annotations/BubbleLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_STROKE_WIDTH:F = -1.0f


# instance fields
.field private arrowDirection:Lorg/maplibre/android/annotations/ArrowDirection;

.field private arrowHeight:F

.field private arrowPosition:F

.field private arrowWidth:F

.field private bubble:Lorg/maplibre/android/annotations/Bubble;

.field private bubbleColor:I

.field private cornersRadius:F

.field private strokeColor:I

.field private strokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lorg/maplibre/android/annotations/BubbleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lorg/maplibre/android/annotations/BubbleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Lorg/maplibre/android/R$styleable;->maplibre_BubbleLayout:[I

    invoke-virtual {p3, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 5
    sget p3, Lorg/maplibre/android/R$styleable;->maplibre_BubbleLayout_maplibre_bl_arrowDirection:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 6
    new-instance v0, Lorg/maplibre/android/annotations/ArrowDirection;

    invoke-direct {v0, p3}, Lorg/maplibre/android/annotations/ArrowDirection;-><init>(I)V

    iput-object v0, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowDirection:Lorg/maplibre/android/annotations/ArrowDirection;

    .line 7
    sget p3, Lorg/maplibre/android/R$styleable;->maplibre_BubbleLayout_maplibre_bl_arrowWidth:I

    const/high16 v0, 0x41000000    # 8.0f

    .line 8
    invoke-static {v0, p1}, Lorg/maplibre/android/annotations/BubbleLayout;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v1

    .line 9
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowWidth:F

    .line 10
    sget p3, Lorg/maplibre/android/R$styleable;->maplibre_BubbleLayout_maplibre_bl_arrowHeight:I

    .line 11
    invoke-static {v0, p1}, Lorg/maplibre/android/annotations/BubbleLayout;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    .line 12
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowHeight:F

    .line 13
    sget p3, Lorg/maplibre/android/R$styleable;->maplibre_BubbleLayout_maplibre_bl_arrowPosition:I

    const/high16 v0, 0x41400000    # 12.0f

    .line 14
    invoke-static {v0, p1}, Lorg/maplibre/android/annotations/BubbleLayout;->convertDpToPixel(FLandroid/content/Context;)F

    move-result p1

    .line 15
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowPosition:F

    .line 16
    sget p1, Lorg/maplibre/android/R$styleable;->maplibre_BubbleLayout_maplibre_bl_cornersRadius:I

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lorg/maplibre/android/annotations/BubbleLayout;->cornersRadius:F

    .line 17
    sget p1, Lorg/maplibre/android/R$styleable;->maplibre_BubbleLayout_maplibre_bl_bubbleColor:I

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lorg/maplibre/android/annotations/BubbleLayout;->bubbleColor:I

    .line 18
    sget p1, Lorg/maplibre/android/R$styleable;->maplibre_BubbleLayout_maplibre_bl_strokeWidth:I

    const/high16 p3, -0x40800000    # -1.0f

    .line 19
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lorg/maplibre/android/annotations/BubbleLayout;->strokeWidth:F

    .line 20
    sget p1, Lorg/maplibre/android/R$styleable;->maplibre_BubbleLayout_maplibre_bl_strokeColor:I

    const p3, -0x777778

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lorg/maplibre/android/annotations/BubbleLayout;->strokeColor:I

    .line 21
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    invoke-direct {p0}, Lorg/maplibre/android/annotations/BubbleLayout;->initPadding()V

    return-void
.end method

.method public static convertDpToPixel(FLandroid/content/Context;)F
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 p1, p1, 0xa0

    int-to-float p1, p1

    mul-float/2addr p0, p1

    return p0
.end method

.method private initDrawable(IIII)V
    .locals 10

    if-lt p2, p1, :cond_1

    if-ge p4, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p3, p3

    int-to-float p2, p2

    int-to-float p4, p4

    invoke-direct {v1, p1, p3, p2, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v0, Lorg/maplibre/android/annotations/Bubble;

    iget-object v2, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowDirection:Lorg/maplibre/android/annotations/ArrowDirection;

    iget v3, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowWidth:F

    iget v4, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowHeight:F

    iget v5, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowPosition:F

    iget v6, p0, Lorg/maplibre/android/annotations/BubbleLayout;->cornersRadius:F

    iget v7, p0, Lorg/maplibre/android/annotations/BubbleLayout;->bubbleColor:I

    iget v8, p0, Lorg/maplibre/android/annotations/BubbleLayout;->strokeWidth:F

    iget v9, p0, Lorg/maplibre/android/annotations/BubbleLayout;->strokeColor:I

    invoke-direct/range {v0 .. v9}, Lorg/maplibre/android/annotations/Bubble;-><init>(Landroid/graphics/RectF;Lorg/maplibre/android/annotations/ArrowDirection;FFFFIFI)V

    iput-object v0, p0, Lorg/maplibre/android/annotations/BubbleLayout;->bubble:Lorg/maplibre/android/annotations/Bubble;

    :cond_1
    :goto_0
    return-void
.end method

.method private initPadding()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    iget-object v4, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowDirection:Lorg/maplibre/android/annotations/ArrowDirection;

    invoke-virtual {v4}, Lorg/maplibre/android/annotations/ArrowDirection;->getValue()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v3, v3

    iget v4, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowHeight:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_0

    :cond_1
    int-to-float v2, v2

    iget v4, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowHeight:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    goto :goto_0

    :cond_2
    int-to-float v1, v1

    iget v4, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowWidth:F

    add-float/2addr v1, v4

    float-to-int v1, v1

    goto :goto_0

    :cond_3
    int-to-float v0, v0

    iget v4, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowWidth:F

    add-float/2addr v0, v4

    float-to-int v0, v0

    :goto_0
    iget v4, p0, Lorg/maplibre/android/annotations/BubbleLayout;->strokeWidth:F

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    int-to-float v0, v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v1, v1

    add-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v2, v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v3, v3

    add-float/2addr v3, v4

    float-to-int v3, v3

    :cond_4
    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private resetPadding()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    iget-object v4, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowDirection:Lorg/maplibre/android/annotations/ArrowDirection;

    invoke-virtual {v4}, Lorg/maplibre/android/annotations/ArrowDirection;->getValue()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v3, v3

    iget v4, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowHeight:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_0

    :cond_1
    int-to-float v2, v2

    iget v4, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowHeight:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    goto :goto_0

    :cond_2
    int-to-float v1, v1

    iget v4, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowWidth:F

    sub-float/2addr v1, v4

    float-to-int v1, v1

    goto :goto_0

    :cond_3
    int-to-float v0, v0

    iget v4, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowWidth:F

    sub-float/2addr v0, v4

    float-to-int v0, v0

    :goto_0
    iget v4, p0, Lorg/maplibre/android/annotations/BubbleLayout;->strokeWidth:F

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    int-to-float v0, v0

    sub-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v1, v1

    sub-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v2, v2

    sub-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v3, v3

    sub-float/2addr v3, v4

    float-to-int v3, v3

    :cond_4
    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/annotations/BubbleLayout;->bubble:Lorg/maplibre/android/annotations/Bubble;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/maplibre/android/annotations/Bubble;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getArrowDirection()Lorg/maplibre/android/annotations/ArrowDirection;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowDirection:Lorg/maplibre/android/annotations/ArrowDirection;

    return-object p0
.end method

.method public getArrowHeight()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowHeight:F

    return p0
.end method

.method public getArrowPosition()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowPosition:F

    return p0
.end method

.method public getArrowWidth()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowWidth:F

    return p0
.end method

.method public getBubbleColor()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/annotations/BubbleLayout;->bubbleColor:I

    return p0
.end method

.method public getCornersRadius()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/annotations/BubbleLayout;->cornersRadius:F

    return p0
.end method

.method public getStrokeColor()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/annotations/BubbleLayout;->strokeColor:I

    return p0
.end method

.method public getStrokeWidth()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/annotations/BubbleLayout;->strokeWidth:F

    return p0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    const/4 p3, 0x0

    invoke-direct {p0, p3, p1, p3, p2}, Lorg/maplibre/android/annotations/BubbleLayout;->initDrawable(IIII)V

    return-void
.end method

.method public setArrowDirection(Lorg/maplibre/android/annotations/ArrowDirection;)Lorg/maplibre/android/annotations/BubbleLayout;
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/annotations/BubbleLayout;->resetPadding()V

    iput-object p1, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowDirection:Lorg/maplibre/android/annotations/ArrowDirection;

    invoke-direct {p0}, Lorg/maplibre/android/annotations/BubbleLayout;->initPadding()V

    return-object p0
.end method

.method public setArrowHeight(F)Lorg/maplibre/android/annotations/BubbleLayout;
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/annotations/BubbleLayout;->resetPadding()V

    iput p1, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowHeight:F

    invoke-direct {p0}, Lorg/maplibre/android/annotations/BubbleLayout;->initPadding()V

    return-object p0
.end method

.method public setArrowPosition(F)Lorg/maplibre/android/annotations/BubbleLayout;
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/annotations/BubbleLayout;->resetPadding()V

    iput p1, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowPosition:F

    invoke-direct {p0}, Lorg/maplibre/android/annotations/BubbleLayout;->initPadding()V

    return-object p0
.end method

.method public setArrowWidth(F)Lorg/maplibre/android/annotations/BubbleLayout;
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/annotations/BubbleLayout;->resetPadding()V

    iput p1, p0, Lorg/maplibre/android/annotations/BubbleLayout;->arrowWidth:F

    invoke-direct {p0}, Lorg/maplibre/android/annotations/BubbleLayout;->initPadding()V

    return-object p0
.end method

.method public setBubbleColor(I)Lorg/maplibre/android/annotations/BubbleLayout;
    .locals 0

    iput p1, p0, Lorg/maplibre/android/annotations/BubbleLayout;->bubbleColor:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-object p0
.end method

.method public setCornersRadius(F)Lorg/maplibre/android/annotations/BubbleLayout;
    .locals 0

    iput p1, p0, Lorg/maplibre/android/annotations/BubbleLayout;->cornersRadius:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-object p0
.end method

.method public setStrokeColor(I)Lorg/maplibre/android/annotations/BubbleLayout;
    .locals 0

    iput p1, p0, Lorg/maplibre/android/annotations/BubbleLayout;->strokeColor:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-object p0
.end method

.method public setStrokeWidth(F)Lorg/maplibre/android/annotations/BubbleLayout;
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/annotations/BubbleLayout;->resetPadding()V

    iput p1, p0, Lorg/maplibre/android/annotations/BubbleLayout;->strokeWidth:F

    invoke-direct {p0}, Lorg/maplibre/android/annotations/BubbleLayout;->initPadding()V

    return-object p0
.end method
