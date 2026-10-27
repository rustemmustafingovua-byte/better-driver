.class public Lorg/maplibre/android/utils/AnimatorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/utils/AnimatorUtils$OnAnimationEndListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alpha(Landroid/view/View;F)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, p1, v0}, Lorg/maplibre/android/utils/AnimatorUtils;->alpha(Landroid/view/View;FLorg/maplibre/android/utils/AnimatorUtils$OnAnimationEndListener;)V

    return-void
.end method

.method public static alpha(Landroid/view/View;FLorg/maplibre/android/utils/AnimatorUtils$OnAnimationEndListener;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 3
    new-instance v0, Lorg/maplibre/android/utils/AnimatorUtils$4;

    invoke-direct {v0, p0, p2}, Lorg/maplibre/android/utils/AnimatorUtils$4;-><init>(Landroid/view/View;Lorg/maplibre/android/utils/AnimatorUtils$OnAnimationEndListener;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static animate(Landroid/view/View;I)V
    .locals 1

    const/4 v0, -0x1

    .line 8
    invoke-static {p0, p1, v0}, Lorg/maplibre/android/utils/AnimatorUtils;->animate(Landroid/view/View;II)V

    return-void
.end method

.method public static animate(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-static {p0, p1, p2, v0}, Lorg/maplibre/android/utils/AnimatorUtils;->animate(Landroid/view/View;IILorg/maplibre/android/utils/AnimatorUtils$OnAnimationEndListener;)V

    return-void
.end method

.method public static animate(Landroid/view/View;IILorg/maplibre/android/utils/AnimatorUtils$OnAnimationEndListener;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    int-to-long v0, p2

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 5
    :cond_1
    new-instance p2, Lorg/maplibre/android/utils/AnimatorUtils$1;

    invoke-direct {p2, p0, p3}, Lorg/maplibre/android/utils/AnimatorUtils$1;-><init>(Landroid/view/View;Lorg/maplibre/android/utils/AnimatorUtils$OnAnimationEndListener;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public static animate(Landroid/view/View;ILorg/maplibre/android/utils/AnimatorUtils$OnAnimationEndListener;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {p0, p1, v0, p2}, Lorg/maplibre/android/utils/AnimatorUtils;->animate(Landroid/view/View;IILorg/maplibre/android/utils/AnimatorUtils$OnAnimationEndListener;)V

    return-void
.end method

.method public static rotate(Landroid/view/View;F)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    sget-object v0, Landroid/view/View;->ROTATION:Landroid/util/Property;

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v0, Lorg/maplibre/android/utils/AnimatorUtils$2;

    invoke-direct {v0, p0}, Lorg/maplibre/android/utils/AnimatorUtils$2;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static rotateBy(Landroid/view/View;F)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, La4/a;

    sget-object v1, La4/a;->d:[F

    invoke-direct {v0, v1}, La4/b;-><init>([F)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/maplibre/android/utils/AnimatorUtils$3;

    invoke-direct {v0, p0}, Lorg/maplibre/android/utils/AnimatorUtils$3;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
