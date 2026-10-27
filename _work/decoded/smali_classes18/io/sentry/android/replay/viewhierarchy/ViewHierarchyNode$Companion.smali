.class public final Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;
.super Ljava/lang/Object;
.source "ViewHierarchyNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewHierarchyNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewHierarchyNode.kt\nio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,448:1\n1#2:449\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J*\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u001e\u0010\u000f\u001a\u00020\u0010*\u0006\u0012\u0002\u0008\u00030\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0013H\u0002J\u0014\u0010\u0014\u001a\u00020\u0010*\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0014\u0010\u0015\u001a\u00020\u0010*\u00020\u00162\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0014\u0010\u0017\u001a\u00020\u0010*\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;",
        "",
        "()V",
        "SENTRY_MASK_TAG",
        "",
        "SENTRY_UNMASK_TAG",
        "fromView",
        "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;",
        "view",
        "Landroid/view/View;",
        "parent",
        "distance",
        "",
        "options",
        "Lio/sentry/SentryMaskingOptions;",
        "isAssignableFrom",
        "",
        "Ljava/lang/Class;",
        "set",
        "",
        "isMaskContainer",
        "isUnmaskContainer",
        "Landroid/view/ViewParent;",
        "shouldMask",
        "sentry-android-replay_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;-><init>()V

    return-void
.end method

.method private final isAssignableFrom(Ljava/lang/Class;Ljava/util/Set;)Z
    .locals 3
    .param p1, "$this$isAssignableFrom"    # Ljava/lang/Class;
    .param p2, "set"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 308
    move-object v0, p1

    .line 309
    .local v0, "cls":Ljava/lang/Class;
    :goto_0
    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "canonicalName":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    const/4 v2, 0x1

    return v2

    .line 314
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .end local v1    # "canonicalName":Ljava/lang/String;
    goto :goto_0

    .line 316
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private final isMaskContainer(Landroid/view/View;Lio/sentry/SentryMaskingOptions;)Z
    .locals 2
    .param p1, "$this$isMaskContainer"    # Landroid/view/View;
    .param p2, "options"    # Lio/sentry/SentryMaskingOptions;

    .line 357
    invoke-virtual {p2}, Lio/sentry/SentryMaskingOptions;->getMaskViewContainerClass()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 358
    .local v0, "maskContainer":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private final isUnmaskContainer(Landroid/view/ViewParent;Lio/sentry/SentryMaskingOptions;)Z
    .locals 2
    .param p1, "$this$isUnmaskContainer"    # Landroid/view/ViewParent;
    .param p2, "options"    # Lio/sentry/SentryMaskingOptions;

    .line 352
    invoke-virtual {p2}, Lio/sentry/SentryMaskingOptions;->getUnmaskViewContainerClass()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 353
    .local v0, "unmaskContainer":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private final shouldMask(Landroid/view/View;Lio/sentry/SentryMaskingOptions;)Z
    .locals 7
    .param p1, "$this$shouldMask"    # Landroid/view/View;
    .param p2, "options"    # Lio/sentry/SentryMaskingOptions;

    .line 320
    nop

    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x2

    const-string v3, "toLowerCase(...)"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v6, "sentry-unmask"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v0, v6, v5, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v5

    :goto_1
    if-nez v0, :cond_9

    .line 322
    sget v0, Lio/sentry/android/replay/R$id;->sentry_privacy:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const-string v6, "unmask"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_5

    .line 328
    :cond_2
    nop

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_3

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_4

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/CharSequence;

    const-string v3, "sentry-mask"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v5, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_4

    move v0, v4

    goto :goto_3

    :cond_4
    move v0, v5

    :goto_3
    if-nez v0, :cond_8

    .line 330
    sget v0, Lio/sentry/android/replay/R$id;->sentry_privacy:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mask"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    .line 336
    :cond_5
    nop

    .line 337
    invoke-direct {p0, p1, p2}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;->isMaskContainer(Landroid/view/View;Lio/sentry/SentryMaskingOptions;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "getParent(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;->isUnmaskContainer(Landroid/view/ViewParent;Lio/sentry/SentryMaskingOptions;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 341
    return v5

    .line 344
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Lio/sentry/SentryMaskingOptions;->getUnmaskViewClasses()Ljava/util/Set;

    move-result-object v1

    const-string v2, "getUnmaskViewClasses(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;->isAssignableFrom(Ljava/lang/Class;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 345
    return v5

    .line 348
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Lio/sentry/SentryMaskingOptions;->getMaskViewClasses()Ljava/util/Set;

    move-result-object v1

    const-string v2, "getMaskViewClasses(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;->isAssignableFrom(Ljava/lang/Class;Ljava/util/Set;)Z

    move-result v0

    return v0

    .line 332
    :cond_8
    :goto_4
    invoke-virtual {p2}, Lio/sentry/SentryMaskingOptions;->trackCustomMasking()V

    .line 333
    return v4

    .line 324
    :cond_9
    :goto_5
    invoke-virtual {p2}, Lio/sentry/SentryMaskingOptions;->trackCustomMasking()V

    .line 325
    return v5
.end method


# virtual methods
.method public final fromView(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ILio/sentry/SentryMaskingOptions;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .param p3, "distance"    # I
    .param p4, "options"    # Lio/sentry/SentryMaskingOptions;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v1, p4

    const-string v2, "view"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "options"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    invoke-static {v0}, Lio/sentry/android/replay/util/ViewsKt;->isVisibleToUser(Landroid/view/View;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .local v11, "isVisible":Z
    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/graphics/Rect;

    .line 373
    .local v12, "visibleRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v11, :cond_0

    move-object/from16 v4, p0

    invoke-direct {v4, v0, v1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;->shouldMask(Landroid/view/View;Lio/sentry/SentryMaskingOptions;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v13, v3

    goto :goto_0

    :cond_0
    move-object/from16 v4, p0

    :cond_1
    move v13, v2

    .line 374
    .local v13, "shouldMask":Z
    :goto_0
    nop

    .line 375
    instance-of v5, v0, Landroid/widget/TextView;

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    .line 376
    if-eqz v8, :cond_2

    invoke-virtual {v8, v3}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->setImportantForCaptureToAncestors(Z)V

    .line 378
    :cond_2
    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 449
    .local v2, "it":Landroid/text/Layout;
    const/4 v3, 0x0

    .line 378
    .local v3, "$i$a$-let-ViewHierarchyNode$Companion$fromView$1":I
    new-instance v5, Lio/sentry/android/replay/util/AndroidTextLayout;

    invoke-direct {v5, v2}, Lio/sentry/android/replay/util/AndroidTextLayout;-><init>(Landroid/text/Layout;)V

    .end local v2    # "it":Landroid/text/Layout;
    .end local v3    # "$i$a$-let-ViewHierarchyNode$Companion$fromView$1":I
    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 379
    :goto_1
    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    invoke-static {v2}, Lio/sentry/android/replay/util/ViewsKt;->toOpaque(I)I

    move-result v2

    .line 380
    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v3

    .line 381
    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v7}, Lio/sentry/android/replay/util/ViewsKt;->getTotalPaddingTopSafe(Landroid/widget/TextView;)I

    move-result v7

    .line 382
    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getX()F

    move-result v9

    .line 383
    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getY()F

    move-result v10

    .line 384
    move-object v14, v0

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getWidth()I

    move-result v14

    .line 385
    move-object v15, v0

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getHeight()I

    move-result v15

    .line 386
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getElevation()F

    move-result v6

    :cond_4
    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/TextView;

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getElevation()F

    move-result v16

    add-float v6, v6, v16

    .line 377
    new-instance v1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;

    .line 378
    check-cast v5, Lio/sentry/android/replay/util/TextLayout;

    .line 379
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 380
    nop

    .line 381
    nop

    .line 382
    nop

    .line 383
    nop

    .line 384
    nop

    .line 385
    nop

    .line 386
    nop

    .line 388
    nop

    .line 389
    nop

    .line 387
    nop

    .line 390
    nop

    .line 391
    nop

    .line 392
    nop

    .line 377
    move v8, v14

    const/4 v14, 0x1

    move v4, v3

    move-object/from16 v16, v12

    move-object/from16 v12, p2

    move-object v3, v2

    move-object v2, v5

    move v5, v7

    move v7, v10

    move v10, v6

    move v6, v9

    move v9, v15

    move v15, v11

    move/from16 v11, p3

    .end local v11    # "isVisible":Z
    .end local v12    # "visibleRect":Landroid/graphics/Rect;
    .local v15, "isVisible":Z
    .local v16, "visibleRect":Landroid/graphics/Rect;
    invoke-direct/range {v1 .. v16}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;-><init>(Lio/sentry/android/replay/util/TextLayout;Ljava/lang/Integer;IIFFIIFILio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZZLandroid/graphics/Rect;)V

    move-object v8, v12

    move v11, v15

    move-object/from16 v12, v16

    .end local v15    # "isVisible":Z
    .end local v16    # "visibleRect":Landroid/graphics/Rect;
    .restart local v11    # "isVisible":Z
    .restart local v12    # "visibleRect":Landroid/graphics/Rect;
    check-cast v1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    return-object v1

    .line 396
    :cond_5
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_a

    .line 397
    if-eqz v8, :cond_6

    invoke-virtual {v8, v3}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->setImportantForCaptureToAncestors(Z)V

    .line 399
    :cond_6
    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    .line 400
    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getY()F

    move-result v4

    .line 401
    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    .line 402
    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    .line 403
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getElevation()F

    move-result v6

    :cond_7
    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getElevation()F

    move-result v9

    add-float/2addr v6, v9

    .line 408
    if-eqz v13, :cond_9

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-static {v9}, Lio/sentry/android/replay/util/ViewsKt;->isMaskable(Landroid/graphics/drawable/Drawable;)Z

    move-result v9

    if-ne v9, v3, :cond_8

    move v9, v3

    goto :goto_2

    :cond_8
    move v9, v2

    :goto_2
    if-eqz v9, :cond_9

    move v9, v3

    goto :goto_3

    :cond_9
    move v9, v2

    .line 398
    :goto_3
    move v2, v1

    new-instance v1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$ImageViewHierarchyNode;

    .line 399
    nop

    .line 400
    nop

    .line 401
    nop

    .line 402
    nop

    .line 403
    nop

    .line 404
    nop

    .line 405
    nop

    .line 408
    nop

    .line 407
    nop

    .line 406
    nop

    .line 409
    nop

    .line 398
    const/4 v10, 0x1

    move v3, v4

    move v4, v5

    move v5, v7

    move/from16 v7, p3

    invoke-direct/range {v1 .. v12}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$ImageViewHierarchyNode;-><init>(FFIIFILio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZZLandroid/graphics/Rect;)V

    check-cast v1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    return-object v1

    .line 413
    :cond_a
    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_d

    .line 414
    if-eqz v8, :cond_b

    invoke-virtual {v8, v3}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->setImportantForCaptureToAncestors(Z)V

    .line 415
    :cond_b
    new-instance v1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$SurfaceViewHierarchyNode;

    .line 416
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 417
    move-object v3, v0

    check-cast v3, Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getX()F

    move-result v3

    .line 418
    move-object v4, v0

    check-cast v4, Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getY()F

    move-result v4

    .line 419
    move-object v5, v0

    check-cast v5, Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getWidth()I

    move-result v5

    .line 420
    move-object v7, v0

    check-cast v7, Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getHeight()I

    move-result v7

    .line 421
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getElevation()F

    move-result v6

    :cond_c
    move-object v9, v0

    check-cast v9, Landroid/view/SurfaceView;

    invoke-virtual {v9}, Landroid/view/SurfaceView;->getElevation()F

    move-result v9

    add-float/2addr v6, v9

    .line 422
    nop

    .line 423
    nop

    .line 424
    nop

    .line 425
    nop

    .line 426
    nop

    .line 427
    nop

    .line 415
    move v15, v11

    .end local v11    # "isVisible":Z
    .restart local v15    # "isVisible":Z
    const/4 v11, 0x1

    move v9, v7

    move v7, v6

    move v6, v9

    move-object v9, v8

    move v10, v13

    move/from16 v8, p3

    move-object v13, v12

    move v12, v15

    .end local v15    # "isVisible":Z
    .local v10, "shouldMask":Z
    .local v12, "isVisible":Z
    .local v13, "visibleRect":Landroid/graphics/Rect;
    invoke-direct/range {v1 .. v13}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$SurfaceViewHierarchyNode;-><init>(Ljava/lang/ref/WeakReference;FFIIFILio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZZLandroid/graphics/Rect;)V

    move v11, v12

    move-object v12, v13

    move v13, v10

    .end local v10    # "shouldMask":Z
    .restart local v11    # "isVisible":Z
    .local v12, "visibleRect":Landroid/graphics/Rect;
    .local v13, "shouldMask":Z
    check-cast v1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    return-object v1

    .line 432
    :cond_d
    new-instance v1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$GenericViewHierarchyNode;

    .line 433
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v2

    .line 434
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    .line 435
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 436
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 437
    if-eqz p2, :cond_e

    invoke-virtual/range {p2 .. p2}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getElevation()F

    move-result v6

    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v7

    add-float/2addr v6, v7

    .line 438
    nop

    .line 439
    nop

    .line 440
    nop

    .line 441
    nop

    .line 442
    nop

    .line 443
    nop

    .line 432
    const/4 v10, 0x0

    move-object/from16 v8, p2

    move/from16 v7, p3

    move v9, v13

    .end local v13    # "shouldMask":Z
    .local v9, "shouldMask":Z
    invoke-direct/range {v1 .. v12}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$GenericViewHierarchyNode;-><init>(FFIIFILio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZZLandroid/graphics/Rect;)V

    .end local v9    # "shouldMask":Z
    .restart local v13    # "shouldMask":Z
    check-cast v1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    return-object v1
.end method
