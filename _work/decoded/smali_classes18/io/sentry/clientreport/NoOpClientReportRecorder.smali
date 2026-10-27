.class public final Lio/sentry/clientreport/NoOpClientReportRecorder;
.super Ljava/lang/Object;
.source "NoOpClientReportRecorder.java"

# interfaces
.implements Lio/sentry/clientreport/IClientReportRecorder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachReportToEnvelope(Lio/sentry/SentryEnvelope;)Lio/sentry/SentryEnvelope;
    .locals 0
    .param p1, "envelope"    # Lio/sentry/SentryEnvelope;

    .line 36
    return-object p1
.end method

.method public recordLostEnvelope(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V
    .locals 0
    .param p1, "reason"    # Lio/sentry/clientreport/DiscardReason;
    .param p2, "envelope"    # Lio/sentry/SentryEnvelope;

    .line 15
    return-void
.end method

.method public recordLostEnvelopeItem(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelopeItem;)V
    .locals 0
    .param p1, "reason"    # Lio/sentry/clientreport/DiscardReason;
    .param p2, "envelopeItem"    # Lio/sentry/SentryEnvelopeItem;

    .line 21
    return-void
.end method

.method public recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V
    .locals 0
    .param p1, "reason"    # Lio/sentry/clientreport/DiscardReason;
    .param p2, "category"    # Lio/sentry/DataCategory;

    .line 26
    return-void
.end method

.method public recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;J)V
    .locals 0
    .param p1, "reason"    # Lio/sentry/clientreport/DiscardReason;
    .param p2, "category"    # Lio/sentry/DataCategory;
    .param p3, "count"    # J

    .line 32
    return-void
.end method
