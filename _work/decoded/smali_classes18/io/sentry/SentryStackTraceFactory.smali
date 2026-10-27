.class public final Lio/sentry/SentryStackTraceFactory;
.super Ljava/lang/Object;
.source "SentryStackTraceFactory.java"


# static fields
.field private static final STACKTRACE_FRAME_LIMIT:I = 0x64


# instance fields
.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 0
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lio/sentry/SentryStackTraceFactory;->options:Lio/sentry/SentryOptions;

    .line 21
    return-void
.end method

.method public static isInApp(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 87
    .local p1, "includes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "excludes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 88
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 87
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 91
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 92
    .local v2, "include":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    return-object v0

    .line 95
    .end local v2    # "include":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 97
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 98
    .local v1, "exclude":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 101
    .end local v1    # "exclude":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 103
    :cond_4
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_5
    :goto_2
    return-object v0
.end method

.method static synthetic lambda$getInAppCallStack$0(Lio/sentry/protocol/SentryStackFrame;)Z
    .locals 2
    .param p0, "frame"    # Lio/sentry/protocol/SentryStackFrame;

    .line 133
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lio/sentry/protocol/SentryStackFrame;->isInApp()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getInAppCallStack$1(Lio/sentry/protocol/SentryStackFrame;)Z
    .locals 5
    .param p0, "frame"    # Lio/sentry/protocol/SentryStackFrame;

    .line 144
    invoke-virtual {p0}, Lio/sentry/protocol/SentryStackFrame;->getModule()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "module":Ljava/lang/String;
    const/4 v1, 0x0

    .line 146
    .local v1, "isSystemFrame":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 147
    nop

    .line 148
    const-string v4, "sun."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 149
    const-string v4, "java."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 150
    const-string v4, "android."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 151
    const-string v4, "com.android."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    :goto_1
    move v1, v4

    .line 153
    :cond_2
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    return v2
.end method


# virtual methods
.method public getInAppCallStack()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryStackFrame;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p0, v0}, Lio/sentry/SentryStackTraceFactory;->getInAppCallStack(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getInAppCallStack(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 4
    .param p1, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryStackFrame;",
            ">;"
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 127
    .local v0, "stacktrace":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/sentry/SentryStackTraceFactory;->getStackFrames([Ljava/lang/StackTraceElement;Z)Ljava/util/List;

    move-result-object v1

    .line 128
    .local v1, "frames":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryStackFrame;>;"
    if-nez v1, :cond_0

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 132
    :cond_0
    new-instance v2, Lio/sentry/SentryStackTraceFactory$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lio/sentry/SentryStackTraceFactory$$ExternalSyntheticLambda0;-><init>()V

    .line 133
    invoke-static {v1, v2}, Lio/sentry/util/CollectionUtils;->filterListEntries(Ljava/util/List;Lio/sentry/util/CollectionUtils$Predicate;)Ljava/util/List;

    move-result-object v2

    .line 135
    .local v2, "inAppFrames":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryStackFrame;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 136
    return-object v2

    .line 141
    :cond_1
    new-instance v3, Lio/sentry/SentryStackTraceFactory$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lio/sentry/SentryStackTraceFactory$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v3}, Lio/sentry/util/CollectionUtils;->filterListEntries(Ljava/util/List;Lio/sentry/util/CollectionUtils$Predicate;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public getStackFrames([Ljava/lang/StackTraceElement;Z)Ljava/util/List;
    .locals 8
    .param p1, "elements"    # [Ljava/lang/StackTraceElement;
    .param p2, "includeSentryFrames"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            "Z)",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryStackFrame;",
            ">;"
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    .line 34
    .local v0, "sentryStackFrames":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryStackFrame;>;"
    if-eqz p1, :cond_4

    array-length v1, p1

    if-lez v1, :cond_4

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 36
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 37
    .local v3, "item":Ljava/lang/StackTraceElement;
    if-eqz v3, :cond_2

    .line 40
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, "className":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 42
    const-string v5, "io.sentry."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 43
    const-string v5, "io.sentry.samples."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 44
    const-string v5, "io.sentry.mobile."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 45
    goto :goto_1

    .line 48
    :cond_0
    new-instance v5, Lio/sentry/protocol/SentryStackFrame;

    invoke-direct {v5}, Lio/sentry/protocol/SentryStackFrame;-><init>()V

    .line 50
    .local v5, "sentryStackFrame":Lio/sentry/protocol/SentryStackFrame;
    invoke-virtual {p0, v4}, Lio/sentry/SentryStackTraceFactory;->isInApp(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/sentry/protocol/SentryStackFrame;->setInApp(Ljava/lang/Boolean;)V

    .line 51
    invoke-virtual {v5, v4}, Lio/sentry/protocol/SentryStackFrame;->setModule(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/sentry/protocol/SentryStackFrame;->setFunction(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/sentry/protocol/SentryStackFrame;->setFilename(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    if-ltz v6, :cond_1

    .line 57
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/sentry/protocol/SentryStackFrame;->setLineno(Ljava/lang/Integer;)V

    .line 59
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/sentry/protocol/SentryStackFrame;->setNative(Ljava/lang/Boolean;)V

    .line 60
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x64

    if-lt v6, v7, :cond_2

    .line 64
    goto :goto_2

    .line 36
    .end local v3    # "item":Ljava/lang/StackTraceElement;
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "sentryStackFrame":Lio/sentry/protocol/SentryStackFrame;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_3
    :goto_2
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 71
    :cond_4
    return-object v0
.end method

.method public isInApp(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lio/sentry/SentryStackTraceFactory;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getInAppIncludes()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryStackTraceFactory;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getInAppExcludes()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/sentry/SentryStackTraceFactory;->isInApp(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
