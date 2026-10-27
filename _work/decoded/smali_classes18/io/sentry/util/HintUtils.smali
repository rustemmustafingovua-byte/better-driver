.class public final Lio/sentry/util/HintUtils;
.super Ljava/lang/Object;
.source "HintUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/util/HintUtils$SentryConsumer;,
        Lio/sentry/util/HintUtils$SentryNullableConsumer;,
        Lio/sentry/util/HintUtils$SentryHintFallback;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;
    .locals 1
    .param p0, "typeCheckHint"    # Ljava/lang/Object;

    .line 65
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    .line 66
    .local v0, "hint":Lio/sentry/Hint;
    invoke-static {v0, p0}, Lio/sentry/util/HintUtils;->setTypeCheckHint(Lio/sentry/Hint;Ljava/lang/Object;)V

    .line 67
    return-object v0
.end method

.method public static getEventDropReason(Lio/sentry/Hint;)Lio/sentry/hints/EventDropReason;
    .locals 2
    .param p0, "hint"    # Lio/sentry/Hint;

    .line 46
    const-string v0, "sentry:eventDropReason"

    const-class v1, Lio/sentry/hints/EventDropReason;

    invoke-virtual {p0, v0, v1}, Lio/sentry/Hint;->getAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/hints/EventDropReason;

    return-object v0
.end method

.method public static getSentrySdkHint(Lio/sentry/Hint;)Ljava/lang/Object;
    .locals 1
    .param p0, "hint"    # Lio/sentry/Hint;

    .line 75
    const-string v0, "sentry:typeCheckHint"

    invoke-virtual {p0, v0}, Lio/sentry/Hint;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z
    .locals 2
    .param p0, "hint"    # Lio/sentry/Hint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/Hint;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 79
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lio/sentry/util/HintUtils;->getSentrySdkHint(Lio/sentry/Hint;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    .local v0, "sentrySdkHint":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isCaptureFailed(Lio/sentry/Hint;)Z
    .locals 3
    .param p0, "hint"    # Lio/sentry/Hint;

    .line 61
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "sentry:captureFailed"

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2}, Lio/sentry/Hint;->getAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFromHybridSdk(Lio/sentry/Hint;)Z
    .locals 3
    .param p0, "hint"    # Lio/sentry/Hint;

    .line 36
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "sentry:isFromHybridSdk"

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2}, Lio/sentry/Hint;->getAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$runIfDoesNotHaveType$0(Ljava/lang/Object;)V
    .locals 0
    .param p0, "ignored"    # Ljava/lang/Object;

    .line 88
    return-void
.end method

.method static synthetic lambda$runIfDoesNotHaveType$1(Lio/sentry/util/HintUtils$SentryNullableConsumer;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .param p0, "lambda"    # Lio/sentry/util/HintUtils$SentryNullableConsumer;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "clazz2"    # Ljava/lang/Class;

    .line 90
    invoke-interface {p0, p1}, Lio/sentry/util/HintUtils$SentryNullableConsumer;->accept(Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method static synthetic lambda$runIfHasType$2(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "clazz2"    # Ljava/lang/Class;

    .line 96
    return-void
.end method

.method static synthetic lambda$runIfHasTypeLogIfNot$3(Lio/sentry/ILogger;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .param p0, "logger"    # Lio/sentry/ILogger;
    .param p1, "sentrySdkHint"    # Ljava/lang/Object;
    .param p2, "expectedClass"    # Ljava/lang/Class;

    .line 106
    invoke-static {p2, p1, p0}, Lio/sentry/util/LogUtils;->logNotInstanceOf(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/ILogger;)V

    .line 107
    return-void
.end method

.method public static runIfDoesNotHaveType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryNullableConsumer;)V
    .locals 2
    .param p0, "hint"    # Lio/sentry/Hint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/Hint;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lio/sentry/util/HintUtils$SentryNullableConsumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "lambda":Lio/sentry/util/HintUtils$SentryNullableConsumer;, "Lio/sentry/util/HintUtils$SentryNullableConsumer<Ljava/lang/Object;>;"
    new-instance v0, Lio/sentry/util/HintUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lio/sentry/util/HintUtils$$ExternalSyntheticLambda2;-><init>()V

    new-instance v1, Lio/sentry/util/HintUtils$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Lio/sentry/util/HintUtils$$ExternalSyntheticLambda3;-><init>(Lio/sentry/util/HintUtils$SentryNullableConsumer;)V

    invoke-static {p0, p1, v0, v1}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;Lio/sentry/util/HintUtils$SentryHintFallback;)V

    .line 92
    return-void
.end method

.method public static runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V
    .locals 1
    .param p0, "hint"    # Lio/sentry/Hint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/Hint;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lio/sentry/util/HintUtils$SentryConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 96
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "lambda":Lio/sentry/util/HintUtils$SentryConsumer;, "Lio/sentry/util/HintUtils$SentryConsumer<TT;>;"
    new-instance v0, Lio/sentry/util/HintUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/sentry/util/HintUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;Lio/sentry/util/HintUtils$SentryHintFallback;)V

    .line 97
    return-void
.end method

.method public static runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;Lio/sentry/util/HintUtils$SentryHintFallback;)V
    .locals 2
    .param p0, "hint"    # Lio/sentry/Hint;
    .param p3, "fallbackLambda"    # Lio/sentry/util/HintUtils$SentryHintFallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/Hint;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lio/sentry/util/HintUtils$SentryConsumer<",
            "TT;>;",
            "Lio/sentry/util/HintUtils$SentryHintFallback;",
            ")V"
        }
    .end annotation

    .line 116
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "lambda":Lio/sentry/util/HintUtils$SentryConsumer;, "Lio/sentry/util/HintUtils$SentryConsumer<TT;>;"
    invoke-static {p0}, Lio/sentry/util/HintUtils;->getSentrySdkHint(Lio/sentry/Hint;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    .local v0, "sentrySdkHint":Ljava/lang/Object;
    invoke-static {p0, p1}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {p2, v0}, Lio/sentry/util/HintUtils$SentryConsumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-interface {p3, v0, p1}, Lio/sentry/util/HintUtils$SentryHintFallback;->accept(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 122
    :goto_0
    return-void
.end method

.method public static runIfHasTypeLogIfNot(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/ILogger;Lio/sentry/util/HintUtils$SentryConsumer;)V
    .locals 1
    .param p0, "hint"    # Lio/sentry/Hint;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/Hint;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lio/sentry/ILogger;",
            "Lio/sentry/util/HintUtils$SentryConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 101
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "lambda":Lio/sentry/util/HintUtils$SentryConsumer;, "Lio/sentry/util/HintUtils$SentryConsumer<TT;>;"
    new-instance v0, Lio/sentry/util/HintUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lio/sentry/util/HintUtils$$ExternalSyntheticLambda1;-><init>(Lio/sentry/ILogger;)V

    invoke-static {p0, p1, p3, v0}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;Lio/sentry/util/HintUtils$SentryHintFallback;)V

    .line 108
    return-void
.end method

.method public static setCaptureFailed(Lio/sentry/Hint;)V
    .locals 2
    .param p0, "hint"    # Lio/sentry/Hint;

    .line 55
    if-eqz p0, :cond_0

    .line 56
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "sentry:captureFailed"

    invoke-virtual {p0, v1, v0}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    :cond_0
    return-void
.end method

.method public static setEventDropReason(Lio/sentry/Hint;Lio/sentry/hints/EventDropReason;)V
    .locals 1
    .param p0, "hint"    # Lio/sentry/Hint;
    .param p1, "eventDropReason"    # Lio/sentry/hints/EventDropReason;

    .line 41
    const-string v0, "sentry:eventDropReason"

    invoke-virtual {p0, v0, p1}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public static setIsFromHybridSdk(Lio/sentry/Hint;Ljava/lang/String;)V
    .locals 2
    .param p0, "hint"    # Lio/sentry/Hint;
    .param p1, "sdkName"    # Ljava/lang/String;

    .line 28
    const-string v0, "sentry.javascript"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    const-string v0, "sentry.dart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    const-string v0, "sentry.dotnet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "sentry:isFromHybridSdk"

    invoke-virtual {p0, v1, v0}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    :cond_1
    return-void
.end method

.method public static setTypeCheckHint(Lio/sentry/Hint;Ljava/lang/Object;)V
    .locals 1
    .param p0, "hint"    # Lio/sentry/Hint;
    .param p1, "typeCheckHint"    # Ljava/lang/Object;

    .line 71
    const-string v0, "sentry:typeCheckHint"

    invoke-virtual {p0, v0, p1}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public static shouldApplyScopeData(Lio/sentry/Hint;)Z
    .locals 1
    .param p0, "hint"    # Lio/sentry/Hint;

    .line 131
    const-class v0, Lio/sentry/hints/Cached;

    invoke-static {p0, v0}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lio/sentry/hints/Backfillable;

    invoke-static {p0, v0}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-class v0, Lio/sentry/hints/ApplyScopeData;

    .line 132
    invoke-static {p0, v0}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0
.end method
