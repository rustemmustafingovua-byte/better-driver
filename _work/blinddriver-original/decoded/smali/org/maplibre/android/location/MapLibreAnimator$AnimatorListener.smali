.class Lorg/maplibre/android/location/MapLibreAnimator$AnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/location/MapLibreAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/location/MapLibreAnimator;


# direct methods
.method private constructor <init>(Lorg/maplibre/android/location/MapLibreAnimator;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/maplibre/android/location/MapLibreAnimator$AnimatorListener;->this$0:Lorg/maplibre/android/location/MapLibreAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/maplibre/android/location/MapLibreAnimator;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/maplibre/android/location/MapLibreAnimator$AnimatorListener;-><init>(Lorg/maplibre/android/location/MapLibreAnimator;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/MapLibreAnimator$AnimatorListener;->this$0:Lorg/maplibre/android/location/MapLibreAnimator;

    invoke-static {p0}, Lorg/maplibre/android/location/MapLibreAnimator;->a(Lorg/maplibre/android/location/MapLibreAnimator;)V

    return-void
.end method
