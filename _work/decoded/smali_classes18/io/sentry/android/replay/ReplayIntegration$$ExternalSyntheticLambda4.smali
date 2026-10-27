.class public final synthetic Lio/sentry/android/replay/ReplayIntegration$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic f$0:Lio/sentry/protocol/SentryId;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/protocol/SentryId;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration$$ExternalSyntheticLambda4;->f$0:Lio/sentry/protocol/SentryId;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/IScope;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration$$ExternalSyntheticLambda4;->f$0:Lio/sentry/protocol/SentryId;

    invoke-static {v0, p1}, Lio/sentry/android/replay/ReplayIntegration;->$r8$lambda$Bwrru1cUSodyZDBjxgSsKGI06fk(Lio/sentry/protocol/SentryId;Lio/sentry/IScope;)V

    return-void
.end method
