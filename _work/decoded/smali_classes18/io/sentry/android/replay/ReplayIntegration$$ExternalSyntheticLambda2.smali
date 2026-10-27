.class public final synthetic Lio/sentry/android/replay/ReplayIntegration$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/replay/ReplayIntegration$ReplayState;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/replay/ReplayIntegration$ReplayState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/IScope;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/replay/ReplayIntegration$ReplayState;

    invoke-static {v0, p1}, Lio/sentry/android/replay/ReplayIntegration;->$r8$lambda$7xxT-byWjmyNarE4gqLH9YiZp5Q(Lio/sentry/android/replay/ReplayIntegration$ReplayState;Lio/sentry/IScope;)V

    return-void
.end method
