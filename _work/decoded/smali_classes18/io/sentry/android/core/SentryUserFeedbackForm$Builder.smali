.class public Lio/sentry/android/core/SentryUserFeedbackForm$Builder;
.super Ljava/lang/Object;
.source "SentryUserFeedbackForm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/SentryUserFeedbackForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field associatedEventId:Lio/sentry/protocol/SentryId;

.field configuration:Lio/sentry/android/core/SentryUserFeedbackForm$OptionsConfiguration;

.field configurator:Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;

.field final context:Landroid/content/Context;

.field final themeResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 675
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;-><init>(Landroid/content/Context;I)V

    .line 676
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 699
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;-><init>(Landroid/content/Context;ILio/sentry/android/core/SentryUserFeedbackForm$OptionsConfiguration;)V

    .line 700
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILio/sentry/android/core/SentryUserFeedbackForm$OptionsConfiguration;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "configuration"    # Lio/sentry/android/core/SentryUserFeedbackForm$OptionsConfiguration;

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    iput-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;->context:Landroid/content/Context;

    .line 748
    iput p2, p0, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;->themeResId:I

    .line 749
    iput-object p3, p0, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;->configuration:Lio/sentry/android/core/SentryUserFeedbackForm$OptionsConfiguration;

    .line 750
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/SentryUserFeedbackForm$OptionsConfiguration;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configuration"    # Lio/sentry/android/core/SentryUserFeedbackForm$OptionsConfiguration;

    .line 716
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;-><init>(Landroid/content/Context;ILio/sentry/android/core/SentryUserFeedbackForm$OptionsConfiguration;)V

    .line 717
    return-void
.end method


# virtual methods
.method public associatedEventId(Lio/sentry/protocol/SentryId;)Lio/sentry/android/core/SentryUserFeedbackForm$Builder;
    .locals 0
    .param p1, "associatedEventId"    # Lio/sentry/protocol/SentryId;

    .line 771
    iput-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;->associatedEventId:Lio/sentry/protocol/SentryId;

    .line 772
    return-object p0
.end method

.method public configurator(Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)Lio/sentry/android/core/SentryUserFeedbackForm$Builder;
    .locals 0
    .param p1, "configurator"    # Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;

    .line 760
    iput-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;->configurator:Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;

    .line 761
    return-object p0
.end method

.method public create()Lio/sentry/android/core/SentryUserFeedbackForm;
    .locals 6

    .line 782
    new-instance v0, Lio/sentry/android/core/SentryUserFeedbackForm;

    iget-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;->context:Landroid/content/Context;

    iget v2, p0, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;->themeResId:I

    iget-object v3, p0, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;->associatedEventId:Lio/sentry/protocol/SentryId;

    iget-object v4, p0, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;->configuration:Lio/sentry/android/core/SentryUserFeedbackForm$OptionsConfiguration;

    iget-object v5, p0, Lio/sentry/android/core/SentryUserFeedbackForm$Builder;->configurator:Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;

    invoke-direct/range {v0 .. v5}, Lio/sentry/android/core/SentryUserFeedbackForm;-><init>(Landroid/content/Context;ILio/sentry/protocol/SentryId;Lio/sentry/android/core/SentryUserFeedbackForm$OptionsConfiguration;Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)V

    return-object v0
.end method
