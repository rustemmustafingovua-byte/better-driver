.class public final Lio/sentry/util/LazyEvaluator;
.super Ljava/lang/Object;
.source "LazyEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/util/LazyEvaluator$Evaluator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final evaluator:Lio/sentry/util/LazyEvaluator$Evaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator$Evaluator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private volatile value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/util/LazyEvaluator$Evaluator<",
            "TT;>;)V"
        }
    .end annotation

    .line 25
    .local p0, "this":Lio/sentry/util/LazyEvaluator;, "Lio/sentry/util/LazyEvaluator<TT;>;"
    .local p1, "evaluator":Lio/sentry/util/LazyEvaluator$Evaluator;, "Lio/sentry/util/LazyEvaluator$Evaluator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/util/LazyEvaluator;->value:Ljava/lang/Object;

    .line 17
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/util/LazyEvaluator;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 26
    iput-object p1, p0, Lio/sentry/util/LazyEvaluator;->evaluator:Lio/sentry/util/LazyEvaluator$Evaluator;

    .line 27
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 36
    .local p0, "this":Lio/sentry/util/LazyEvaluator;, "Lio/sentry/util/LazyEvaluator<TT;>;"
    iget-object v0, p0, Lio/sentry/util/LazyEvaluator;->value:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 37
    iget-object v0, p0, Lio/sentry/util/LazyEvaluator;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 38
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/util/LazyEvaluator;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 39
    iget-object v1, p0, Lio/sentry/util/LazyEvaluator;->evaluator:Lio/sentry/util/LazyEvaluator$Evaluator;

    invoke-interface {v1}, Lio/sentry/util/LazyEvaluator$Evaluator;->evaluate()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/util/LazyEvaluator;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    goto :goto_1

    .line 37
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 45
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    :goto_1
    iget-object v0, p0, Lio/sentry/util/LazyEvaluator;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public resetValue()V
    .locals 3

    .line 59
    .local p0, "this":Lio/sentry/util/LazyEvaluator;, "Lio/sentry/util/LazyEvaluator<TT;>;"
    iget-object v0, p0, Lio/sentry/util/LazyEvaluator;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 60
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lio/sentry/util/LazyEvaluator;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 62
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    return-void

    .line 59
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lio/sentry/util/LazyEvaluator;, "Lio/sentry/util/LazyEvaluator<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/sentry/util/LazyEvaluator;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 50
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iput-object p1, p0, Lio/sentry/util/LazyEvaluator;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 52
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    return-void

    .line 49
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method
