.class public final Lio/sentry/android/core/internal/gestures/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/internal/gestures/ViewUtils$ViewWithLocation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findTarget(Lio/sentry/android/core/SentryAndroidOptions;Landroid/view/View;FFLio/sentry/internal/gestures/UiElement$Type;)Lio/sentry/internal/gestures/UiElement;
    .locals 16
    .param p0, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p1, "decorView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "targetType"    # Lio/sentry/internal/gestures/UiElement$Type;

    .line 88
    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual/range {p0 .. p0}, Lio/sentry/android/core/SentryAndroidOptions;->getGestureTargetLocators()Ljava/util/List;

    move-result-object v3

    .line 89
    .local v3, "locators":Ljava/util/List;, "Ljava/util/List<Lio/sentry/internal/gestures/GestureTargetLocator;>;"
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 92
    .local v4, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lio/sentry/android/core/internal/gestures/ViewUtils$ViewWithLocation;>;"
    new-instance v5, Lio/sentry/android/core/internal/gestures/ViewUtils$ViewWithLocation;

    move-object/from16 v6, p1

    invoke-direct {v5, v6, v0, v1}, Lio/sentry/android/core/internal/gestures/ViewUtils$ViewWithLocation;-><init>(Landroid/view/View;FF)V

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 94
    const/4 v5, 0x0

    .line 95
    .local v5, "target":Lio/sentry/internal/gestures/UiElement;
    :goto_0
    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 96
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/sentry/android/core/internal/gestures/ViewUtils$ViewWithLocation;

    .line 97
    .local v7, "current":Lio/sentry/android/core/internal/gestures/ViewUtils$ViewWithLocation;
    iget-object v8, v7, Lio/sentry/android/core/internal/gestures/ViewUtils$ViewWithLocation;->view:Landroid/view/View;

    .line 99
    .local v8, "view":Landroid/view/View;
    iget v9, v7, Lio/sentry/android/core/internal/gestures/ViewUtils$ViewWithLocation;->x:F

    iget v10, v7, Lio/sentry/android/core/internal/gestures/ViewUtils$ViewWithLocation;->y:F

    invoke-static {v8, v9, v10}, Lio/sentry/android/core/internal/gestures/ViewUtils;->touchWithinBounds(Landroid/view/View;FF)Z

    move-result v9

    if-nez v9, :cond_0

    .line 101
    goto :goto_0

    .line 104
    :cond_0
    instance-of v9, v8, Landroid/view/ViewGroup;

    if-eqz v9, :cond_2

    .line 105
    move-object v9, v8

    check-cast v9, Landroid/view/ViewGroup;

    .line 106
    .local v9, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v10

    .line 107
    .local v10, "scrollX":I
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v11

    .line 108
    .local v11, "scrollY":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-ge v12, v13, :cond_2

    .line 109
    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 110
    .local v13, "child":Landroid/view/View;
    if-eqz v13, :cond_1

    .line 111
    iget v14, v7, Lio/sentry/android/core/internal/gestures/ViewUtils$ViewWithLocation;->x:F

    iget v15, v7, Lio/sentry/android/core/internal/gestures/ViewUtils$ViewWithLocation;->y:F

    invoke-static {v13, v14, v15, v10, v11}, Lio/sentry/android/core/internal/gestures/ViewUtils;->mapToChild(Landroid/view/View;FFII)Lio/sentry/android/core/internal/gestures/ViewUtils$ViewWithLocation;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v13    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 118
    .end local v9    # "viewGroup":Landroid/view/ViewGroup;
    .end local v10    # "scrollX":I
    .end local v11    # "scrollY":I
    .end local v12    # "i":I
    :cond_2
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 119
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/sentry/internal/gestures/GestureTargetLocator;

    .line 120
    .local v10, "locator":Lio/sentry/internal/gestures/GestureTargetLocator;
    invoke-interface {v10, v8, v0, v1, v2}, Lio/sentry/internal/gestures/GestureTargetLocator;->locate(Ljava/lang/Object;FFLio/sentry/internal/gestures/UiElement$Type;)Lio/sentry/internal/gestures/UiElement;

    move-result-object v11

    .line 121
    .local v11, "newTarget":Lio/sentry/internal/gestures/UiElement;
    if-eqz v11, :cond_4

    .line 122
    sget-object v12, Lio/sentry/internal/gestures/UiElement$Type;->CLICKABLE:Lio/sentry/internal/gestures/UiElement$Type;

    if-ne v2, v12, :cond_3

    .line 123
    move-object v5, v11

    goto :goto_3

    .line 124
    :cond_3
    sget-object v12, Lio/sentry/internal/gestures/UiElement$Type;->SCROLLABLE:Lio/sentry/internal/gestures/UiElement$Type;

    if-ne v2, v12, :cond_4

    .line 125
    return-object v11

    .line 118
    .end local v10    # "locator":Lio/sentry/internal/gestures/GestureTargetLocator;
    .end local v11    # "newTarget":Lio/sentry/internal/gestures/UiElement;
    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 129
    .end local v7    # "current":Lio/sentry/android/core/internal/gestures/ViewUtils$ViewWithLocation;
    .end local v8    # "view":Landroid/view/View;
    .end local v9    # "i":I
    :cond_5
    goto :goto_0

    .line 130
    :cond_6
    return-object v5
.end method

.method public static getResourceIdOrNull(Landroid/view/View;)Ljava/lang/String;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 172
    .local v0, "viewId":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    invoke-static {v0}, Lio/sentry/android/core/internal/gestures/ViewUtils;->isViewIdGenerated(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 176
    .local v1, "resources":Landroid/content/res/Resources;
    if-nez v1, :cond_1

    .line 177
    const-string v2, ""

    return-object v2

    .line 180
    :cond_1
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 181
    :catch_0
    move-exception v3

    .line 182
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    return-object v2

    .line 173
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    :goto_0
    return-object v2
.end method

.method static getResourceIdWithFallback(Landroid/view/View;)Ljava/lang/String;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 153
    invoke-static {p0}, Lio/sentry/android/core/internal/gestures/ViewUtils;->getResourceIdOrNull(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "resourceId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 158
    :cond_0
    return-object v0
.end method

.method private static isViewIdGenerated(I)Z
    .locals 1
    .param p0, "id"    # I

    .line 187
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const v0, 0xffffff

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static mapToChild(Landroid/view/View;FFII)Lio/sentry/android/core/internal/gestures/ViewUtils$ViewWithLocation;
    .locals 7
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parentX"    # F
    .param p2, "parentY"    # F
    .param p3, "parentScrollX"    # I
    .param p4, "parentScrollY"    # I

    .line 54
    int-to-float v0, p3

    add-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 55
    .local v0, "childX":F
    int-to-float v1, p4

    add-float/2addr v1, p2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 57
    .local v1, "childY":F
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 58
    .local v2, "matrix":Landroid/graphics/Matrix;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-nez v3, :cond_0

    .line 59
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 60
    .local v3, "inverse":Landroid/graphics/Matrix;
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v6, 0x1

    aput v1, v4, v6

    .line 62
    .local v4, "point":[F
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 63
    aget v0, v4, v5

    .line 64
    aget v1, v4, v6

    .line 67
    .end local v3    # "inverse":Landroid/graphics/Matrix;
    .end local v4    # "point":[F
    :cond_0
    new-instance v3, Lio/sentry/android/core/internal/gestures/ViewUtils$ViewWithLocation;

    invoke-direct {v3, p0, v0, v1}, Lio/sentry/android/core/internal/gestures/ViewUtils$ViewWithLocation;-><init>(Landroid/view/View;FF)V

    return-object v3
.end method

.method private static touchWithinBounds(Landroid/view/View;FF)Z
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .line 32
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 33
    return v0

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 37
    .local v1, "w":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 39
    .local v2, "h":I
    const/4 v3, 0x0

    cmpg-float v4, p1, v3

    if-ltz v4, :cond_1

    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-gtz v4, :cond_1

    cmpg-float v3, p2, v3

    if-ltz v3, :cond_1

    int-to-float v3, v2

    cmpl-float v3, p2, v3

    if-gtz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
