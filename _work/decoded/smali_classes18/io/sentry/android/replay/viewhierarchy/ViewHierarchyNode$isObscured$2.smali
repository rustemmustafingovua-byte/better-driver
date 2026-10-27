.class final Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$isObscured$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewHierarchyNode.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->isObscured(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)Z
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "otherNode",
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
.field final synthetic $isObscured:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $node:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

.field final synthetic this$0:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)V
    .locals 1

    iput-object p1, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$isObscured$2;->$isObscured:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$isObscured$2;->$node:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    iput-object p3, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$isObscured$2;->this$0:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "otherNode"    # Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    const-string v0, "otherNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    .line 207
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 206
    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$isObscured$2;->$isObscured:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 212
    :cond_0
    nop

    .line 213
    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 214
    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->isImportantForContentCapture()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 215
    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v3, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$isObscured$2;->$node:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    invoke-virtual {v3}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 221
    :cond_1
    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getElevation()F

    move-result v0

    iget-object v3, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$isObscured$2;->$node:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    invoke-virtual {v3}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getElevation()F

    move-result v3

    cmpl-float v0, v0, v3

    const/4 v3, 0x1

    if-lez v0, :cond_2

    .line 222
    iget-object v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$isObscured$2;->$isObscured:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v3, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 223
    return-object v2

    .line 224
    :cond_2
    invoke-virtual {p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getElevation()F

    move-result v0

    iget-object v2, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$isObscured$2;->$node:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    invoke-virtual {v2}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getElevation()F

    move-result v2

    cmpg-float v0, v0, v2

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    if-eqz v0, :cond_5

    .line 227
    iget-object v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$isObscured$2;->this$0:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    iget-object v2, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$isObscured$2;->$node:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    invoke-static {v0, v2, p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->access$findLCA(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->component1()Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    move-result-object v2

    .local v2, "lca":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    invoke-virtual {v0}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->component2()Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    move-result-object v4

    .local v4, "nodeAncestor":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    invoke-virtual {v0}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->component3()Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    move-result-object v0

    .line 230
    .local v0, "otherNodeAncestor":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    .line 231
    iget-object v5, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$isObscured$2;->$isObscured:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-virtual {v0}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getDistance()I

    move-result v6

    invoke-virtual {v4}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->getDistance()I

    move-result v7

    if-le v6, v7, :cond_4

    move v1, v3

    :cond_4
    iput-boolean v1, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 232
    iget-object v1, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$isObscured$2;->$isObscured:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    xor-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 235
    .end local v0    # "otherNodeAncestor":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .end local v2    # "lca":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .end local v4    # "nodeAncestor":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    :cond_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 217
    :cond_6
    :goto_1
    return-object v2

    .line 207
    :cond_7
    :goto_2
    return-object v2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 203
    move-object v0, p1

    check-cast v0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$isObscured$2;->invoke(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
