.class public final Lorg/maplibre/android/geometry/LatLng$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/geometry/LatLng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lj9/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/maplibre/android/geometry/LatLng$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final wrap(DDD)D
    .locals 4

    sub-double v0, p5, p3

    sub-double v2, p1, p3

    rem-double/2addr v2, v0

    add-double/2addr v2, v0

    rem-double/2addr v2, v0

    cmpl-double p0, p1, p5

    if-ltz p0, :cond_0

    const-wide/16 p0, 0x0

    cmpg-double p0, v2, p0

    if-nez p0, :cond_0

    return-wide p5

    :cond_0
    add-double/2addr v2, p3

    return-wide v2
.end method
