.class public final Lio/sentry/util/ScopesUtil;
.super Ljava/lang/Object;
.source "ScopesUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static printScopesChain(Lio/sentry/IScopes;)V
    .locals 3
    .param p0, "scopes"    # Lio/sentry/IScopes;

    .line 21
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "=========================================="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 22
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "=============== v Scopes v ==============="

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 25
    invoke-static {p0}, Lio/sentry/util/ScopesUtil;->printScopesChainInternal(Lio/sentry/IScopes;)V

    .line 27
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "=============== ^ Scopes ^ ==============="

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private static printScopesChainInternal(Lio/sentry/IScopes;)V
    .locals 5
    .param p0, "someScopes"    # Lio/sentry/IScopes;

    .line 34
    if-eqz p0, :cond_4

    .line 35
    instance-of v0, p0, Lio/sentry/Scopes;

    if-eqz v0, :cond_0

    .line 36
    move-object v0, p0

    check-cast v0, Lio/sentry/Scopes;

    .line 37
    .local v0, "scopes":Lio/sentry/Scopes;
    nop

    .line 41
    invoke-virtual {v0}, Lio/sentry/Scopes;->getGlobalScope()Lio/sentry/IScope;

    move-result-object v1

    .line 42
    invoke-virtual {v0}, Lio/sentry/Scopes;->getIsolationScope()Lio/sentry/IScope;

    move-result-object v2

    .line 43
    invoke-virtual {v0}, Lio/sentry/Scopes;->getScope()Lio/sentry/IScope;

    move-result-object v3

    .line 44
    invoke-virtual {v0}, Lio/sentry/Scopes;->getCreator()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 38
    const-string v2, "%-25s {g=%-25s, i=%-25s, c=%-25s} [%s]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    invoke-interface {p0}, Lio/sentry/IScopes;->getParentScopes()Lio/sentry/IScopes;

    move-result-object v2

    invoke-static {v2}, Lio/sentry/util/ScopesUtil;->printScopesChainInternal(Lio/sentry/IScopes;)V

    .line 47
    .end local v0    # "scopes":Lio/sentry/Scopes;
    .end local v1    # "info":Ljava/lang/String;
    goto :goto_1

    :cond_0
    instance-of v0, p0, Lio/sentry/ScopesAdapter;

    if-nez v0, :cond_3

    instance-of v0, p0, Lio/sentry/HubAdapter;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    instance-of v0, p0, Lio/sentry/HubScopesWrapper;

    if-eqz v0, :cond_2

    .line 51
    move-object v0, p0

    check-cast v0, Lio/sentry/HubScopesWrapper;

    .line 52
    .local v0, "wrapper":Lio/sentry/HubScopesWrapper;
    invoke-virtual {v0}, Lio/sentry/HubScopesWrapper;->getScopes()Lio/sentry/IScopes;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/util/ScopesUtil;->printScopesChainInternal(Lio/sentry/IScopes;)V

    .line 53
    .end local v0    # "wrapper":Lio/sentry/HubScopesWrapper;
    goto :goto_1

    .line 54
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hit unhandled Scopes class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 49
    :cond_3
    :goto_0
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/ScopesUtil;->printScopesChainInternal(Lio/sentry/IScopes;)V

    goto :goto_1

    .line 57
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    :goto_1
    return-void
.end method
