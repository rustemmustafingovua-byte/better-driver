.class public final Lio/sentry/android/core/SentryUserFeedbackDialog;
.super Lio/sentry/android/core/SentryUserFeedbackForm;
.source "SentryUserFeedbackDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/SentryUserFeedbackDialog$OptionsConfiguration;,
        Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;ILio/sentry/protocol/SentryId;Lio/sentry/android/core/SentryUserFeedbackForm$OptionsConfiguration;Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "associatedEventId"    # Lio/sentry/protocol/SentryId;
    .param p4, "configuration"    # Lio/sentry/android/core/SentryUserFeedbackForm$OptionsConfiguration;
    .param p5, "configurator"    # Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;

    .line 21
    invoke-direct/range {p0 .. p5}, Lio/sentry/android/core/SentryUserFeedbackForm;-><init>(Landroid/content/Context;ILio/sentry/protocol/SentryId;Lio/sentry/android/core/SentryUserFeedbackForm$OptionsConfiguration;Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)V

    .line 22
    return-void
.end method
