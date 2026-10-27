.class public final synthetic Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/content/ContentResolver;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda6;->f$0:Landroid/content/ContentResolver;

    iput-object p2, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda6;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda6;->f$0:Landroid/content/ContentResolver;

    iget-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda6;->f$1:Landroid/net/Uri;

    invoke-static {v0, v1}, Lio/sentry/android/core/SentryUserFeedbackForm;->lambda$maybeAddImageAttachment$7(Landroid/content/ContentResolver;Landroid/net/Uri;)[B

    move-result-object v0

    return-object v0
.end method
