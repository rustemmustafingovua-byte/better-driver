.class public final synthetic Lio/sentry/android/replay/util/ReplayExecutorService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;

.field public final synthetic f$1:Lio/sentry/android/replay/util/ReplayExecutorService;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Lio/sentry/android/replay/util/ReplayExecutorService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/util/ReplayExecutorService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    iput-object p2, p0, Lio/sentry/android/replay/util/ReplayExecutorService$$ExternalSyntheticLambda0;->f$1:Lio/sentry/android/replay/util/ReplayExecutorService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/android/replay/util/ReplayExecutorService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    iget-object v1, p0, Lio/sentry/android/replay/util/ReplayExecutorService$$ExternalSyntheticLambda0;->f$1:Lio/sentry/android/replay/util/ReplayExecutorService;

    invoke-static {v0, v1}, Lio/sentry/android/replay/util/ReplayExecutorService;->$r8$lambda$050xjt0EojvpFGFp-DA9DlpkWYE(Ljava/lang/Runnable;Lio/sentry/android/replay/util/ReplayExecutorService;)V

    return-void
.end method
