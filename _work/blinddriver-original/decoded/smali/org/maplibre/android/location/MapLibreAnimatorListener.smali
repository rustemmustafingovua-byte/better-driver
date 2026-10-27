.class public final Lorg/maplibre/android/location/MapLibreAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field private final cancelableCallback:Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/location/MapLibreAnimatorListener;->cancelableCallback:Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/android/location/MapLibreAnimatorListener;->cancelableCallback:Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;->onCancel()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/android/location/MapLibreAnimatorListener;->cancelableCallback:Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;->onFinish()V

    :cond_0
    return-void
.end method
