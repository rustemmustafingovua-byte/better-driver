.class public final Lio/sentry/android/replay/util/ViewsKt;
.super Ljava/lang/Object;
.source "Views.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0005\u001a\u00020\u0006*\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0000\u001a\u0016\u0010\n\u001a\u00020\u0006*\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\u000bH\u0000\u001a,\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r*\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0001H\u0000\u001a\u000c\u0010\u0013\u001a\u00020\u0014*\u00020\u0007H\u0000\u001a\u000e\u0010\u0015\u001a\u00020\u0014*\u0004\u0018\u00010\u0016H\u0001\u001a\u001a\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0018*\u00020\u0007H\u0000\u001a\u0016\u0010\u0019\u001a\u00020\u0006*\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0000\u001a\u0016\u0010\u001a\u001a\u00020\u0006*\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\u000bH\u0000\u001a\u000c\u0010\u001b\u001a\u00020\u0001*\u00020\u0001H\u0000\u001a6\u0010\u001c\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0010\u0008\u0002\u0010#\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$H\u0001\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006&"
    }
    d2 = {
        "totalPaddingTopSafe",
        "",
        "Landroid/widget/TextView;",
        "getTotalPaddingTopSafe",
        "(Landroid/widget/TextView;)I",
        "addOnDrawListenerSafe",
        "",
        "Landroid/view/View;",
        "listener",
        "Landroid/view/ViewTreeObserver$OnDrawListener;",
        "addOnPreDrawListenerSafe",
        "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
        "getVisibleRects",
        "",
        "Landroid/graphics/Rect;",
        "Lio/sentry/android/replay/util/TextLayout;",
        "globalRect",
        "paddingLeft",
        "paddingTop",
        "hasSize",
        "",
        "isMaskable",
        "Landroid/graphics/drawable/Drawable;",
        "isVisibleToUser",
        "Lkotlin/Pair;",
        "removeOnDrawListenerSafe",
        "removeOnPreDrawListenerSafe",
        "toOpaque",
        "traverse",
        "parentNode",
        "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;",
        "options",
        "Lio/sentry/SentryMaskingOptions;",
        "logger",
        "Lio/sentry/ILogger;",
        "surfaceViewNodes",
        "",
        "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$SurfaceViewHierarchyNode;",
        "sentry-android-replay_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final addOnDrawListenerSafe(Landroid/view/View;Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 1
    .param p0, "$this$addOnDrawListenerSafe"    # Landroid/view/View;
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnDrawListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 231
    :cond_0
    nop

    .line 232
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 236
    :goto_0
    return-void

    .line 229
    :cond_1
    :goto_1
    return-void
.end method

.method public static final addOnPreDrawListenerSafe(Landroid/view/View;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1
    .param p0, "$this$addOnPreDrawListenerSafe"    # Landroid/view/View;
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 253
    :cond_0
    nop

    .line 254
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 258
    :goto_0
    return-void

    .line 251
    :cond_1
    :goto_1
    return-void
.end method

.method public static final getTotalPaddingTopSafe(Landroid/widget/TextView;)I
    .locals 2
    .param p0, "$this$totalPaddingTopSafe"    # Landroid/widget/TextView;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    nop

    .line 163
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    move v0, v1

    .line 166
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_0
    return v0
.end method

.method public static final getVisibleRects(Lio/sentry/android/replay/util/TextLayout;Landroid/graphics/Rect;II)Ljava/util/List;
    .locals 10
    .param p0, "$this$getVisibleRects"    # Lio/sentry/android/replay/util/TextLayout;
    .param p1, "globalRect"    # Landroid/graphics/Rect;
    .param p2, "paddingLeft"    # I
    .param p3, "paddingTop"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/android/replay/util/TextLayout;",
            "Landroid/graphics/Rect;",
            "II)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    const-string v0, "globalRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    if-nez p0, :cond_0

    .line 134
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 137
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 138
    .local v0, "rects":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Lio/sentry/android/replay/util/TextLayout;->getLineCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 139
    invoke-interface {p0, v1}, Lio/sentry/android/replay/util/TextLayout;->getLineLeft(I)F

    move-result v3

    float-to-int v3, v3

    .line 140
    .local v3, "lineLeft":I
    invoke-interface {p0, v1}, Lio/sentry/android/replay/util/TextLayout;->getLineRight(I)F

    move-result v4

    float-to-int v4, v4

    .line 141
    .local v4, "lineRight":I
    invoke-interface {p0, v1}, Lio/sentry/android/replay/util/TextLayout;->getLineTop(I)I

    move-result v5

    .line 142
    .local v5, "lineTop":I
    invoke-interface {p0, v1}, Lio/sentry/android/replay/util/TextLayout;->getLineBottom(I)I

    move-result v6

    .line 143
    .local v6, "lineBottom":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 145
    .local v7, "rect":Landroid/graphics/Rect;
    iget v8, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, p2

    add-int/2addr v8, v3

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 146
    iget v8, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, p2

    add-int/2addr v8, v4

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 147
    iget v8, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, p3

    add-int/2addr v8, v5

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 148
    iget v8, v7, Landroid/graphics/Rect;->top:I

    sub-int v9, v6, v5

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 150
    move-object v8, v0

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v3    # "lineLeft":I
    .end local v4    # "lineRight":I
    .end local v5    # "lineTop":I
    .end local v6    # "lineBottom":I
    .end local v7    # "rect":Landroid/graphics/Rect;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static final hasSize(Landroid/view/View;)Z
    .locals 1
    .param p0, "$this$hasSize"    # Landroid/view/View;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isMaskable(Landroid/graphics/drawable/Drawable;)Z
    .locals 5
    .param p0, "$this$isMaskable"    # Landroid/graphics/drawable/Drawable;

    .line 115
    nop

    .line 119
    nop

    .line 118
    nop

    .line 117
    nop

    .line 116
    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 117
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    .line 118
    :cond_1
    instance-of v0, p0, Landroid/graphics/drawable/VectorDrawable;

    :goto_1
    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    .line 119
    :cond_2
    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    :goto_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v1, v2

    goto :goto_4

    .line 120
    :cond_3
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_6

    .line 121
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    return v2

    .line 122
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v3, v4, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    return v1

    .line 124
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_6
    nop

    .line 115
    :goto_4
    return v1
.end method

.method public static final isVisibleToUser(Landroid/view/View;)Lkotlin/Pair;
    .locals 7
    .param p0, "$this$isVisibleToUser"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 105
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 81
    if-eqz v0, :cond_5

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0

    .line 88
    :cond_0
    move-object v0, p0

    .line 89
    .local v0, "current":Ljava/lang/Object;
    :goto_0
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_4

    .line 90
    move-object v3, v0

    .line 91
    .local v3, "view":Ljava/lang/Object;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTransitionAlpha()F

    move-result v4

    goto :goto_1

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    .line 94
    .local v4, "transitionAlpha":F
    :goto_1
    move-object v5, v3

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-lez v5, :cond_3

    cmpg-float v5, v4, v6

    if-lez v5, :cond_3

    move-object v5, v3

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 97
    :cond_2
    move-object v5, v3

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v3    # "view":Ljava/lang/Object;
    .end local v4    # "transitionAlpha":F
    goto :goto_0

    .line 95
    .restart local v3    # "view":Ljava/lang/Object;
    .restart local v4    # "transitionAlpha":F
    :cond_3
    :goto_2
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    return-object v1

    .line 100
    .end local v3    # "view":Ljava/lang/Object;
    .end local v4    # "transitionAlpha":F
    :cond_4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 101
    .local v1, "rect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 102
    .local v2, "offset":Landroid/graphics/Point;
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v3

    .line 103
    .local v3, "isVisible":Z
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    return-object v4

    .line 105
    .end local v0    # "current":Ljava/lang/Object;
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "offset":Landroid/graphics/Point;
    .end local v3    # "isVisible":Z
    :cond_5
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static final removeOnDrawListenerSafe(Landroid/view/View;Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 1
    .param p0, "$this$removeOnDrawListenerSafe"    # Landroid/view/View;
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnDrawListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 242
    :cond_0
    nop

    .line 243
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 247
    :goto_0
    return-void

    .line 240
    :cond_1
    :goto_1
    return-void
.end method

.method public static final removeOnPreDrawListenerSafe(Landroid/view/View;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1
    .param p0, "$this$removeOnPreDrawListenerSafe"    # Landroid/view/View;
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 264
    :cond_0
    nop

    .line 265
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 269
    :goto_0
    return-void

    .line 262
    :cond_1
    :goto_1
    return-void
.end method

.method public static final toOpaque(I)I
    .locals 1
    .param p0, "$this$toOpaque"    # I

    .line 169
    const/high16 v0, -0x1000000

    or-int/2addr v0, p0

    return v0
.end method

.method public static final traverse(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/SentryMaskingOptions;Lio/sentry/ILogger;Ljava/util/List;)V
    .locals 6
    .param p0, "$this$traverse"    # Landroid/view/View;
    .param p1, "parentNode"    # Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .param p2, "options"    # Lio/sentry/SentryMaskingOptions;
    .param p3, "logger"    # Lio/sentry/ILogger;
    .param p4, "surfaceViewNodes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;",
            "Lio/sentry/SentryMaskingOptions;",
            "Lio/sentry/ILogger;",
            "Ljava/util/List<",
            "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$SurfaceViewHierarchyNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 44
    return-void

    .line 47
    :cond_0
    sget-object v0, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;->INSTANCE:Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;

    invoke-virtual {v0, p0, p1, p2, p3}, Lio/sentry/android/replay/viewhierarchy/ComposeViewHierarchyNode;->fromView(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/SentryMaskingOptions;Lio/sentry/ILogger;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    return-void

    .line 53
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 54
    return-void

    .line 57
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    .local v0, "childNodes":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_5

    .line 59
    move-object v3, p0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 60
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_4

    .line 61
    sget-object v4, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->Companion:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;

    move-object v5, p0

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v3, p1, v5, p2}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;->fromView(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ILio/sentry/SentryMaskingOptions;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    move-result-object v4

    .line 62
    .local v4, "childNode":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    nop

    .line 64
    if-eqz p4, :cond_3

    .line 65
    instance-of v5, v4, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$SurfaceViewHierarchyNode;

    if-eqz v5, :cond_3

    .line 66
    invoke-virtual {v4}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 68
    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_3
    invoke-static {v3, v4, p2, p3, p4}, Lio/sentry/android/replay/util/ViewsKt;->traverse(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/SentryMaskingOptions;Lio/sentry/ILogger;Ljava/util/List;)V

    .line 58
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childNode":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "i":I
    :cond_5
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-virtual {p1, v1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->setChildren(Ljava/util/List;)V

    .line 74
    return-void
.end method

.method public static synthetic traverse$default(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/SentryMaskingOptions;Lio/sentry/ILogger;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    .line 37
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 41
    const/4 p4, 0x0

    .line 37
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/sentry/android/replay/util/ViewsKt;->traverse(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/SentryMaskingOptions;Lio/sentry/ILogger;Ljava/util/List;)V

    return-void
.end method
