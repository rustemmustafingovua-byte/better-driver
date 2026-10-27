.class public final Lorg/maplibre/android/maps/widgets/CompassView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TIME_FADE_ANIMATION:J = 0x1f4L

.field public static final TIME_MAP_NORTH_ANIMATION:J = 0x96L

.field public static final TIME_WAIT_IDLE:J = 0x1f4L


# instance fields
.field private compassAnimationListener:Lorg/maplibre/android/maps/MapLibreMap$OnCompassAnimationListener;

.field private fadeAnimator:Lq3/u;

.field private fadeCompassViewFacingNorth:Z

.field private isAnimating:Z

.field private rotation:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/maplibre/android/maps/widgets/CompassView;->rotation:F

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/maplibre/android/maps/widgets/CompassView;->fadeCompassViewFacingNorth:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/maplibre/android/maps/widgets/CompassView;->isAnimating:Z

    .line 5
    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/widgets/CompassView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lorg/maplibre/android/maps/widgets/CompassView;->rotation:F

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lorg/maplibre/android/maps/widgets/CompassView;->fadeCompassViewFacingNorth:Z

    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p0, Lorg/maplibre/android/maps/widgets/CompassView;->isAnimating:Z

    .line 10
    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/widgets/CompassView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 12
    iput p2, p0, Lorg/maplibre/android/maps/widgets/CompassView;->rotation:F

    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p0, Lorg/maplibre/android/maps/widgets/CompassView;->fadeCompassViewFacingNorth:Z

    const/4 p2, 0x0

    .line 14
    iput-boolean p2, p0, Lorg/maplibre/android/maps/widgets/CompassView;->isAnimating:Z

    .line 15
    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/widgets/CompassView;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/widgets/CompassView;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-direct {v0, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private notifyCompassAnimationListenerWhenAnimating()V
    .locals 1

    iget-boolean v0, p0, Lorg/maplibre/android/maps/widgets/CompassView;->isAnimating:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/widgets/CompassView;->compassAnimationListener:Lorg/maplibre/android/maps/MapLibreMap$OnCompassAnimationListener;

    invoke-interface {p0}, Lorg/maplibre/android/maps/MapLibreMap$OnCompassAnimationListener;->onCompassAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method public fadeCompassViewFacingNorth(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/widgets/CompassView;->fadeCompassViewFacingNorth:Z

    return-void
.end method

.method public getCompassImage()Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public injectCompassAnimationListener(Lorg/maplibre/android/maps/MapLibreMap$OnCompassAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/widgets/CompassView;->compassAnimationListener:Lorg/maplibre/android/maps/MapLibreMap$OnCompassAnimationListener;

    return-void
.end method

.method public isAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/widgets/CompassView;->isAnimating:Z

    return-void
.end method

.method public isFacingNorth()Z
    .locals 4

    iget v0, p0, Lorg/maplibre/android/maps/widgets/CompassView;->rotation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x4076700000000000L    # 359.0

    cmpl-double v0, v0, v2

    if-gez v0, :cond_1

    iget p0, p0, Lorg/maplibre/android/maps/widgets/CompassView;->rotation:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isFadeCompassViewFacingNorth()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/widgets/CompassView;->fadeCompassViewFacingNorth:Z

    return p0
.end method

.method public isHidden()Z
    .locals 1

    iget-boolean v0, p0, Lorg/maplibre/android/maps/widgets/CompassView;->fadeCompassViewFacingNorth:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/widgets/CompassView;->isFacingNorth()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public resetAnimation()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/widgets/CompassView;->fadeAnimator:Lq3/u;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lq3/u;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/maplibre/android/maps/widgets/CompassView;->fadeAnimator:Lq3/u;

    return-void
.end method

.method public run()V
    .locals 5

    invoke-virtual {p0}, Lorg/maplibre/android/maps/widgets/CompassView;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/maplibre/android/maps/widgets/CompassView;->compassAnimationListener:Lorg/maplibre/android/maps/MapLibreMap$OnCompassAnimationListener;

    invoke-interface {v0}, Lorg/maplibre/android/maps/MapLibreMap$OnCompassAnimationListener;->onCompassAnimationFinished()V

    invoke-virtual {p0}, Lorg/maplibre/android/maps/widgets/CompassView;->resetAnimation()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    sget-object v0, Lq3/q;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lq3/q;->a:Ljava/util/WeakHashMap;

    :cond_0
    sget-object v0, Lq3/q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq3/u;

    if-nez v0, :cond_1

    new-instance v0, Lq3/u;

    invoke-direct {v0, p0}, Lq3/u;-><init>(Lorg/maplibre/android/maps/widgets/CompassView;)V

    sget-object v1, Lq3/q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, v0, Lq3/u;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_3
    iput-object v0, p0, Lorg/maplibre/android/maps/widgets/CompassView;->fadeAnimator:Lq3/u;

    new-instance v0, Lorg/maplibre/android/maps/widgets/CompassView$1;

    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/widgets/CompassView$1;-><init>(Lorg/maplibre/android/maps/widgets/CompassView;)V

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lq3/t;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p0, v3}, Lq3/t;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_4
    return-void
.end method

.method public setCompassImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/widgets/CompassView;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/widgets/CompassView;->resetAnimation()V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget p1, p0, Lorg/maplibre/android/maps/widgets/CompassView;->rotation:F

    float-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/maplibre/android/maps/widgets/CompassView;->update(D)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/android/maps/widgets/CompassView;->resetAnimation()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public update(D)V
    .locals 0

    double-to-float p1, p1

    iput p1, p0, Lorg/maplibre/android/maps/widgets/CompassView;->rotation:F

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/android/maps/widgets/CompassView;->isHidden()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lorg/maplibre/android/maps/widgets/CompassView;->fadeAnimator:Lq3/u;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x1f4

    invoke-virtual {p0, p0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lorg/maplibre/android/maps/widgets/CompassView;->resetAnimation()V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lorg/maplibre/android/maps/widgets/CompassView;->notifyCompassAnimationListenerWhenAnimating()V

    iget p1, p0, Lorg/maplibre/android/maps/widgets/CompassView;->rotation:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
