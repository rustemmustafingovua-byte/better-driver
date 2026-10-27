.class public Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;
.super Lio/sentry/android/core/SentryUserFeedbackForm$Builder;
.source "SentryUserFeedbackDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/SentryUserFeedbackDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;-><init>(Landroid/content/Context;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILio/sentry/android/core/SentryUserFeedbackDialog$OptionsConfiguration;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "configuration"    # Lio/sentry/android/core/SentryUserFeedbackDialog$OptionsConfiguration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;-><init>(Landroid/content/Context;ILio/sentry/android/core/SentryUserFeedbackForm$OptionsConfiguration;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/SentryUserFeedbackDialog$OptionsConfiguration;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configuration"    # Lio/sentry/android/core/SentryUserFeedbackDialog$OptionsConfiguration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;-><init>(Landroid/content/Context;Lio/sentry/android/core/SentryUserFeedbackForm$OptionsConfiguration;)V

    .line 67
    return-void
.end method


# virtual methods
.method public associatedEventId(Lio/sentry/protocol/SentryId;)Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;
    .locals 0
    .param p1, "associatedEventId"    # Lio/sentry/protocol/SentryId;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    invoke-super {p0, p1}, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;->associatedEventId(Lio/sentry/protocol/SentryId;)Lio/sentry/android/core/SentryUserFeedbackForm$Builder;

    .line 98
    return-object p0
.end method

.method public bridge synthetic associatedEventId(Lio/sentry/protocol/SentryId;)Lio/sentry/android/core/SentryUserFeedbackForm$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;->associatedEventId(Lio/sentry/protocol/SentryId;)Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public configurator(Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;
    .locals 0
    .param p1, "configurator"    # Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    invoke-super {p0, p1}, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;->configurator(Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)Lio/sentry/android/core/SentryUserFeedbackForm$Builder;

    .line 91
    return-object p0
.end method

.method public bridge synthetic configurator(Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)Lio/sentry/android/core/SentryUserFeedbackForm$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;->configurator(Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public create()Lio/sentry/android/core/SentryUserFeedbackDialog;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    new-instance v0, Lio/sentry/android/core/SentryUserFeedbackDialog;

    iget-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;->context:Landroid/content/Context;

    iget v2, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;->themeResId:I

    iget-object v3, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;->associatedEventId:Lio/sentry/protocol/SentryId;

    iget-object v4, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;->configuration:Lio/sentry/android/core/SentryUserFeedbackForm$OptionsConfiguration;

    iget-object v5, p0, Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;->configurator:Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;

    invoke-direct/range {v0 .. v5}, Lio/sentry/android/core/SentryUserFeedbackDialog;-><init>(Landroid/content/Context;ILio/sentry/protocol/SentryId;Lio/sentry/android/core/SentryUserFeedbackForm$OptionsConfiguration;Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)V

    return-object v0
.end method

.method public bridge synthetic create()Lio/sentry/android/core/SentryUserFeedbackForm;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-virtual {p0}, Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;->create()Lio/sentry/android/core/SentryUserFeedbackDialog;

    move-result-object v0

    return-object v0
.end method
