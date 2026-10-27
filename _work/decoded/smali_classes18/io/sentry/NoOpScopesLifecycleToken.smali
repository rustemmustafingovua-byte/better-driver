.class public final Lio/sentry/NoOpScopesLifecycleToken;
.super Ljava/lang/Object;
.source "NoOpScopesLifecycleToken.java"

# interfaces
.implements Lio/sentry/ISentryLifecycleToken;


# static fields
.field private static final instance:Lio/sentry/NoOpScopesLifecycleToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lio/sentry/NoOpScopesLifecycleToken;

    invoke-direct {v0}, Lio/sentry/NoOpScopesLifecycleToken;-><init>()V

    sput-object v0, Lio/sentry/NoOpScopesLifecycleToken;->instance:Lio/sentry/NoOpScopesLifecycleToken;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpScopesLifecycleToken;
    .locals 1

    .line 13
    sget-object v0, Lio/sentry/NoOpScopesLifecycleToken;->instance:Lio/sentry/NoOpScopesLifecycleToken;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 17
    return-void
.end method
