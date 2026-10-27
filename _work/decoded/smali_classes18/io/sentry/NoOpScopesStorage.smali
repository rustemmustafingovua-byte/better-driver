.class public final Lio/sentry/NoOpScopesStorage;
.super Ljava/lang/Object;
.source "NoOpScopesStorage.java"

# interfaces
.implements Lio/sentry/IScopesStorage;


# static fields
.field private static final instance:Lio/sentry/NoOpScopesStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lio/sentry/NoOpScopesStorage;

    invoke-direct {v0}, Lio/sentry/NoOpScopesStorage;-><init>()V

    sput-object v0, Lio/sentry/NoOpScopesStorage;->instance:Lio/sentry/NoOpScopesStorage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpScopesStorage;
    .locals 1

    .line 13
    sget-object v0, Lio/sentry/NoOpScopesStorage;->instance:Lio/sentry/NoOpScopesStorage;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 30
    return-void
.end method

.method public get()Lio/sentry/IScopes;
    .locals 1

    .line 26
    invoke-static {}, Lio/sentry/NoOpScopes;->getInstance()Lio/sentry/NoOpScopes;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 17
    return-void
.end method

.method public set(Lio/sentry/IScopes;)Lio/sentry/ISentryLifecycleToken;
    .locals 1
    .param p1, "scopes"    # Lio/sentry/IScopes;

    .line 21
    invoke-static {}, Lio/sentry/NoOpScopesLifecycleToken;->getInstance()Lio/sentry/NoOpScopesLifecycleToken;

    move-result-object v0

    return-object v0
.end method
