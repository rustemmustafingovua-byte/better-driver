.class Lio/sentry/android/core/SentryAndroidOptions$AndroidUserFeedbackFormHandler;
.super Ljava/lang/Object;
.source "SentryAndroidOptions.java"

# interfaces
.implements Lio/sentry/SentryFeedbackOptions$IFormHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/SentryAndroidOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AndroidUserFeedbackFormHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showForm(Lio/sentry/protocol/SentryId;Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)V
    .locals 5
    .param p1, "associatedEventId"    # Lio/sentry/protocol/SentryId;
    .param p2, "configurator"    # Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;

    .line 1026
    invoke-static {}, Lio/sentry/android/core/CurrentActivityHolder;->getInstance()Lio/sentry/android/core/CurrentActivityHolder;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/CurrentActivityHolder;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1027
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 1028
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v1

    .line 1029
    invoke-interface {v1}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 1030
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 1031
    const-string v4, "Cannot show user feedback dialog, no activity is available. Make sure to call SentryAndroid.init() in your Application.onCreate() method."

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1035
    return-void

    .line 1038
    :cond_0
    new-instance v1, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;

    invoke-direct {v1, v0}, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;-><init>(Landroid/content/Context;)V

    .line 1039
    invoke-virtual {v1, p1}, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;->associatedEventId(Lio/sentry/protocol/SentryId;)Lio/sentry/android/core/SentryUserFeedbackForm$Builder;

    move-result-object v1

    .line 1040
    invoke-virtual {v1, p2}, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;->configurator(Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)Lio/sentry/android/core/SentryUserFeedbackForm$Builder;

    move-result-object v1

    .line 1041
    invoke-virtual {v1}, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;->create()Lio/sentry/android/core/SentryUserFeedbackForm;

    move-result-object v1

    .line 1042
    invoke-virtual {v1}, Lio/sentry/android/core/SentryUserFeedbackForm;->show()V

    .line 1043
    return-void
.end method
