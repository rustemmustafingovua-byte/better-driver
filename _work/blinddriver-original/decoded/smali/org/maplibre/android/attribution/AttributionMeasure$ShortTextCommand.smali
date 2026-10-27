.class Lorg/maplibre/android/attribution/AttributionMeasure$ShortTextCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/attribution/AttributionMeasure$Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/attribution/AttributionMeasure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortTextCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/maplibre/android/attribution/AttributionMeasure$ShortTextCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/maplibre/android/attribution/AttributionMeasure;)Lorg/maplibre/android/attribution/AttributionLayout;
    .locals 2

    invoke-static {p1}, Lorg/maplibre/android/attribution/AttributionMeasure;->l(Lorg/maplibre/android/attribution/AttributionMeasure;)F

    move-result p0

    invoke-static {p1}, Lorg/maplibre/android/attribution/AttributionMeasure;->c(Lorg/maplibre/android/attribution/AttributionMeasure;)F

    move-result v0

    add-float/2addr v0, p0

    invoke-static {p1}, Lorg/maplibre/android/attribution/AttributionMeasure;->j(Lorg/maplibre/android/attribution/AttributionMeasure;)F

    move-result p0

    cmpg-float p0, v0, p0

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    invoke-static {p1}, Lorg/maplibre/android/attribution/AttributionMeasure;->d(Lorg/maplibre/android/attribution/AttributionMeasure;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p1}, Lorg/maplibre/android/attribution/AttributionMeasure;->f(Lorg/maplibre/android/attribution/AttributionMeasure;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p1}, Lorg/maplibre/android/attribution/AttributionMeasure;->c(Lorg/maplibre/android/attribution/AttributionMeasure;)F

    move-result p1

    invoke-static {p0, v1, p1}, Lorg/maplibre/android/attribution/AttributionMeasure;->m(Landroid/graphics/Bitmap;Landroid/widget/TextView;F)Landroid/graphics/PointF;

    move-result-object p0

    new-instance p1, Lorg/maplibre/android/attribution/AttributionLayout;

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, v1}, Lorg/maplibre/android/attribution/AttributionLayout;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/PointF;Z)V

    return-object p1

    :cond_0
    return-object v0
.end method
