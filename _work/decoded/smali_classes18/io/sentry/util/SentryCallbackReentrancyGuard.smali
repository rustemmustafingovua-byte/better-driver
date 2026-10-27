.class public final Lio/sentry/util/SentryCallbackReentrancyGuard;
.super Ljava/lang/Object;
.source "SentryCallbackReentrancyGuard.java"


# static fields
.field private static final TOKEN:Lio/sentry/ISentryLifecycleToken;

.field private static final depth:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8D1QWDMMq2Jz24gmyvRzJIk0D4c()V
    .locals 0

    invoke-static {}, Lio/sentry/util/SentryCallbackReentrancyGuard;->exit()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lio/sentry/util/SentryCallbackReentrancyGuard;->depth:Ljava/lang/ThreadLocal;

    .line 45
    new-instance v0, Lio/sentry/util/SentryCallbackReentrancyGuard$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/sentry/util/SentryCallbackReentrancyGuard$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lio/sentry/util/SentryCallbackReentrancyGuard;->TOKEN:Lio/sentry/ISentryLifecycleToken;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enter()Lio/sentry/ISentryLifecycleToken;
    .locals 4

    .line 64
    sget-object v0, Lio/sentry/util/SentryCallbackReentrancyGuard;->depth:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 65
    .local v0, "current":Ljava/lang/Integer;
    sget-object v1, Lio/sentry/util/SentryCallbackReentrancyGuard;->depth:Ljava/lang/ThreadLocal;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 66
    sget-object v1, Lio/sentry/util/SentryCallbackReentrancyGuard;->TOKEN:Lio/sentry/ISentryLifecycleToken;

    return-object v1
.end method

.method private static exit()V
    .locals 4

    .line 70
    sget-object v0, Lio/sentry/util/SentryCallbackReentrancyGuard;->depth:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 71
    .local v0, "current":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    sget-object v1, Lio/sentry/util/SentryCallbackReentrancyGuard;->depth:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 72
    :cond_1
    :goto_0
    sget-object v1, Lio/sentry/util/SentryCallbackReentrancyGuard;->depth:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 76
    :goto_1
    return-void
.end method

.method public static isActive()Z
    .locals 2

    .line 55
    sget-object v0, Lio/sentry/util/SentryCallbackReentrancyGuard;->depth:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 56
    .local v0, "current":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
