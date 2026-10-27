.class final Lio/sentry/android/core/SentryFeedbackScreenshotPicker;
.super Ljava/lang/Object;
.source "SentryFeedbackScreenshotPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/SentryFeedbackScreenshotPicker$OnScreenshotPicked;
    }
.end annotation


# instance fields
.field private final launcher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroidx/activity/result/PickVisualMediaRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroidx/activity/result/PickVisualMediaRequest;",
            ">;)V"
        }
    .end annotation

    .line 27
    .local p1, "launcher":Landroidx/activity/result/ActivityResultLauncher;, "Landroidx/activity/result/ActivityResultLauncher<Landroidx/activity/result/PickVisualMediaRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lio/sentry/android/core/SentryFeedbackScreenshotPicker;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    .line 29
    return-void
.end method

.method static synthetic lambda$register$0(Lio/sentry/android/core/SentryFeedbackScreenshotPicker$OnScreenshotPicked;Landroid/net/Uri;)V
    .locals 0
    .param p0, "callback"    # Lio/sentry/android/core/SentryFeedbackScreenshotPicker$OnScreenshotPicked;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 44
    if-eqz p1, :cond_0

    .line 45
    invoke-interface {p0, p1}, Lio/sentry/android/core/SentryFeedbackScreenshotPicker$OnScreenshotPicked;->onScreenshotPicked(Landroid/net/Uri;)V

    .line 47
    :cond_0
    return-void
.end method

.method static register(Landroid/app/Activity;Lio/sentry/android/core/SentryFeedbackScreenshotPicker$OnScreenshotPicked;)Lio/sentry/android/core/SentryFeedbackScreenshotPicker;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Lio/sentry/android/core/SentryFeedbackScreenshotPicker$OnScreenshotPicked;

    .line 34
    instance-of v0, p0, Landroidx/activity/ComponentActivity;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 39
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v0

    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;

    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;-><init>()V

    new-instance v2, Lio/sentry/android/core/SentryFeedbackScreenshotPicker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lio/sentry/android/core/SentryFeedbackScreenshotPicker$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/SentryFeedbackScreenshotPicker$OnScreenshotPicked;)V

    .line 40
    const-string v3, "sentry_user_feedback_screenshot_picker"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    .line 48
    .local v0, "launcher":Landroidx/activity/result/ActivityResultLauncher;, "Landroidx/activity/result/ActivityResultLauncher<Landroidx/activity/result/PickVisualMediaRequest;>;"
    new-instance v1, Lio/sentry/android/core/SentryFeedbackScreenshotPicker;

    invoke-direct {v1, v0}, Lio/sentry/android/core/SentryFeedbackScreenshotPicker;-><init>(Landroidx/activity/result/ActivityResultLauncher;)V

    return-object v1
.end method


# virtual methods
.method launch()V
    .locals 3

    .line 52
    iget-object v0, p0, Lio/sentry/android/core/SentryFeedbackScreenshotPicker;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v1, Landroidx/activity/result/PickVisualMediaRequest$Builder;

    invoke-direct {v1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;-><init>()V

    sget-object v2, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;

    .line 54
    invoke-virtual {v1, v2}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->setMediaType(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest$Builder;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroidx/activity/result/PickVisualMediaRequest$Builder;->build()Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method unregister()V
    .locals 1

    .line 59
    iget-object v0, p0, Lio/sentry/android/core/SentryFeedbackScreenshotPicker;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    .line 60
    return-void
.end method
