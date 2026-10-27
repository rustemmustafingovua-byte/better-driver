.class public final Lorg/maplibre/android/location/MapLibrePaddingAnimator;
.super Lorg/maplibre/android/location/MapLibreAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/maplibre/android/location/MapLibreAnimator<",
        "[D>;"
    }
.end annotation


# direct methods
.method public constructor <init>([[DLorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[D",
            "Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener<",
            "[D>;",
            "Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "values"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateListener"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7fffffff

    invoke-direct {p0, p1, p2, v0}, Lorg/maplibre/android/location/MapLibreAnimator;-><init>([Ljava/lang/Object;Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;I)V

    new-instance p1, Lorg/maplibre/android/location/MapLibreAnimatorListener;

    invoke-direct {p1, p3}, Lorg/maplibre/android/location/MapLibreAnimatorListener;-><init>(Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public provideEvaluator()Landroid/animation/TypeEvaluator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/animation/TypeEvaluator<",
            "[D>;"
        }
    .end annotation

    new-instance p0, Lorg/maplibre/android/location/PaddingEvaluator;

    invoke-direct {p0}, Lorg/maplibre/android/location/PaddingEvaluator;-><init>()V

    return-object p0
.end method
