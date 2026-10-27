.class Lio/sentry/SentryOptions$1;
.super Ljava/lang/Object;
.source "SentryOptions.java"

# interfaces
.implements Lio/sentry/SentryFeedbackOptions$IShakeController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/SentryOptions;-><init>(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/sentry/SentryOptions;


# direct methods
.method constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 0
    .param p1, "this$0"    # Lio/sentry/SentryOptions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3642
    iput-object p1, p0, Lio/sentry/SentryOptions$1;->this$0:Lio/sentry/SentryOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disableOnShake()V
    .locals 4

    .line 3650
    iget-object v0, p0, Lio/sentry/SentryOptions$1;->this$0:Lio/sentry/SentryOptions;

    invoke-static {v0}, Lio/sentry/SentryOptions;->access$000(Lio/sentry/SentryOptions;)Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Shake to report is only supported on Android."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3651
    return-void
.end method

.method public enableOnShake()V
    .locals 4

    .line 3645
    iget-object v0, p0, Lio/sentry/SentryOptions$1;->this$0:Lio/sentry/SentryOptions;

    invoke-static {v0}, Lio/sentry/SentryOptions;->access$000(Lio/sentry/SentryOptions;)Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Shake to report is only supported on Android."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3646
    return-void
.end method

.method public isOnShakeEnabled()Z
    .locals 1

    .line 3655
    const/4 v0, 0x0

    return v0
.end method
