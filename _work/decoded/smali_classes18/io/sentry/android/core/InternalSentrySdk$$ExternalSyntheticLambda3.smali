.class public final synthetic Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic f$0:Lio/sentry/SentryOptions;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lio/sentry/SentryOptions;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda3;->f$0:Lio/sentry/SentryOptions;

    iput-boolean p2, p0, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda3;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/IScope;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda3;->f$0:Lio/sentry/SentryOptions;

    iget-boolean v1, p0, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda3;->f$1:Z

    invoke-static {v0, v1, p1}, Lio/sentry/android/core/InternalSentrySdk;->lambda$updateSessionNonTerminating$2(Lio/sentry/SentryOptions;ZLio/sentry/IScope;)V

    return-void
.end method
