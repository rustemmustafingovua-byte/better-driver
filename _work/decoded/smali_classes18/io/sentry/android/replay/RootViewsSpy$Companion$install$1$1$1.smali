.class final Lio/sentry/android/replay/RootViewsSpy$Companion$install$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Windows.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/RootViewsSpy$Companion;->install()Lio/sentry/android/replay/RootViewsSpy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/ArrayList<",
        "Landroid/view/View;",
        ">;",
        "Ljava/util/ArrayList<",
        "Landroid/view/View;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindows.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Windows.kt\nio/sentry/android/replay/RootViewsSpy$Companion$install$1$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,209:1\n1#2:210\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\u0008\u0012\u0004\u0012\u00020\u0002`\u00032\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\u0008\u0012\u0004\u0012\u00020\u0002`\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Ljava/util/ArrayList;",
        "Landroid/view/View;",
        "Lkotlin/collections/ArrayList;",
        "mViews",
        "invoke"
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
.field final synthetic $this_apply:Lio/sentry/android/replay/RootViewsSpy;


# direct methods
.method constructor <init>(Lio/sentry/android/replay/RootViewsSpy;)V
    .locals 1

    iput-object p1, p0, Lio/sentry/android/replay/RootViewsSpy$Companion$install$1$1$1;->$this_apply:Lio/sentry/android/replay/RootViewsSpy;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 162
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/RootViewsSpy$Companion$install$1$1$1;->invoke(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "mViews"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const-string v0, "mViews"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lio/sentry/android/replay/RootViewsSpy$Companion$install$1$1$1;->$this_apply:Lio/sentry/android/replay/RootViewsSpy;

    invoke-static {v0}, Lio/sentry/android/replay/RootViewsSpy;->access$getViewListLock$p(Lio/sentry/android/replay/RootViewsSpy;)Lio/sentry/util/AutoClosableReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    check-cast v0, Ljava/lang/AutoCloseable;

    iget-object v1, p0, Lio/sentry/android/replay/RootViewsSpy$Companion$install$1$1$1;->$this_apply:Lio/sentry/android/replay/RootViewsSpy;

    :try_start_0
    move-object v2, v0

    check-cast v2, Lio/sentry/ISentryLifecycleToken;

    .line 210
    .local v2, "it":Lio/sentry/ISentryLifecycleToken;
    const/4 v3, 0x0

    .line 163
    .local v3, "$i$a$-use-RootViewsSpy$Companion$install$1$1$1$1":I
    invoke-static {v1}, Lio/sentry/android/replay/RootViewsSpy;->access$getDelegatingViewList$p(Lio/sentry/android/replay/RootViewsSpy;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v4, v1

    .line 210
    .local v4, "$this$invoke_u24lambda_u240_u240":Ljava/util/ArrayList;
    const/4 v5, 0x0

    .line 163
    .local v5, "$i$a$-apply-RootViewsSpy$Companion$install$1$1$1$1$1":I
    move-object v6, p1

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "it":Lio/sentry/ISentryLifecycleToken;
    .end local v3    # "$i$a$-use-RootViewsSpy$Companion$install$1$1$1$1":I
    .end local v4    # "$this$invoke_u24lambda_u240_u240":Ljava/util/ArrayList;
    .end local v5    # "$i$a$-apply-RootViewsSpy$Companion$install$1$1$1$1$1":I
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception v1

    .end local p1    # "mViews":Ljava/util/ArrayList;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p1    # "mViews":Ljava/util/ArrayList;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v2
.end method
