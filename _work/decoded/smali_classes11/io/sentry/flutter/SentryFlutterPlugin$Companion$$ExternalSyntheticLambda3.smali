.class public final synthetic Lio/sentry/flutter/SentryFlutterPlugin$Companion$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lio/sentry/flutter/SafeReplayRecorderCallbacks;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/flutter/SafeReplayRecorderCallbacks;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/flutter/SentryFlutterPlugin$Companion$$ExternalSyntheticLambda3;->f$0:Lio/sentry/flutter/SafeReplayRecorderCallbacks;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin$Companion$$ExternalSyntheticLambda3;->f$0:Lio/sentry/flutter/SafeReplayRecorderCallbacks;

    invoke-static {v0}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->$r8$lambda$zA0ZslfHFRJdUSse0uvL4Ka5S-8(Lio/sentry/flutter/SafeReplayRecorderCallbacks;)Lio/sentry/android/replay/Recorder;

    move-result-object v0

    return-object v0
.end method
