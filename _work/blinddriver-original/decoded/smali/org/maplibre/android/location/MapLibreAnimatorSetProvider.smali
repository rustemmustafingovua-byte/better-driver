.class Lorg/maplibre/android/location/MapLibreAnimatorSetProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lorg/maplibre/android/location/MapLibreAnimatorSetProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/maplibre/android/location/MapLibreAnimatorSetProvider;
    .locals 1

    sget-object v0, Lorg/maplibre/android/location/MapLibreAnimatorSetProvider;->instance:Lorg/maplibre/android/location/MapLibreAnimatorSetProvider;

    if-nez v0, :cond_0

    new-instance v0, Lorg/maplibre/android/location/MapLibreAnimatorSetProvider;

    invoke-direct {v0}, Lorg/maplibre/android/location/MapLibreAnimatorSetProvider;-><init>()V

    sput-object v0, Lorg/maplibre/android/location/MapLibreAnimatorSetProvider;->instance:Lorg/maplibre/android/location/MapLibreAnimatorSetProvider;

    :cond_0
    sget-object v0, Lorg/maplibre/android/location/MapLibreAnimatorSetProvider;->instance:Lorg/maplibre/android/location/MapLibreAnimatorSetProvider;

    return-object v0
.end method


# virtual methods
.method public startAnimation(Ljava/util/List;Landroid/view/animation/Interpolator;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/animation/Interpolator;",
            "J)V"
        }
    .end annotation

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {p0, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
