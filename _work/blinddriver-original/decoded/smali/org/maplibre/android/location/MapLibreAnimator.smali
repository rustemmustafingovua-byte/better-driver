.class public abstract Lorg/maplibre/android/location/MapLibreAnimator;
.super Landroid/animation/ValueAnimator;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;,
        Lorg/maplibre/android/location/MapLibreAnimator$AnimatorListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/animation/ValueAnimator;",
        "Landroid/animation/ValueAnimator$AnimatorUpdateListener;"
    }
.end annotation


# static fields
.field static final ANIMATOR_CAMERA_COMPASS_BEARING:I = 0x5

.field static final ANIMATOR_CAMERA_GPS_BEARING:I = 0x4

.field static final ANIMATOR_CAMERA_LATLNG:I = 0x1

.field static final ANIMATOR_LAYER_ACCURACY:I = 0x6

.field static final ANIMATOR_LAYER_COMPASS_BEARING:I = 0x3

.field static final ANIMATOR_LAYER_GPS_BEARING:I = 0x2

.field static final ANIMATOR_LAYER_LATLNG:I = 0x0

.field static final ANIMATOR_PADDING:I = 0xa

.field static final ANIMATOR_PULSING_CIRCLE:I = 0x9

.field static final ANIMATOR_TILT:I = 0x8

.field static final ANIMATOR_ZOOM:I = 0x7


# instance fields
.field private animatedValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private invalid:Z

.field private final minUpdateInterval:D

.field private final target:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private timeElapsed:J

.field private final updateListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;Ljava/lang/Object;Ljava/lang/Object;DJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener<",
            "TK;>;TK;TK;DJ)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/maplibre/android/location/MapLibreAnimator;->updateListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    .line 11
    iput-object p2, p0, Lorg/maplibre/android/location/MapLibreAnimator;->target:Ljava/lang/Object;

    .line 12
    iput-object p3, p0, Lorg/maplibre/android/location/MapLibreAnimator;->animatedValue:Ljava/lang/Object;

    .line 13
    iput-wide p4, p0, Lorg/maplibre/android/location/MapLibreAnimator;->minUpdateInterval:D

    .line 14
    iput-wide p6, p0, Lorg/maplibre/android/location/MapLibreAnimator;->timeElapsed:J

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;",
            "Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener<",
            "TK;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    int-to-double v2, p3

    div-double/2addr v0, v2

    .line 2
    iput-wide v0, p0, Lorg/maplibre/android/location/MapLibreAnimator;->minUpdateInterval:D

    .line 3
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lorg/maplibre/android/location/MapLibreAnimator;->provideEvaluator()Landroid/animation/TypeEvaluator;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 5
    iput-object p2, p0, Lorg/maplibre/android/location/MapLibreAnimator;->updateListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    .line 6
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    iput-object p1, p0, Lorg/maplibre/android/location/MapLibreAnimator;->target:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    new-instance p1, Lorg/maplibre/android/location/MapLibreAnimator$AnimatorListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/maplibre/android/location/MapLibreAnimator$AnimatorListener;-><init>(Lorg/maplibre/android/location/MapLibreAnimator;I)V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/maplibre/android/location/MapLibreAnimator;)V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/location/MapLibreAnimator;->postUpdates()V

    return-void
.end method

.method private postUpdates()V
    .locals 1

    iget-boolean v0, p0, Lorg/maplibre/android/location/MapLibreAnimator;->invalid:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/location/MapLibreAnimator;->updateListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    iget-object p0, p0, Lorg/maplibre/android/location/MapLibreAnimator;->animatedValue:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;->onNewAnimationValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getTarget()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/location/MapLibreAnimator;->target:Ljava/lang/Object;

    return-object p0
.end method

.method public makeInvalid()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/location/MapLibreAnimator;->invalid:Z

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/MapLibreAnimator;->animatedValue:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/maplibre/android/location/MapLibreAnimator;->timeElapsed:J

    sub-long v2, v0, v2

    long-to-double v2, v2

    iget-wide v4, p0, Lorg/maplibre/android/location/MapLibreAnimator;->minUpdateInterval:D

    cmpg-double p1, v2, v4

    if-gez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/maplibre/android/location/MapLibreAnimator;->postUpdates()V

    iput-wide v0, p0, Lorg/maplibre/android/location/MapLibreAnimator;->timeElapsed:J

    return-void
.end method

.method public abstract provideEvaluator()Landroid/animation/TypeEvaluator;
.end method
