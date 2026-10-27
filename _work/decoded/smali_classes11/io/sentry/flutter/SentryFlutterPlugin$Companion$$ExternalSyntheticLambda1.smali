.class public final synthetic Lio/sentry/flutter/SentryFlutterPlugin$Companion$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/replay/ReplayIntegration;

.field public final synthetic f$1:Lio/sentry/flutter/SafeReplayRecorderCallbacks;

.field public final synthetic f$2:Lio/sentry/flutter/ReplayFlushListener;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/replay/ReplayIntegration;Lio/sentry/flutter/SafeReplayRecorderCallbacks;Lio/sentry/flutter/ReplayFlushListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/flutter/SentryFlutterPlugin$Companion$$ExternalSyntheticLambda1;->f$0:Lio/sentry/android/replay/ReplayIntegration;

    iput-object p2, p0, Lio/sentry/flutter/SentryFlutterPlugin$Companion$$ExternalSyntheticLambda1;->f$1:Lio/sentry/flutter/SafeReplayRecorderCallbacks;

    iput-object p3, p0, Lio/sentry/flutter/SentryFlutterPlugin$Companion$$ExternalSyntheticLambda1;->f$2:Lio/sentry/flutter/ReplayFlushListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin$Companion$$ExternalSyntheticLambda1;->f$0:Lio/sentry/android/replay/ReplayIntegration;

    iget-object v1, p0, Lio/sentry/flutter/SentryFlutterPlugin$Companion$$ExternalSyntheticLambda1;->f$1:Lio/sentry/flutter/SafeReplayRecorderCallbacks;

    iget-object v2, p0, Lio/sentry/flutter/SentryFlutterPlugin$Companion$$ExternalSyntheticLambda1;->f$2:Lio/sentry/flutter/ReplayFlushListener;

    invoke-static {v0, v1, v2}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->$r8$lambda$qjv8-HEU-91hzBClTLmogL6pl1Q(Lio/sentry/android/replay/ReplayIntegration;Lio/sentry/flutter/SafeReplayRecorderCallbacks;Lio/sentry/flutter/ReplayFlushListener;)V

    return-void
.end method
