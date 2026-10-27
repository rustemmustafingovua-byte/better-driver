.class final Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MaskRenderer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/util/MaskRenderer;->renderMasks(Landroid/graphics/Bitmap;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Landroid/graphics/Matrix;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaskRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaskRenderer.kt\nio/sentry/android/replay/util/MaskRenderer$renderMasks$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,119:1\n1863#2,2:120\n*S KotlinDebug\n*F\n+ 1 MaskRenderer.kt\nio/sentry/android/replay/util/MaskRenderer$renderMasks$2\n*L\n78#1:120,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "node",
        "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;",
        "invoke",
        "(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic $canvas:Landroid/graphics/Canvas;

.field final synthetic $maskedRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scaleMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Lio/sentry/android/replay/util/MaskRenderer;


# direct methods
.method constructor <init>(Lio/sentry/android/replay/util/MaskRenderer;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Ljava/util/List;Landroid/graphics/Canvas;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/android/replay/util/MaskRenderer;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Matrix;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;->this$0:Lio/sentry/android/replay/util/MaskRenderer;

    iput-object p2, p0, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;->$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;->$scaleMatrix:Landroid/graphics/Matrix;

    iput-object p4, p0, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;->$maskedRects:Ljava/util/List;

    iput-object p5, p0, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;->$canvas:Landroid/graphics/Canvas;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)Ljava/lang/Boolean;
    .locals 13
    .param p1, "node"    # Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getShouldMask()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getWidth()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getHeight()I

    move-result v0

    if-lez v0, :cond_6

    .line 59
    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    nop

    .line 63
    instance-of v0, p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$ImageViewHierarchyNode;

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;->this$0:Lio/sentry/android/replay/util/MaskRenderer;

    iget-object v2, p0, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;->$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;->$scaleMatrix:Landroid/graphics/Matrix;

    invoke-static {v1, v2, v3, v4}, Lio/sentry/android/replay/util/MaskRenderer;->access$dominantColorForRect(Lio/sentry/android/replay/util/MaskRenderer;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_1

    .line 67
    :cond_1
    instance-of v0, p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_4

    .line 68
    move-object v0, p1

    check-cast v0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;

    invoke-virtual {v0}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;->getLayout()Lio/sentry/android/replay/util/TextLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/android/replay/util/TextLayout;->getDominantTextColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;

    invoke-virtual {v0}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;->getDominantColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 69
    .local v1, "textColor":I
    :cond_3
    move-object v0, p1

    check-cast v0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;

    invoke-virtual {v0}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;->getLayout()Lio/sentry/android/replay/util/TextLayout;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;

    invoke-virtual {v3}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;->getPaddingLeft()I

    move-result v3

    move-object v4, p1

    check-cast v4, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;

    invoke-virtual {v4}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;->getPaddingTop()I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lio/sentry/android/replay/util/ViewsKt;->getVisibleRects(Lio/sentry/android/replay/util/TextLayout;Landroid/graphics/Rect;II)Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 69
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .end local v1    # "textColor":I
    goto :goto_1

    .line 73
    :cond_4
    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 62
    :goto_1
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 61
    nop

    .local v1, "visibleRects":Ljava/util/List;
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 77
    .local v0, "color":I
    iget-object v2, p0, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;->this$0:Lio/sentry/android/replay/util/MaskRenderer;

    invoke-static {v2}, Lio/sentry/android/replay/util/MaskRenderer;->access$getMaskingPaint(Lio/sentry/android/replay/util/MaskRenderer;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    iget-object v3, p0, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;->$canvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;->this$0:Lio/sentry/android/replay/util/MaskRenderer;

    const/4 v5, 0x0

    .line 120
    .local v5, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Landroid/graphics/Rect;

    .local v8, "rect":Landroid/graphics/Rect;
    const/4 v9, 0x0

    .line 79
    .local v9, "$i$a$-forEach-MaskRenderer$renderMasks$2$1":I
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v4}, Lio/sentry/android/replay/util/MaskRenderer;->access$getMaskingPaint(Lio/sentry/android/replay/util/MaskRenderer;)Landroid/graphics/Paint;

    move-result-object v11

    const/high16 v12, 0x41200000    # 10.0f

    invoke-virtual {v3, v10, v12, v12, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 80
    nop

    .line 120
    .end local v8    # "rect":Landroid/graphics/Rect;
    .end local v9    # "$i$a$-forEach-MaskRenderer$renderMasks$2$1":I
    nop

    .end local v7    # "element$iv":Ljava/lang/Object;
    goto :goto_2

    .line 121
    :cond_5
    nop

    .line 81
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    iget-object v2, p0, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;->$maskedRects:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    .end local v0    # "color":I
    .end local v1    # "visibleRects":Ljava/util/List;
    :cond_6
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 57
    move-object v0, p1

    check-cast v0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;->invoke(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
