.class public Landroidx/transition/ChangeClipBounds;
.super Landroidx/transition/Transition;
.source "ChangeClipBounds.java"


# static fields
.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:clipBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:clipBounds:clip"

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-string v0, "android:clipBounds:clip"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 57
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 6
    .param p1, "values"    # Landroidx/transition/TransitionValues;

    .line 61
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 62
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 63
    return-void

    .line 66
    :cond_0
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 67
    .local v1, "clip":Landroid/graphics/Rect;
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:clipBounds:clip"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    if-nez v1, :cond_1

    .line 69
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 70
    .local v2, "bounds":Landroid/graphics/Rect;
    iget-object v3, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:clipBounds:bounds"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 81
    invoke-direct {p0, p1}, Landroidx/transition/ChangeClipBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 82
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 76
    invoke-direct {p0, p1}, Landroidx/transition/ChangeClipBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 77
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroidx/transition/TransitionValues;
    .param p3, "endValues"    # Landroidx/transition/TransitionValues;

    .line 89
    const/4 v0, 0x0

    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    iget-object v1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 90
    const-string v2, "android:clipBounds:clip"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 91
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 94
    :cond_0
    iget-object v1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 95
    .local v1, "start":Landroid/graphics/Rect;
    iget-object v3, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 96
    .local v2, "end":Landroid/graphics/Rect;
    if-nez v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 97
    .local v3, "endIsNull":Z
    :goto_0
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 98
    return-object v0

    .line 101
    :cond_2
    const-string v4, "android:clipBounds:bounds"

    if-nez v1, :cond_3

    .line 102
    iget-object v5, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Landroid/graphics/Rect;

    goto :goto_1

    .line 103
    :cond_3
    if-nez v2, :cond_4

    .line 104
    iget-object v5, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Landroid/graphics/Rect;

    .line 106
    :cond_4
    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 107
    return-object v0

    .line 110
    :cond_5
    iget-object v0, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 111
    new-instance v0, Landroidx/transition/RectEvaluator;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v4}, Landroidx/transition/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    .line 112
    .local v0, "evaluator":Landroidx/transition/RectEvaluator;
    iget-object v4, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget-object v5, Landroidx/transition/ViewUtils;->CLIP_BOUNDS:Landroid/util/Property;

    filled-new-array {v1, v2}, [Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {v4, v5, v0, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 114
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    if-eqz v3, :cond_6

    .line 115
    iget-object v5, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 116
    .local v5, "endView":Landroid/view/View;
    new-instance v6, Landroidx/transition/ChangeClipBounds$1;

    invoke-direct {v6, p0, v5}, Landroidx/transition/ChangeClipBounds$1;-><init>(Landroidx/transition/ChangeClipBounds;Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 123
    .end local v5    # "endView":Landroid/view/View;
    :cond_6
    return-object v4

    .line 92
    .end local v0    # "evaluator":Landroidx/transition/RectEvaluator;
    .end local v1    # "start":Landroid/graphics/Rect;
    .end local v2    # "end":Landroid/graphics/Rect;
    .end local v3    # "endIsNull":Z
    .end local v4    # "animator":Landroid/animation/ObjectAnimator;
    :cond_7
    :goto_2
    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Landroidx/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method
