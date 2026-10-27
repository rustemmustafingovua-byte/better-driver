.class public Lio/sentry/android/core/SentryUserFeedbackForm;
.super Landroid/app/AlertDialog;
.source "SentryUserFeedbackForm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/SentryUserFeedbackForm$OptionsConfiguration;,
        Lio/sentry/android/core/SentryUserFeedbackForm$ShakeLifecycleCallbacks;,
        Lio/sentry/android/core/SentryUserFeedbackForm$Builder;
    }
.end annotation


# instance fields
.field private final associatedEventId:Lio/sentry/protocol/SentryId;

.field private currentReplayId:Lio/sentry/protocol/SentryId;

.field private delegate:Landroid/content/DialogInterface$OnDismissListener;

.field private isCancelable:Z

.field private final resolvedFeedbackOptions:Lio/sentry/SentryFeedbackOptions;

.field private screenshotPicker:Lio/sentry/android/core/SentryFeedbackScreenshotPicker;

.field private selectedImageUri:Landroid/net/Uri;

.field private shakeDetector:Lio/sentry/android/core/SentryShakeDetector;

.field private shakeLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method constructor <init>(Landroid/content/Context;ILio/sentry/protocol/SentryId;Lio/sentry/android/core/SentryUserFeedbackForm$OptionsConfiguration;Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "associatedEventId"    # Lio/sentry/protocol/SentryId;
    .param p4, "configuration"    # Lio/sentry/android/core/SentryUserFeedbackForm$OptionsConfiguration;
    .param p5, "configurator"    # Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->isCancelable:Z

    .line 64
    iput-object p3, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->associatedEventId:Lio/sentry/protocol/SentryId;

    .line 65
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 67
    .local v0, "options":Lio/sentry/SentryOptions;
    new-instance v1, Lio/sentry/SentryFeedbackOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/sentry/SentryFeedbackOptions;-><init>(Lio/sentry/SentryFeedbackOptions;)V

    .line 68
    .local v1, "feedbackOptions":Lio/sentry/SentryFeedbackOptions;
    if-eqz p4, :cond_0

    .line 69
    new-instance v2, Lio/sentry/SentryFeedbackOptions;

    invoke-direct {v2, v1}, Lio/sentry/SentryFeedbackOptions;-><init>(Lio/sentry/SentryFeedbackOptions;)V

    .line 72
    .local v2, "configuredOptions":Lio/sentry/SentryFeedbackOptions;
    :try_start_0
    invoke-interface {p4, p1, v2}, Lio/sentry/android/core/SentryUserFeedbackForm$OptionsConfiguration;->configure(Landroid/content/Context;Lio/sentry/SentryFeedbackOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    move-object v1, v2

    .line 80
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v3

    .line 75
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {v3}, Lio/sentry/util/ExceptionUtils;->rethrowIfFatal(Ljava/lang/Throwable;)V

    .line 76
    nop

    .line 77
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 78
    const-string v6, "Feedback OptionsConfiguration callback threw an exception."

    invoke-interface {v4, v5, v6, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .end local v2    # "configuredOptions":Lio/sentry/SentryFeedbackOptions;
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    .line 83
    new-instance v2, Lio/sentry/SentryFeedbackOptions;

    invoke-direct {v2, v1}, Lio/sentry/SentryFeedbackOptions;-><init>(Lio/sentry/SentryFeedbackOptions;)V

    .line 86
    .restart local v2    # "configuredOptions":Lio/sentry/SentryFeedbackOptions;
    :try_start_1
    invoke-interface {p5, v2}, Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;->configure(Lio/sentry/SentryFeedbackOptions;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    move-object v1, v2

    .line 93
    goto :goto_1

    .line 88
    :catchall_1
    move-exception v3

    .line 89
    .restart local v3    # "e":Ljava/lang/Throwable;
    invoke-static {v3}, Lio/sentry/util/ExceptionUtils;->rethrowIfFatal(Ljava/lang/Throwable;)V

    .line 90
    nop

    .line 91
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 92
    const-string v6, "Feedback OptionsConfigurator callback threw an exception."

    invoke-interface {v4, v5, v6, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .end local v2    # "configuredOptions":Lio/sentry/SentryFeedbackOptions;
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    iput-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->resolvedFeedbackOptions:Lio/sentry/SentryFeedbackOptions;

    .line 96
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v2

    const-string v3, "UserFeedbackWidget"

    invoke-virtual {v2, v3}, Lio/sentry/SentryIntegrationPackageStorage;->addIntegration(Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, p1}, Lio/sentry/android/core/SentryUserFeedbackForm;->maybeStartShakeDetection(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lio/sentry/android/core/SentryUserFeedbackForm;)Lio/sentry/android/core/SentryShakeDetector;
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/SentryUserFeedbackForm;

    .line 42
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->shakeDetector:Lio/sentry/android/core/SentryShakeDetector;

    return-object v0
.end method

.method static synthetic access$100(Lio/sentry/android/core/SentryUserFeedbackForm;Ljava/lang/ref/WeakReference;)Lio/sentry/android/core/SentryShakeDetector$Listener;
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/SentryUserFeedbackForm;
    .param p1, "x1"    # Ljava/lang/ref/WeakReference;

    .line 42
    invoke-direct {p0, p1}, Lio/sentry/android/core/SentryUserFeedbackForm;->shakeListener(Ljava/lang/ref/WeakReference;)Lio/sentry/android/core/SentryShakeDetector$Listener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lio/sentry/android/core/SentryUserFeedbackForm;)V
    .locals 0
    .param p0, "x0"    # Lio/sentry/android/core/SentryUserFeedbackForm;

    .line 42
    invoke-direct {p0}, Lio/sentry/android/core/SentryUserFeedbackForm;->stopShakeDetection()V

    return-void
.end method

.method private static getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 161
    move-object v0, p0

    .line 162
    .local v0, "current":Landroid/content/Context;
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 163
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 164
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    return-object v1

    .line 166
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getFeedbackShakeIntegration()Lio/sentry/android/core/FeedbackShakeIntegration;
    .locals 2

    .line 636
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryFeedbackOptions;->getShakeController()Lio/sentry/SentryFeedbackOptions$IShakeController;

    move-result-object v0

    .line 637
    .local v0, "controller":Lio/sentry/SentryFeedbackOptions$IShakeController;
    instance-of v1, v0, Lio/sentry/android/core/FeedbackShakeIntegration;

    if-eqz v1, :cond_0

    .line 638
    move-object v1, v0

    check-cast v1, Lio/sentry/android/core/FeedbackShakeIntegration;

    goto :goto_0

    .line 639
    :cond_0
    const/4 v1, 0x0

    .line 637
    :goto_0
    return-object v1
.end method

.method private static getUriSize(Lio/sentry/SentryOptions;Landroid/content/ContentResolver;Landroid/net/Uri;)J
    .locals 7
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 587
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "resolver":Landroid/content/ContentResolver;
    .end local p2    # "uri":Landroid/net/Uri;
    .local v1, "resolver":Landroid/content/ContentResolver;
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 588
    .local p1, "cursor":Landroid/database/Cursor;
    if-eqz p1, :cond_2

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 589
    const-string p2, "_size"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 590
    .local p2, "sizeIndex":I
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 591
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 594
    if-eqz p1, :cond_0

    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 591
    :cond_0
    return-wide v3

    .line 587
    .end local p2    # "sizeIndex":I
    :catchall_0
    move-exception v0

    move-object p2, v0

    if-eqz p1, :cond_1

    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local p0    # "options":Lio/sentry/SentryOptions;
    :cond_1
    :goto_0
    throw p2

    .line 594
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local p0    # "options":Lio/sentry/SentryOptions;
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 603
    .end local p1    # "cursor":Landroid/database/Cursor;
    :cond_3
    goto :goto_1

    .line 594
    :catchall_2
    move-exception v0

    move-object p1, v0

    .line 595
    .local p1, "t":Ljava/lang/Throwable;
    invoke-static {p1}, Lio/sentry/util/ExceptionUtils;->rethrowIfFatal(Ljava/lang/Throwable;)V

    .line 596
    nop

    .line 597
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 598
    const-string v3, "Unable to determine the size of the selected screenshot, the attachment size limit is applied when the feedback is captured."

    invoke-interface {p2, v0, v3, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 604
    .end local p1    # "t":Ljava/lang/Throwable;
    :goto_1
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method private isScreenshotPickerAvailable(Lio/sentry/SentryOptions;)Z
    .locals 2
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 520
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->resolvedFeedbackOptions:Lio/sentry/SentryFeedbackOptions;

    invoke-virtual {v0}, Lio/sentry/SentryFeedbackOptions;->getLoadClass()Lio/sentry/util/LoadClass;

    move-result-object v0

    .line 521
    .local v0, "loadClass":Lio/sentry/util/LoadClass;
    const-string v1, "androidx.activity.ComponentActivity"

    invoke-virtual {v0, v1, p1}, Lio/sentry/util/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    const-string v1, "androidx.activity.result.contract.ActivityResultContracts$PickVisualMedia"

    invoke-virtual {v0, v1, p1}, Lio/sentry/util/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 521
    :goto_0
    return v1
.end method

.method static synthetic lambda$maybeAddImageAttachment$7(Landroid/content/ContentResolver;Landroid/net/Uri;)[B
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 564
    nop

    .line 567
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getMaxAttachmentSize()J

    move-result-wide v0

    .line 564
    invoke-static {p0, p1, v0, v1}, Lio/sentry/android/core/SentryUserFeedbackForm;->readUriBytes(Landroid/content/ContentResolver;Landroid/net/Uri;J)[B

    move-result-object v0

    return-object v0
.end method

.method private maybeAddImageAttachment(Lio/sentry/Hint;)V
    .locals 11
    .param p1, "hint"    # Lio/sentry/Hint;

    .line 550
    iget-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->selectedImageUri:Landroid/net/Uri;

    .line 551
    .local v1, "imageUri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 552
    return-void

    .line 555
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/android/core/SentryUserFeedbackForm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 556
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 557
    .local v2, "resolvedMime":Ljava/lang/String;
    if-eqz v2, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    const-string v3, "image/png"

    :goto_0
    move-object v7, v3

    .line 559
    .local v7, "mime":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, "resolvedExt":Ljava/lang/String;
    if-eqz v3, :cond_2

    move-object v4, v3

    goto :goto_1

    :cond_2
    const-string v4, "png"

    :goto_1
    move-object v10, v4

    .line 561
    .local v10, "ext":Ljava/lang/String;
    new-instance v4, Lio/sentry/Attachment;

    new-instance v5, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda6;

    invoke-direct {v5, v0, v1}, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda6;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "screenshot."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "event.attachment"

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lio/sentry/Attachment;-><init>(Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, v4}, Lio/sentry/Hint;->addAttachment(Lio/sentry/Attachment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "resolvedMime":Ljava/lang/String;
    .end local v3    # "resolvedExt":Ljava/lang/String;
    .end local v7    # "mime":Ljava/lang/String;
    .end local v10    # "ext":Ljava/lang/String;
    goto :goto_2

    .line 572
    :catchall_0
    move-exception v0

    .line 573
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/sentry/util/ExceptionUtils;->rethrowIfFatal(Ljava/lang/Throwable;)V

    .line 576
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v2

    .line 577
    invoke-interface {v2}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    .line 578
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 579
    const-string v4, "Failed to attach image to feedback."

    invoke-interface {v2, v3, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 581
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method private maybeRegisterScreenshotPicker(Lio/sentry/SentryOptions;)V
    .locals 6
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 476
    sget v0, Lio/sentry/android/core/R$id;->sentry_dialog_user_feedback_btn_add_screenshot:I

    .line 477
    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryUserFeedbackForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 478
    .local v0, "btnAddScreenshot":Landroid/widget/Button;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->selectedImageUri:Landroid/net/Uri;

    .line 479
    iget-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->resolvedFeedbackOptions:Lio/sentry/SentryFeedbackOptions;

    invoke-virtual {v1}, Lio/sentry/SentryFeedbackOptions;->getAddScreenshotButtonLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->resolvedFeedbackOptions:Lio/sentry/SentryFeedbackOptions;

    invoke-virtual {v1}, Lio/sentry/SentryFeedbackOptions;->isEnableAttachScreenshot()Z

    move-result v1

    if-nez v1, :cond_0

    .line 482
    return-void

    .line 484
    :cond_0
    invoke-virtual {p0}, Lio/sentry/android/core/SentryUserFeedbackForm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/android/core/SentryUserFeedbackForm;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 485
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lio/sentry/android/core/SentryUserFeedbackForm;->isScreenshotPickerAvailable(Lio/sentry/SentryOptions;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 487
    :try_start_0
    new-instance v2, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, v0}, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda5;-><init>(Lio/sentry/android/core/SentryUserFeedbackForm;Lio/sentry/SentryOptions;Landroid/widget/Button;)V

    .line 488
    invoke-static {v1, v2}, Lio/sentry/android/core/SentryFeedbackScreenshotPicker;->register(Landroid/app/Activity;Lio/sentry/android/core/SentryFeedbackScreenshotPicker$OnScreenshotPicked;)Lio/sentry/android/core/SentryFeedbackScreenshotPicker;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->screenshotPicker:Lio/sentry/android/core/SentryFeedbackScreenshotPicker;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 497
    :catchall_0
    move-exception v2

    .line 498
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {v2}, Lio/sentry/util/ExceptionUtils;->rethrowIfFatal(Ljava/lang/Throwable;)V

    .line 499
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Failed to register the screenshot picker."

    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 490
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v2

    .line 494
    .local v2, "e":Ljava/lang/LinkageError;
    nop

    .line 495
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 496
    const-string v5, "androidx.activity is too old for the screenshot picker."

    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 500
    .end local v2    # "e":Ljava/lang/LinkageError;
    :goto_0
    nop

    .line 502
    :cond_1
    :goto_1
    iget-object v2, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->screenshotPicker:Lio/sentry/android/core/SentryFeedbackScreenshotPicker;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 503
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 505
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 506
    nop

    .line 507
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v3, v3, [Ljava/lang/Object;

    .line 508
    const-string v5, "Feedback screenshot button won\'t be shown. It requires the androidx.activity dependency and the feedback form being shown from a ComponentActivity."

    invoke-interface {v2, v4, v5, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    :goto_2
    return-void
.end method

.method private maybeStartShakeDetection(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 104
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    move-result-object v0

    .line 105
    .local v0, "globalFeedbackOptions":Lio/sentry/SentryFeedbackOptions;
    iget-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->resolvedFeedbackOptions:Lio/sentry/SentryFeedbackOptions;

    invoke-virtual {v1}, Lio/sentry/SentryFeedbackOptions;->isUseShakeGesture()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {v0}, Lio/sentry/SentryFeedbackOptions;->getShakeController()Lio/sentry/SentryFeedbackOptions$IShakeController;

    move-result-object v1

    invoke-interface {v1}, Lio/sentry/SentryFeedbackOptions$IShakeController;->isOnShakeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    invoke-static {p1}, Lio/sentry/android/core/SentryUserFeedbackForm;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 110
    .local v1, "activity":Landroid/app/Activity;
    if-nez v1, :cond_1

    .line 111
    return-void

    .line 113
    :cond_1
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v2

    invoke-interface {v2}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    .line 114
    .local v2, "options":Lio/sentry/SentryOptions;
    new-instance v3, Lio/sentry/android/core/SentryShakeDetector;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/sentry/android/core/SentryShakeDetector;-><init>(Lio/sentry/ILogger;)V

    iput-object v3, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->shakeDetector:Lio/sentry/android/core/SentryShakeDetector;

    .line 115
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 116
    .local v3, "activityRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    iget-object v4, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->shakeDetector:Lio/sentry/android/core/SentryShakeDetector;

    invoke-direct {p0, v3}, Lio/sentry/android/core/SentryUserFeedbackForm;->shakeListener(Ljava/lang/ref/WeakReference;)Lio/sentry/android/core/SentryShakeDetector$Listener;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lio/sentry/android/core/SentryShakeDetector;->start(Landroid/content/Context;Lio/sentry/android/core/SentryShakeDetector$Listener;)V

    .line 117
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    .line 118
    .local v4, "app":Landroid/app/Application;
    new-instance v5, Lio/sentry/android/core/SentryUserFeedbackForm$ShakeLifecycleCallbacks;

    invoke-direct {v5, p0, v3}, Lio/sentry/android/core/SentryUserFeedbackForm$ShakeLifecycleCallbacks;-><init>(Lio/sentry/android/core/SentryUserFeedbackForm;Ljava/lang/ref/WeakReference;)V

    iput-object v5, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->shakeLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 119
    iget-object v5, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->shakeLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v4, v5}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 120
    return-void

    .line 107
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "options":Lio/sentry/SentryOptions;
    .end local v3    # "activityRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    .end local v4    # "app":Landroid/app/Application;
    :cond_2
    :goto_0
    return-void
.end method

.method private onScreenshotPicked(Lio/sentry/SentryOptions;Landroid/widget/Button;Landroid/net/Uri;)V
    .locals 6
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "btnAddScreenshot"    # Landroid/widget/Button;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 530
    invoke-virtual {p0}, Lio/sentry/android/core/SentryUserFeedbackForm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lio/sentry/android/core/SentryUserFeedbackForm;->getUriSize(Lio/sentry/SentryOptions;Landroid/content/ContentResolver;Landroid/net/Uri;)J

    move-result-wide v0

    .line 531
    .local v0, "size":J
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getMaxAttachmentSize()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 532
    nop

    .line 533
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 537
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getMaxAttachmentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 534
    const-string v5, "Selected screenshot is larger than the maxAttachmentSize of %d bytes, dropping it."

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    nop

    .line 539
    invoke-virtual {p0}, Lio/sentry/android/core/SentryUserFeedbackForm;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->resolvedFeedbackOptions:Lio/sentry/SentryFeedbackOptions;

    .line 540
    invoke-virtual {v3}, Lio/sentry/SentryFeedbackOptions;->getScreenshotTooLargeMessageText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 538
    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 542
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 543
    return-void

    .line 545
    :cond_0
    iput-object p3, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->selectedImageUri:Landroid/net/Uri;

    .line 546
    iget-object v2, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->resolvedFeedbackOptions:Lio/sentry/SentryFeedbackOptions;

    invoke-virtual {v2}, Lio/sentry/SentryFeedbackOptions;->getRemoveScreenshotButtonLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 547
    return-void
.end method

.method private static readUriBytes(Landroid/content/ContentResolver;Landroid/net/Uri;J)[B
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 610
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 611
    .local v0, "inputStream":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 615
    invoke-static {v0, p2, p3}, Lio/sentry/util/FileUtils;->inputStreamToByteArray(Ljava/io/InputStream;J)[B

    move-result-object v1

    return-object v1

    .line 612
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open image attachment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private shakeListener(Ljava/lang/ref/WeakReference;)Lio/sentry/android/core/SentryShakeDetector$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)",
            "Lio/sentry/android/core/SentryShakeDetector$Listener;"
        }
    .end annotation

    .line 138
    .local p1, "activityRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    new-instance v0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/SentryUserFeedbackForm;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method private stopShakeDetection()V
    .locals 4

    .line 123
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->shakeDetector:Lio/sentry/android/core/SentryShakeDetector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->shakeDetector:Lio/sentry/android/core/SentryShakeDetector;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryShakeDetector;->close()V

    .line 125
    iput-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->shakeDetector:Lio/sentry/android/core/SentryShakeDetector;

    .line 127
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->shakeLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {p0}, Lio/sentry/android/core/SentryUserFeedbackForm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/android/core/SentryUserFeedbackForm;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 129
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->shakeLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v2, v3}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 132
    :cond_1
    iput-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->shakeLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 134
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    return-void
.end method


# virtual methods
.method synthetic lambda$maybeRegisterScreenshotPicker$6$io-sentry-android-core-SentryUserFeedbackForm(Lio/sentry/SentryOptions;Landroid/widget/Button;Landroid/net/Uri;)V
    .locals 0
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "btnAddScreenshot"    # Landroid/widget/Button;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 489
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/SentryUserFeedbackForm;->onScreenshotPicked(Lio/sentry/SentryOptions;Landroid/widget/Button;Landroid/net/Uri;)V

    return-void
.end method

.method synthetic lambda$onCreate$2$io-sentry-android-core-SentryUserFeedbackForm(Landroid/widget/Button;Lio/sentry/SentryFeedbackOptions;Landroid/view/View;)V
    .locals 4
    .param p1, "btnAddScreenshot"    # Landroid/widget/Button;
    .param p2, "feedbackOptions"    # Lio/sentry/SentryFeedbackOptions;
    .param p3, "v"    # Landroid/view/View;

    .line 251
    const-string v0, "Failed to launch the screenshot picker."

    iget-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->selectedImageUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 252
    iget-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->screenshotPicker:Lio/sentry/android/core/SentryFeedbackScreenshotPicker;

    if-eqz v1, :cond_1

    .line 254
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->screenshotPicker:Lio/sentry/android/core/SentryFeedbackScreenshotPicker;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryFeedbackScreenshotPicker;->launch()V
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v1

    .line 263
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/sentry/util/ExceptionUtils;->rethrowIfFatal(Ljava/lang/Throwable;)V

    .line 265
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v2

    .line 266
    invoke-interface {v2}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    .line 267
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 268
    invoke-interface {v2, v3, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 255
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/LinkageError;
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v2

    .line 259
    invoke-interface {v2}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    .line 260
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 261
    invoke-interface {v2, v3, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    .end local v1    # "e":Ljava/lang/LinkageError;
    :goto_0
    goto :goto_1

    .line 272
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->selectedImageUri:Landroid/net/Uri;

    .line 273
    invoke-virtual {p2}, Lio/sentry/SentryFeedbackOptions;->getAddScreenshotButtonLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :cond_1
    :goto_1
    return-void
.end method

.method synthetic lambda$onCreate$3$io-sentry-android-core-SentryUserFeedbackForm(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lio/sentry/SentryFeedbackOptions;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 12
    .param p1, "edtName"    # Landroid/widget/EditText;
    .param p2, "edtEmail"    # Landroid/widget/EditText;
    .param p3, "edtMessage"    # Landroid/widget/EditText;
    .param p4, "feedbackOptions"    # Lio/sentry/SentryFeedbackOptions;
    .param p5, "lblName"    # Landroid/widget/TextView;
    .param p6, "lblEmail"    # Landroid/widget/TextView;
    .param p7, "lblMessage"    # Landroid/widget/TextView;
    .param p8, "v"    # Landroid/view/View;

    .line 329
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "email":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p4 .. p4}, Lio/sentry/SentryFeedbackOptions;->isNameRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual/range {p5 .. p5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 336
    return-void

    .line 339
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p4 .. p4}, Lio/sentry/SentryFeedbackOptions;->isEmailRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual/range {p6 .. p6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 341
    return-void

    .line 344
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    invoke-virtual/range {p7 .. p7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v4, p3

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 346
    return-void

    .line 350
    :cond_2
    move-object v4, p3

    new-instance v0, Lio/sentry/protocol/Feedback;

    invoke-direct {v0, v3}, Lio/sentry/protocol/Feedback;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 351
    .local v5, "feedback":Lio/sentry/protocol/Feedback;
    invoke-virtual {v5, v1}, Lio/sentry/protocol/Feedback;->setName(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v5, v2}, Lio/sentry/protocol/Feedback;->setContactEmail(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->associatedEventId:Lio/sentry/protocol/SentryId;

    if-eqz v0, :cond_3

    .line 354
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->associatedEventId:Lio/sentry/protocol/SentryId;

    invoke-virtual {v5, v0}, Lio/sentry/protocol/Feedback;->setAssociatedEventId(Lio/sentry/protocol/SentryId;)V

    .line 356
    :cond_3
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->currentReplayId:Lio/sentry/protocol/SentryId;

    if-eqz v0, :cond_4

    .line 357
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->currentReplayId:Lio/sentry/protocol/SentryId;

    invoke-virtual {v5, v0}, Lio/sentry/protocol/Feedback;->setReplayId(Lio/sentry/protocol/SentryId;)V

    .line 361
    :cond_4
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    move-object v6, v0

    .line 362
    .local v6, "hint":Lio/sentry/Hint;
    invoke-direct {p0, v6}, Lio/sentry/android/core/SentryUserFeedbackForm;->maybeAddImageAttachment(Lio/sentry/Hint;)V

    .line 363
    invoke-static {}, Lio/sentry/Sentry;->feedback()Lio/sentry/IFeedbackApi;

    move-result-object v0

    invoke-interface {v0, v5, v6}, Lio/sentry/IFeedbackApi;->capture(Lio/sentry/protocol/Feedback;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v7

    .line 364
    .local v7, "id":Lio/sentry/protocol/SentryId;
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v7, v0}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 365
    nop

    .line 366
    invoke-virtual {p0}, Lio/sentry/android/core/SentryUserFeedbackForm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lio/sentry/SentryFeedbackOptions;->getSuccessMessageText()Ljava/lang/CharSequence;

    move-result-object v8

    .line 365
    const/4 v9, 0x0

    invoke-static {v0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 368
    nop

    .line 369
    invoke-virtual/range {p4 .. p4}, Lio/sentry/SentryFeedbackOptions;->getOnSubmitSuccess()Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;

    move-result-object v8

    .line 370
    .local v8, "onSubmitSuccess":Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;
    if-eqz v8, :cond_5

    .line 372
    :try_start_0
    invoke-interface {v8, v5}, Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;->call(Lio/sentry/protocol/Feedback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v9

    .line 375
    invoke-interface {v9}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v9

    .line 376
    invoke-virtual {v9}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v9

    sget-object v10, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 377
    const-string v11, "onSubmitSuccess callback threw an exception."

    invoke-interface {v9, v10, v11, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "onSubmitSuccess":Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;
    :cond_5
    :goto_0
    goto :goto_1

    .line 381
    :cond_6
    nop

    .line 382
    invoke-virtual/range {p4 .. p4}, Lio/sentry/SentryFeedbackOptions;->getOnSubmitError()Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;

    move-result-object v8

    .line 383
    .local v8, "onSubmitError":Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;
    if-eqz v8, :cond_7

    .line 385
    :try_start_1
    invoke-interface {v8, v5}, Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;->call(Lio/sentry/protocol/Feedback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 391
    goto :goto_1

    .line 386
    :catch_1
    move-exception v0

    .line 387
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v9

    .line 388
    invoke-interface {v9}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v9

    .line 389
    invoke-virtual {v9}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v9

    sget-object v10, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 390
    const-string v11, "onSubmitError callback threw an exception."

    invoke-interface {v9, v10, v11, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 394
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "onSubmitError":Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lio/sentry/android/core/SentryUserFeedbackForm;->cancel()V

    .line 395
    return-void
.end method

.method synthetic lambda$onCreate$4$io-sentry-android-core-SentryUserFeedbackForm(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 398
    invoke-virtual {p0}, Lio/sentry/android/core/SentryUserFeedbackForm;->cancel()V

    return-void
.end method

.method synthetic lambda$setOnDismissListener$5$io-sentry-android-core-SentryUserFeedbackForm(Ljava/lang/Runnable;Lio/sentry/SentryOptions;Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "onFormClose"    # Ljava/lang/Runnable;
    .param p2, "options"    # Lio/sentry/SentryOptions;
    .param p3, "dialog"    # Landroid/content/DialogInterface;

    .line 414
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/Exception;
    nop

    .line 417
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 418
    const-string v3, "onFormClose callback threw an exception."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 420
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->currentReplayId:Lio/sentry/protocol/SentryId;

    .line 421
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->delegate:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->delegate:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p3}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 424
    :cond_0
    return-void
.end method

.method synthetic lambda$shakeListener$0$io-sentry-android-core-SentryUserFeedbackForm(Landroid/app/Activity;)V
    .locals 1
    .param p1, "active"    # Landroid/app/Activity;

    .line 152
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lio/sentry/android/core/SentryUserFeedbackForm;->show()V

    .line 155
    :cond_0
    return-void
.end method

.method synthetic lambda$shakeListener$1$io-sentry-android-core-SentryUserFeedbackForm(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .param p1, "activityRef"    # Ljava/lang/ref/WeakReference;

    .line 141
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lio/sentry/SentryFeedbackOptions;->getShakeController()Lio/sentry/SentryFeedbackOptions$IShakeController;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Lio/sentry/SentryFeedbackOptions$IShakeController;->isOnShakeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    return-void

    .line 148
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 149
    .local v0, "active":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    new-instance v1, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda4;-><init>(Lio/sentry/android/core/SentryUserFeedbackForm;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 157
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 223
    move-object/from16 v1, p0

    invoke-super/range {p0 .. p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 224
    sget v0, Lio/sentry/android/core/R$layout;->sentry_dialog_user_feedback:I

    invoke-virtual {v1, v0}, Lio/sentry/android/core/SentryUserFeedbackForm;->setContentView(I)V

    .line 225
    invoke-virtual {v1}, Lio/sentry/android/core/SentryUserFeedbackForm;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 226
    .local v9, "window":Landroid/view/Window;
    if-eqz v9, :cond_0

    .line 227
    const/high16 v0, 0x20000

    invoke-virtual {v9, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 229
    :cond_0
    iget-boolean v0, v1, Lio/sentry/android/core/SentryUserFeedbackForm;->isCancelable:Z

    invoke-virtual {v1, v0}, Lio/sentry/android/core/SentryUserFeedbackForm;->setCancelable(Z)V

    .line 231
    iget-object v5, v1, Lio/sentry/android/core/SentryUserFeedbackForm;->resolvedFeedbackOptions:Lio/sentry/SentryFeedbackOptions;

    .line 232
    .local v5, "feedbackOptions":Lio/sentry/SentryFeedbackOptions;
    sget v0, Lio/sentry/android/core/R$id;->sentry_dialog_user_feedback_title:I

    invoke-virtual {v1, v0}, Lio/sentry/android/core/SentryUserFeedbackForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    .line 233
    .local v10, "lblTitle":Landroid/widget/TextView;
    sget v0, Lio/sentry/android/core/R$id;->sentry_dialog_user_feedback_logo:I

    invoke-virtual {v1, v0}, Lio/sentry/android/core/SentryUserFeedbackForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/ImageView;

    .line 234
    .local v11, "imgLogo":Landroid/widget/ImageView;
    sget v0, Lio/sentry/android/core/R$id;->sentry_dialog_user_feedback_txt_name:I

    invoke-virtual {v1, v0}, Lio/sentry/android/core/SentryUserFeedbackForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    .line 235
    .local v6, "lblName":Landroid/widget/TextView;
    sget v0, Lio/sentry/android/core/R$id;->sentry_dialog_user_feedback_edt_name:I

    invoke-virtual {v1, v0}, Lio/sentry/android/core/SentryUserFeedbackForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    .line 236
    .local v2, "edtName":Landroid/widget/EditText;
    sget v0, Lio/sentry/android/core/R$id;->sentry_dialog_user_feedback_txt_email:I

    invoke-virtual {v1, v0}, Lio/sentry/android/core/SentryUserFeedbackForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 237
    .local v7, "lblEmail":Landroid/widget/TextView;
    sget v0, Lio/sentry/android/core/R$id;->sentry_dialog_user_feedback_edt_email:I

    invoke-virtual {v1, v0}, Lio/sentry/android/core/SentryUserFeedbackForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/EditText;

    .line 238
    .local v3, "edtEmail":Landroid/widget/EditText;
    sget v0, Lio/sentry/android/core/R$id;->sentry_dialog_user_feedback_txt_description:I

    .line 239
    invoke-virtual {v1, v0}, Lio/sentry/android/core/SentryUserFeedbackForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    .line 240
    .local v8, "lblMessage":Landroid/widget/TextView;
    sget v0, Lio/sentry/android/core/R$id;->sentry_dialog_user_feedback_edt_description:I

    .line 241
    invoke-virtual {v1, v0}, Lio/sentry/android/core/SentryUserFeedbackForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    .line 242
    .local v4, "edtMessage":Landroid/widget/EditText;
    sget v0, Lio/sentry/android/core/R$id;->sentry_dialog_user_feedback_btn_send:I

    invoke-virtual {v1, v0}, Lio/sentry/android/core/SentryUserFeedbackForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/Button;

    .line 243
    .local v12, "btnSend":Landroid/widget/Button;
    sget v0, Lio/sentry/android/core/R$id;->sentry_dialog_user_feedback_btn_cancel:I

    invoke-virtual {v1, v0}, Lio/sentry/android/core/SentryUserFeedbackForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/Button;

    .line 244
    .local v13, "btnCancel":Landroid/widget/Button;
    sget v0, Lio/sentry/android/core/R$id;->sentry_dialog_user_feedback_btn_add_screenshot:I

    .line 245
    invoke-virtual {v1, v0}, Lio/sentry/android/core/SentryUserFeedbackForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/Button;

    .line 248
    .local v14, "btnAddScreenshot":Landroid/widget/Button;
    const/16 v0, 0x8

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 249
    new-instance v15, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda1;

    invoke-direct {v15, v1, v14, v5}, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/SentryUserFeedbackForm;Landroid/widget/Button;Lio/sentry/SentryFeedbackOptions;)V

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->isShowBranding()Z

    move-result v15

    const/4 v0, 0x0

    if-eqz v15, :cond_1

    .line 278
    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v15, 0x8

    goto :goto_0

    .line 280
    :cond_1
    const/16 v15, 0x8

    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    :goto_0
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->isShowName()Z

    move-result v16

    if-nez v16, :cond_2

    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->isNameRequired()Z

    move-result v16

    if-nez v16, :cond_2

    .line 285
    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    invoke-virtual {v2, v15}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1

    .line 288
    :cond_2
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 290
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->getNameLabel()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->getNamePlaceholder()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->isNameRequired()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 293
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->getIsRequiredLabel()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 298
    :cond_3
    :goto_1
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->isShowEmail()Z

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->isEmailRequired()Z

    move-result v15

    if-nez v15, :cond_4

    .line 299
    const/16 v15, 0x8

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2

    .line 302
    :cond_4
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 304
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->getEmailLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->getEmailPlaceholder()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 306
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->isEmailRequired()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 307
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->getIsRequiredLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 312
    :cond_5
    :goto_2
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->isUseSentryUser()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 313
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScope;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    .line 314
    .local v0, "user":Lio/sentry/protocol/User;
    if-eqz v0, :cond_6

    .line 315
    invoke-virtual {v0}, Lio/sentry/protocol/User;->getUsername()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 316
    invoke-virtual {v0}, Lio/sentry/protocol/User;->getEmail()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 320
    .end local v0    # "user":Lio/sentry/protocol/User;
    :cond_6
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->getMessageLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->getIsRequiredLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 322
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->getMessagePlaceholder()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 323
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->getFormTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->getSubmitButtonLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 326
    new-instance v0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda2;

    invoke-direct/range {v0 .. v8}, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/core/SentryUserFeedbackForm;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lio/sentry/SentryFeedbackOptions;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->getCancelButtonLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 398
    new-instance v0, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1}, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda3;-><init>(Lio/sentry/android/core/SentryUserFeedbackForm;)V

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v0, v1, Lio/sentry/android/core/SentryUserFeedbackForm;->delegate:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v0}, Lio/sentry/android/core/SentryUserFeedbackForm;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 400
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 620
    invoke-super {p0}, Landroid/app/AlertDialog;->onDetachedFromWindow()V

    .line 624
    invoke-direct {p0}, Lio/sentry/android/core/SentryUserFeedbackForm;->getFeedbackShakeIntegration()Lio/sentry/android/core/FeedbackShakeIntegration;

    move-result-object v0

    .line 625
    .local v0, "integration":Lio/sentry/android/core/FeedbackShakeIntegration;
    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {v0, p0}, Lio/sentry/android/core/FeedbackShakeIntegration;->onDialogGone(Landroid/app/Dialog;)V

    .line 628
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 10

    .line 432
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 434
    sget v0, Lio/sentry/android/core/R$id;->sentry_dialog_user_feedback_edt_description:I

    .line 435
    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryUserFeedbackForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 436
    .local v0, "edtMessage":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 437
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 439
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v1

    invoke-interface {v1}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 440
    .local v1, "options":Lio/sentry/SentryOptions;
    invoke-direct {p0, v1}, Lio/sentry/android/core/SentryUserFeedbackForm;->maybeRegisterScreenshotPicker(Lio/sentry/SentryOptions;)V

    .line 441
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    move-result-object v2

    .line 444
    .local v2, "feedbackOptions":Lio/sentry/SentryFeedbackOptions;
    invoke-direct {p0}, Lio/sentry/android/core/SentryUserFeedbackForm;->getFeedbackShakeIntegration()Lio/sentry/android/core/FeedbackShakeIntegration;

    move-result-object v3

    .line 445
    .local v3, "integration":Lio/sentry/android/core/FeedbackShakeIntegration;
    invoke-virtual {p0}, Lio/sentry/android/core/SentryUserFeedbackForm;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lio/sentry/android/core/SentryUserFeedbackForm;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v4

    .line 446
    .local v4, "activity":Landroid/app/Activity;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 447
    invoke-virtual {v3, v4, p0}, Lio/sentry/android/core/FeedbackShakeIntegration;->onDialogVisible(Landroid/app/Activity;Landroid/app/Dialog;)V

    .line 449
    :cond_0
    invoke-virtual {v2}, Lio/sentry/SentryFeedbackOptions;->getOnFormOpen()Ljava/lang/Runnable;

    move-result-object v5

    .line 450
    .local v5, "onFormOpen":Ljava/lang/Runnable;
    if-eqz v5, :cond_1

    .line 452
    :try_start_0
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    goto :goto_0

    .line 453
    :catch_0
    move-exception v6

    .line 454
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v7

    sget-object v8, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v9, "onFormOpen callback threw an exception."

    invoke-interface {v7, v8, v9, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 457
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v7}, Lio/sentry/ReplayController;->captureReplay(Ljava/lang/Boolean;)Lio/sentry/protocol/SentryId;

    .line 458
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object v6

    invoke-interface {v6}, Lio/sentry/ReplayController;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v6

    iput-object v6, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->currentReplayId:Lio/sentry/protocol/SentryId;

    .line 459
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 463
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 464
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->screenshotPicker:Lio/sentry/android/core/SentryFeedbackScreenshotPicker;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->screenshotPicker:Lio/sentry/android/core/SentryFeedbackScreenshotPicker;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryFeedbackScreenshotPicker;->unregister()V

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->screenshotPicker:Lio/sentry/android/core/SentryFeedbackScreenshotPicker;

    .line 468
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/core/SentryUserFeedbackForm;->getFeedbackShakeIntegration()Lio/sentry/android/core/FeedbackShakeIntegration;

    move-result-object v0

    .line 469
    .local v0, "integration":Lio/sentry/android/core/FeedbackShakeIntegration;
    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {v0, p0}, Lio/sentry/android/core/FeedbackShakeIntegration;->onDialogGone(Landroid/app/Dialog;)V

    .line 472
    :cond_1
    return-void
.end method

.method public setCancelable(Z)V
    .locals 0
    .param p1, "cancelable"    # Z

    .line 216
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 217
    iput-boolean p1, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->isCancelable:Z

    .line 218
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 404
    iput-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->delegate:Landroid/content/DialogInterface$OnDismissListener;

    .line 406
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 407
    .local v0, "options":Lio/sentry/SentryOptions;
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryFeedbackOptions;->getOnFormClose()Ljava/lang/Runnable;

    move-result-object v1

    .line 408
    .local v1, "onFormClose":Ljava/lang/Runnable;
    if-eqz v1, :cond_0

    .line 409
    new-instance v2, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v1, v0}, Lio/sentry/android/core/SentryUserFeedbackForm$$ExternalSyntheticLambda7;-><init>(Lio/sentry/android/core/SentryUserFeedbackForm;Ljava/lang/Runnable;Lio/sentry/SentryOptions;)V

    invoke-super {p0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 426
    :cond_0
    iget-object v2, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->delegate:Landroid/content/DialogInterface$OnDismissListener;

    invoke-super {p0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 428
    :goto_0
    return-void
.end method

.method public show()V
    .locals 6

    .line 645
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    .line 646
    .local v0, "scopes":Lio/sentry/IScopes;
    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 647
    .local v1, "options":Lio/sentry/SentryOptions;
    invoke-interface {v0}, Lio/sentry/IScopes;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 654
    :cond_0
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 655
    return-void

    .line 648
    :cond_1
    :goto_0
    nop

    .line 649
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 650
    const-string v5, "Sentry is disabled. Feedback dialog won\'t be shown."

    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 651
    return-void
.end method
