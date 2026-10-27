.class public final synthetic Lio/sentry/flutter/SentryFlutterPlugin$Companion$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/flutter/SentryFlutterPlugin$Companion$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lio/sentry/flutter/SentryFlutterPlugin$Companion$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/IScope;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin$Companion$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lio/sentry/flutter/SentryFlutterPlugin$Companion$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->$r8$lambda$Jeje4eHJEM2AIgeOYVSTIXbVVPI(Ljava/lang/String;Ljava/lang/Object;Lio/sentry/IScope;)V

    return-void
.end method
