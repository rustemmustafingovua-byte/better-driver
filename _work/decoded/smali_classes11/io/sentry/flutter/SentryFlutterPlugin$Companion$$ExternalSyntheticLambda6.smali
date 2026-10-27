.class public final synthetic Lio/sentry/flutter/SentryFlutterPlugin$Companion$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$1:Lio/sentry/protocol/SentryId;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lio/sentry/protocol/SentryId;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/flutter/SentryFlutterPlugin$Companion$$ExternalSyntheticLambda6;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lio/sentry/flutter/SentryFlutterPlugin$Companion$$ExternalSyntheticLambda6;->f$1:Lio/sentry/protocol/SentryId;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/IScope;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin$Companion$$ExternalSyntheticLambda6;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Lio/sentry/flutter/SentryFlutterPlugin$Companion$$ExternalSyntheticLambda6;->f$1:Lio/sentry/protocol/SentryId;

    invoke-static {v0, v1, p1}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->$r8$lambda$vOGddIYnDzNcqusG6USp3bCFzHA(Lkotlin/jvm/internal/Ref$BooleanRef;Lio/sentry/protocol/SentryId;Lio/sentry/IScope;)V

    return-void
.end method
