.class public final Lio/sentry/android/replay/RootViewsSpy$delegatingViewList$1;
.super Ljava/util/ArrayList;
.source "Windows.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/RootViewsSpy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindows.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Windows.kt\nio/sentry/android/replay/RootViewsSpy$delegatingViewList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,209:1\n1863#2:210\n1863#2,2:211\n1864#2:213\n1863#2,2:214\n1863#2,2:216\n*S KotlinDebug\n*F\n+ 1 Windows.kt\nio/sentry/android/replay/RootViewsSpy$delegatingViewList$1\n*L\n128#1:210\n129#1:211,2\n128#1:213\n136#1:214,2\n143#1:216,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\u0008\u0012\u0004\u0012\u00020\u0002`\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0002H\u0016J\u0016\u0010\u0007\u001a\u00020\u00052\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "io/sentry/android/replay/RootViewsSpy$delegatingViewList$1",
        "Ljava/util/ArrayList;",
        "Landroid/view/View;",
        "Lkotlin/collections/ArrayList;",
        "add",
        "",
        "element",
        "addAll",
        "elements",
        "",
        "removeAt",
        "index",
        "",
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


# instance fields
.field final synthetic this$0:Lio/sentry/android/replay/RootViewsSpy;


# direct methods
.method constructor <init>(Lio/sentry/android/replay/RootViewsSpy;)V
    .locals 0
    .param p1, "$receiver"    # Lio/sentry/android/replay/RootViewsSpy;

    iput-object p1, p0, Lio/sentry/android/replay/RootViewsSpy$delegatingViewList$1;->this$0:Lio/sentry/android/replay/RootViewsSpy;

    .line 125
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Landroid/view/View;)Z
    .locals 7
    .param p1, "element"    # Landroid/view/View;

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lio/sentry/android/replay/RootViewsSpy$delegatingViewList$1;->this$0:Lio/sentry/android/replay/RootViewsSpy;

    invoke-virtual {v0}, Lio/sentry/android/replay/RootViewsSpy;->getListeners()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 214
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lio/sentry/android/replay/OnRootViewsChangedListener;

    .local v4, "it":Lio/sentry/android/replay/OnRootViewsChangedListener;
    const/4 v5, 0x0

    .line 136
    .local v5, "$i$a$-forEach-RootViewsSpy$delegatingViewList$1$add$1":I
    const/4 v6, 0x1

    invoke-interface {v4, p1, v6}, Lio/sentry/android/replay/OnRootViewsChangedListener;->onRootViewsChanged(Landroid/view/View;Z)V

    .line 214
    .end local v4    # "it":Lio/sentry/android/replay/OnRootViewsChangedListener;
    .end local v5    # "$i$a$-forEach-RootViewsSpy$delegatingViewList$1$add$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 215
    :cond_0
    nop

    .line 137
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 125
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/RootViewsSpy$delegatingViewList$1;->add(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 13
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lio/sentry/android/replay/RootViewsSpy$delegatingViewList$1;->this$0:Lio/sentry/android/replay/RootViewsSpy;

    invoke-virtual {v0}, Lio/sentry/android/replay/RootViewsSpy;->getListeners()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 210
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lio/sentry/android/replay/OnRootViewsChangedListener;

    .local v4, "listener":Lio/sentry/android/replay/OnRootViewsChangedListener;
    const/4 v5, 0x0

    .line 129
    .local v5, "$i$a$-forEach-RootViewsSpy$delegatingViewList$1$addAll$1":I
    move-object v6, p1

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 211
    .local v7, "$i$f$forEach":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroid/view/View;

    .local v10, "element":Landroid/view/View;
    const/4 v11, 0x0

    .line 129
    .local v11, "$i$a$-forEach-RootViewsSpy$delegatingViewList$1$addAll$1$1":I
    const/4 v12, 0x1

    invoke-interface {v4, v10, v12}, Lio/sentry/android/replay/OnRootViewsChangedListener;->onRootViewsChanged(Landroid/view/View;Z)V

    .line 211
    .end local v10    # "element":Landroid/view/View;
    .end local v11    # "$i$a$-forEach-RootViewsSpy$delegatingViewList$1$addAll$1$1":I
    nop

    .end local v9    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 212
    :cond_0
    nop

    .line 130
    .end local v6    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$forEach":I
    nop

    .line 210
    .end local v4    # "listener":Lio/sentry/android/replay/OnRootViewsChangedListener;
    .end local v5    # "$i$a$-forEach-RootViewsSpy$delegatingViewList$1$addAll$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 213
    :cond_1
    nop

    .line 131
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge contains(Landroid/view/View;)Z
    .locals 1
    .param p1, "element"    # Landroid/view/View;

    .line 125
    invoke-super {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 125
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/RootViewsSpy$delegatingViewList$1;->contains(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public bridge getSize()I
    .locals 1

    .line 125
    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge indexOf(Landroid/view/View;)I
    .locals 1
    .param p1, "element"    # Landroid/view/View;

    .line 125
    invoke-super {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 125
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/RootViewsSpy$delegatingViewList$1;->indexOf(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public bridge lastIndexOf(Landroid/view/View;)I
    .locals 1
    .param p1, "element"    # Landroid/view/View;

    .line 125
    invoke-super {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 125
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/RootViewsSpy$delegatingViewList$1;->lastIndexOf(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final bridge remove(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 125
    invoke-virtual {p0, p1}, Lio/sentry/android/replay/RootViewsSpy$delegatingViewList$1;->removeAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 125
    invoke-virtual {p0, p1}, Lio/sentry/android/replay/RootViewsSpy$delegatingViewList$1;->remove(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge remove(Landroid/view/View;)Z
    .locals 1
    .param p1, "element"    # Landroid/view/View;

    .line 125
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 125
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/RootViewsSpy$delegatingViewList$1;->remove(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public removeAt(I)Landroid/view/View;
    .locals 8
    .param p1, "index"    # I

    .line 142
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "removeAt(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 143
    .local v0, "removedView":Landroid/view/View;
    iget-object v1, p0, Lio/sentry/android/replay/RootViewsSpy$delegatingViewList$1;->this$0:Lio/sentry/android/replay/RootViewsSpy;

    invoke-virtual {v1}, Lio/sentry/android/replay/RootViewsSpy;->getListeners()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 216
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lio/sentry/android/replay/OnRootViewsChangedListener;

    .local v5, "it":Lio/sentry/android/replay/OnRootViewsChangedListener;
    const/4 v6, 0x0

    .line 143
    .local v6, "$i$a$-forEach-RootViewsSpy$delegatingViewList$1$removeAt$1":I
    const/4 v7, 0x0

    invoke-interface {v5, v0, v7}, Lio/sentry/android/replay/OnRootViewsChangedListener;->onRootViewsChanged(Landroid/view/View;Z)V

    .line 216
    .end local v5    # "it":Lio/sentry/android/replay/OnRootViewsChangedListener;
    .end local v6    # "$i$a$-forEach-RootViewsSpy$delegatingViewList$1$removeAt$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 217
    :cond_0
    nop

    .line 144
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    return-object v0
.end method

.method public final bridge size()I
    .locals 1

    .line 125
    invoke-virtual {p0}, Lio/sentry/android/replay/RootViewsSpy$delegatingViewList$1;->getSize()I

    move-result v0

    return v0
.end method
