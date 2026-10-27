.class public final Lio/sentry/android/core/util/AndroidLazyEvaluator;
.super Ljava/lang/Object;
.source "AndroidLazyEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator;
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
.field private final evaluator:Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator<",
            "TT;>;)V"
        }
    .end annotation

    .line 26
    .local p0, "this":Lio/sentry/android/core/util/AndroidLazyEvaluator;, "Lio/sentry/android/core/util/AndroidLazyEvaluator<TT;>;"
    .local p1, "evaluator":Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator;, "Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/util/AndroidLazyEvaluator;->value:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lio/sentry/android/core/util/AndroidLazyEvaluator;->evaluator:Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator;

    .line 28
    return-void
.end method


# virtual methods
.method public getValue(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .line 37
    .local p0, "this":Lio/sentry/android/core/util/AndroidLazyEvaluator;, "Lio/sentry/android/core/util/AndroidLazyEvaluator<TT;>;"
    iget-object v0, p0, Lio/sentry/android/core/util/AndroidLazyEvaluator;->value:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 38
    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/util/AndroidLazyEvaluator;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lio/sentry/android/core/util/AndroidLazyEvaluator;->evaluator:Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator;

    invoke-interface {v0, p1}, Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator;->evaluate(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/util/AndroidLazyEvaluator;->value:Ljava/lang/Object;

    .line 42
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 45
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/sentry/android/core/util/AndroidLazyEvaluator;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public resetValue()V
    .locals 1

    .line 59
    .local p0, "this":Lio/sentry/android/core/util/AndroidLazyEvaluator;, "Lio/sentry/android/core/util/AndroidLazyEvaluator<TT;>;"
    monitor-enter p0

    .line 60
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lio/sentry/android/core/util/AndroidLazyEvaluator;->value:Ljava/lang/Object;

    .line 61
    monitor-exit p0

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lio/sentry/android/core/util/AndroidLazyEvaluator;, "Lio/sentry/android/core/util/AndroidLazyEvaluator<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 50
    :try_start_0
    iput-object p1, p0, Lio/sentry/android/core/util/AndroidLazyEvaluator;->value:Ljava/lang/Object;

    .line 51
    monitor-exit p0

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
