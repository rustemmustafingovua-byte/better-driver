.class public Lorg/maplibre/android/attribution/AttributionMeasure;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/attribution/AttributionMeasure$Chain;,
        Lorg/maplibre/android/attribution/AttributionMeasure$Command;,
        Lorg/maplibre/android/attribution/AttributionMeasure$FullLogoLongTextCommand;,
        Lorg/maplibre/android/attribution/AttributionMeasure$FullLogoShortTextCommand;,
        Lorg/maplibre/android/attribution/AttributionMeasure$SmallLogoLongTextCommand;,
        Lorg/maplibre/android/attribution/AttributionMeasure$SmallLogoShortTextCommand;,
        Lorg/maplibre/android/attribution/AttributionMeasure$LongTextCommand;,
        Lorg/maplibre/android/attribution/AttributionMeasure$ShortTextCommand;,
        Lorg/maplibre/android/attribution/AttributionMeasure$NoTextCommand;,
        Lorg/maplibre/android/attribution/AttributionMeasure$Builder;
    }
.end annotation


# instance fields
.field private logo:Landroid/graphics/Bitmap;

.field private logoSmall:Landroid/graphics/Bitmap;

.field private margin:F

.field private shorterText:Z

.field private snapshot:Landroid/graphics/Bitmap;

.field private textView:Landroid/widget/TextView;

.field private textViewShort:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/widget/TextView;Landroid/widget/TextView;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->snapshot:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->logo:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->logoSmall:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->textView:Landroid/widget/TextView;

    iput-object p5, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->textViewShort:Landroid/widget/TextView;

    iput p6, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->margin:F

    return-void
.end method

.method public static bridge synthetic a(Lorg/maplibre/android/attribution/AttributionMeasure;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->logo:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/maplibre/android/attribution/AttributionMeasure;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->logoSmall:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/maplibre/android/attribution/AttributionMeasure;)F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->margin:F

    return p0
.end method

.method private static calculateAnchor(Landroid/graphics/Bitmap;Landroid/widget/TextView;F)Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static bridge synthetic d(Lorg/maplibre/android/attribution/AttributionMeasure;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->snapshot:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static bridge synthetic e(Lorg/maplibre/android/attribution/AttributionMeasure;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->textView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic f(Lorg/maplibre/android/attribution/AttributionMeasure;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->textViewShort:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic g(Lorg/maplibre/android/attribution/AttributionMeasure;)F
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/attribution/AttributionMeasure;->getLogoContainerWidth()F

    move-result p0

    return p0
.end method

.method private getLogoContainerWidth()F
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->logo:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    iget p0, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->margin:F

    mul-float/2addr p0, v1

    add-float/2addr p0, v0

    return p0
.end method

.method private getLogoSmallContainerWidth()F
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->logoSmall:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    iget p0, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->margin:F

    mul-float/2addr p0, v1

    add-float/2addr p0, v0

    return p0
.end method

.method private getMaxSize()F
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->snapshot:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    div-int/lit8 p0, p0, 0xa

    int-to-float p0, p0

    return p0
.end method

.method private getMaxSizeShort()F
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->snapshot:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method private getTextViewContainerWidth()F
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->margin:F

    add-float/2addr v0, p0

    return v0
.end method

.method private getTextViewShortContainerWidth()F
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->textViewShort:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->margin:F

    add-float/2addr v0, p0

    return v0
.end method

.method public static bridge synthetic h(Lorg/maplibre/android/attribution/AttributionMeasure;)F
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/attribution/AttributionMeasure;->getLogoSmallContainerWidth()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic i(Lorg/maplibre/android/attribution/AttributionMeasure;)F
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/attribution/AttributionMeasure;->getMaxSize()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic j(Lorg/maplibre/android/attribution/AttributionMeasure;)F
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/attribution/AttributionMeasure;->getMaxSizeShort()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic k(Lorg/maplibre/android/attribution/AttributionMeasure;)F
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/attribution/AttributionMeasure;->getTextViewContainerWidth()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic l(Lorg/maplibre/android/attribution/AttributionMeasure;)F
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/attribution/AttributionMeasure;->getTextViewShortContainerWidth()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/graphics/Bitmap;Landroid/widget/TextView;F)Landroid/graphics/PointF;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/maplibre/android/attribution/AttributionMeasure;->calculateAnchor(Landroid/graphics/Bitmap;Landroid/widget/TextView;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getTextView()Landroid/widget/TextView;
    .locals 1

    iget-boolean v0, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->shorterText:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->textViewShort:Landroid/widget/TextView;

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->textView:Landroid/widget/TextView;

    return-object p0
.end method

.method public measure()Lorg/maplibre/android/attribution/AttributionLayout;
    .locals 10

    new-instance v0, Lorg/maplibre/android/attribution/AttributionMeasure$Chain;

    new-instance v1, Lorg/maplibre/android/attribution/AttributionMeasure$FullLogoLongTextCommand;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/maplibre/android/attribution/AttributionMeasure$FullLogoLongTextCommand;-><init>(I)V

    new-instance v3, Lorg/maplibre/android/attribution/AttributionMeasure$FullLogoShortTextCommand;

    invoke-direct {v3, v2}, Lorg/maplibre/android/attribution/AttributionMeasure$FullLogoShortTextCommand;-><init>(I)V

    new-instance v4, Lorg/maplibre/android/attribution/AttributionMeasure$SmallLogoLongTextCommand;

    invoke-direct {v4, v2}, Lorg/maplibre/android/attribution/AttributionMeasure$SmallLogoLongTextCommand;-><init>(I)V

    new-instance v5, Lorg/maplibre/android/attribution/AttributionMeasure$SmallLogoShortTextCommand;

    invoke-direct {v5, v2}, Lorg/maplibre/android/attribution/AttributionMeasure$SmallLogoShortTextCommand;-><init>(I)V

    new-instance v6, Lorg/maplibre/android/attribution/AttributionMeasure$LongTextCommand;

    invoke-direct {v6, v2}, Lorg/maplibre/android/attribution/AttributionMeasure$LongTextCommand;-><init>(I)V

    new-instance v7, Lorg/maplibre/android/attribution/AttributionMeasure$ShortTextCommand;

    invoke-direct {v7, v2}, Lorg/maplibre/android/attribution/AttributionMeasure$ShortTextCommand;-><init>(I)V

    new-instance v8, Lorg/maplibre/android/attribution/AttributionMeasure$NoTextCommand;

    invoke-direct {v8, v2}, Lorg/maplibre/android/attribution/AttributionMeasure$NoTextCommand;-><init>(I)V

    const/4 v9, 0x7

    new-array v9, v9, [Lorg/maplibre/android/attribution/AttributionMeasure$Command;

    aput-object v1, v9, v2

    const/4 v1, 0x1

    aput-object v3, v9, v1

    const/4 v1, 0x2

    aput-object v4, v9, v1

    const/4 v1, 0x3

    aput-object v5, v9, v1

    const/4 v1, 0x4

    aput-object v6, v9, v1

    const/4 v1, 0x5

    aput-object v7, v9, v1

    const/4 v1, 0x6

    aput-object v8, v9, v1

    invoke-direct {v0, p0, v9}, Lorg/maplibre/android/attribution/AttributionMeasure$Chain;-><init>(Lorg/maplibre/android/attribution/AttributionMeasure;[Lorg/maplibre/android/attribution/AttributionMeasure$Command;)V

    invoke-virtual {v0, p0}, Lorg/maplibre/android/attribution/AttributionMeasure$Chain;->start(Lorg/maplibre/android/attribution/AttributionMeasure;)Lorg/maplibre/android/attribution/AttributionLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/attribution/AttributionLayout;->isShortText()Z

    move-result v1

    iput-boolean v1, p0, Lorg/maplibre/android/attribution/AttributionMeasure;->shorterText:Z

    return-object v0
.end method
