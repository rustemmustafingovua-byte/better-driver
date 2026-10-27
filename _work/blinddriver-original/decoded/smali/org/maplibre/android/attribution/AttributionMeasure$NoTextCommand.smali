.class Lorg/maplibre/android/attribution/AttributionMeasure$NoTextCommand;
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
    name = "NoTextCommand"
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
    invoke-direct {p0}, Lorg/maplibre/android/attribution/AttributionMeasure$NoTextCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/maplibre/android/attribution/AttributionMeasure;)Lorg/maplibre/android/attribution/AttributionLayout;
    .locals 1

    new-instance p0, Lorg/maplibre/android/attribution/AttributionLayout;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, v0}, Lorg/maplibre/android/attribution/AttributionLayout;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/PointF;Z)V

    return-object p0
.end method
