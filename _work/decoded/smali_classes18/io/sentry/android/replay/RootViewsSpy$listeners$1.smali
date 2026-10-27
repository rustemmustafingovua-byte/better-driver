.class public final Lio/sentry/android/replay/RootViewsSpy$listeners$1;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
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
        "Ljava/util/concurrent/CopyOnWriteArrayList<",
        "Lio/sentry/android/replay/OnRootViewsChangedListener;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindows.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Windows.kt\nio/sentry/android/replay/RootViewsSpy$listeners$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,209:1\n1863#2,2:210\n*S KotlinDebug\n*F\n+ 1 Windows.kt\nio/sentry/android/replay/RootViewsSpy$listeners$1\n*L\n118#1:210,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "io/sentry/android/replay/RootViewsSpy$listeners$1",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Lio/sentry/android/replay/OnRootViewsChangedListener;",
        "add",
        "",
        "element",
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

    iput-object p1, p0, Lio/sentry/android/replay/RootViewsSpy$listeners$1;->this$0:Lio/sentry/android/replay/RootViewsSpy;

    .line 114
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lio/sentry/android/replay/OnRootViewsChangedListener;)Z
    .locals 10
    .param p1, "element"    # Lio/sentry/android/replay/OnRootViewsChangedListener;

    .line 116
    iget-object v0, p0, Lio/sentry/android/replay/RootViewsSpy$listeners$1;->this$0:Lio/sentry/android/replay/RootViewsSpy;

    invoke-static {v0}, Lio/sentry/android/replay/RootViewsSpy;->access$getViewListLock$p(Lio/sentry/android/replay/RootViewsSpy;)Lio/sentry/util/AutoClosableReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    check-cast v0, Ljava/lang/AutoCloseable;

    iget-object v1, p0, Lio/sentry/android/replay/RootViewsSpy$listeners$1;->this$0:Lio/sentry/android/replay/RootViewsSpy;

    :try_start_0
    move-object v2, v0

    check-cast v2, Lio/sentry/ISentryLifecycleToken;

    .local v2, "it":Lio/sentry/ISentryLifecycleToken;
    const/4 v3, 0x0

    .line 118
    .local v3, "$i$a$-use-RootViewsSpy$listeners$1$add$1":I
    invoke-static {v1}, Lio/sentry/android/replay/RootViewsSpy;->access$getDelegatingViewList$p(Lio/sentry/android/replay/RootViewsSpy;)Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 210
    .local v4, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroid/view/View;

    .local v7, "it":Landroid/view/View;
    const/4 v8, 0x0

    .line 118
    .local v8, "$i$a$-forEach-RootViewsSpy$listeners$1$add$1$1":I
    if-eqz p1, :cond_0

    const/4 v9, 0x1

    invoke-interface {p1, v7, v9}, Lio/sentry/android/replay/OnRootViewsChangedListener;->onRootViewsChanged(Landroid/view/View;Z)V

    .line 210
    .end local v7    # "it":Landroid/view/View;
    .end local v8    # "$i$a$-forEach-RootViewsSpy$listeners$1$add$1$1":I
    :cond_0
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 211
    :cond_1
    nop

    .line 119
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    nop

    .end local v2    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v3    # "$i$a$-use-RootViewsSpy$listeners$1$add$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 120
    invoke-super {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 116
    :catchall_0
    move-exception v1

    .end local p1    # "element":Lio/sentry/android/replay/OnRootViewsChangedListener;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p1    # "element":Lio/sentry/android/replay/OnRootViewsChangedListener;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 114
    move-object v0, p1

    check-cast v0, Lio/sentry/android/replay/OnRootViewsChangedListener;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/RootViewsSpy$listeners$1;->add(Lio/sentry/android/replay/OnRootViewsChangedListener;)Z

    move-result v0

    return v0
.end method

.method public bridge contains(Lio/sentry/android/replay/OnRootViewsChangedListener;)Z
    .locals 1
    .param p1, "element"    # Lio/sentry/android/replay/OnRootViewsChangedListener;

    .line 114
    invoke-super {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 114
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lio/sentry/android/replay/OnRootViewsChangedListener;

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lio/sentry/android/replay/OnRootViewsChangedListener;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/RootViewsSpy$listeners$1;->contains(Lio/sentry/android/replay/OnRootViewsChangedListener;)Z

    move-result v0

    return v0
.end method

.method public bridge getSize()I
    .locals 1

    .line 114
    invoke-super {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge indexOf(Lio/sentry/android/replay/OnRootViewsChangedListener;)I
    .locals 1
    .param p1, "element"    # Lio/sentry/android/replay/OnRootViewsChangedListener;

    .line 114
    invoke-super {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 114
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lio/sentry/android/replay/OnRootViewsChangedListener;

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lio/sentry/android/replay/OnRootViewsChangedListener;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/RootViewsSpy$listeners$1;->indexOf(Lio/sentry/android/replay/OnRootViewsChangedListener;)I

    move-result v0

    return v0
.end method

.method public bridge lastIndexOf(Lio/sentry/android/replay/OnRootViewsChangedListener;)I
    .locals 1
    .param p1, "element"    # Lio/sentry/android/replay/OnRootViewsChangedListener;

    .line 114
    invoke-super {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 114
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lio/sentry/android/replay/OnRootViewsChangedListener;

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lio/sentry/android/replay/OnRootViewsChangedListener;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/RootViewsSpy$listeners$1;->lastIndexOf(Lio/sentry/android/replay/OnRootViewsChangedListener;)I

    move-result v0

    return v0
.end method

.method public final bridge remove(I)Lio/sentry/android/replay/OnRootViewsChangedListener;
    .locals 1
    .param p1, "index"    # I

    .line 114
    invoke-virtual {p0, p1}, Lio/sentry/android/replay/RootViewsSpy$listeners$1;->removeAt(I)Lio/sentry/android/replay/OnRootViewsChangedListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge remove(Lio/sentry/android/replay/OnRootViewsChangedListener;)Z
    .locals 1
    .param p1, "element"    # Lio/sentry/android/replay/OnRootViewsChangedListener;

    .line 114
    invoke-super {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 114
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lio/sentry/android/replay/OnRootViewsChangedListener;

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lio/sentry/android/replay/OnRootViewsChangedListener;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/RootViewsSpy$listeners$1;->remove(Lio/sentry/android/replay/OnRootViewsChangedListener;)Z

    move-result v0

    return v0
.end method

.method public bridge removeAt(I)Lio/sentry/android/replay/OnRootViewsChangedListener;
    .locals 1
    .param p1, "p0"    # I

    .line 114
    invoke-super {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/OnRootViewsChangedListener;

    return-object v0
.end method

.method public final bridge size()I
    .locals 1

    .line 114
    invoke-virtual {p0}, Lio/sentry/android/replay/RootViewsSpy$listeners$1;->getSize()I

    move-result v0

    return v0
.end method
