.class public final Lio/sentry/util/ExceptionUtils;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 4
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 19
    const-string v0, "throwable cannot be null"

    invoke-static {p0, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-object v0, p0

    .line 21
    .local v0, "rootCause":Ljava/lang/Throwable;
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    .line 22
    .local v1, "visited":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 24
    .local v2, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25
    move-object v0, v2

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    .line 28
    :cond_0
    return-object v0
.end method

.method public static isIgnored(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .line 36
    .local p0, "ignoredExceptionsForType":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/Throwable;>;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static rethrowIfFatal(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 59
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/LinkageError;

    if-nez v0, :cond_1

    .line 64
    instance-of v0, p0, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 67
    :cond_0
    return-void

    .line 62
    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/lang/Error;

    throw v0
.end method
