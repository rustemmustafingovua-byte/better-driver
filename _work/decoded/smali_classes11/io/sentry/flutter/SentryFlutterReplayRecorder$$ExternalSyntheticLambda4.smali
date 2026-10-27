.class public final synthetic Lio/sentry/flutter/SentryFlutterReplayRecorder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/flutter/SentryFlutterReplayRecorder$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/IScope;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterReplayRecorder$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {v0, p1}, Lio/sentry/flutter/SentryFlutterReplayRecorder;->$r8$lambda$QmXJIqyGQBXrWw4hjmgA9f2bwBc(Lkotlin/jvm/internal/Ref$BooleanRef;Lio/sentry/IScope;)V

    return-void
.end method
