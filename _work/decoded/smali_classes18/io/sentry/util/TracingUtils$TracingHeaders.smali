.class public final Lio/sentry/util/TracingUtils$TracingHeaders;
.super Ljava/lang/Object;
.source "TracingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/util/TracingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TracingHeaders"
.end annotation


# instance fields
.field private final baggageHeader:Lio/sentry/BaggageHeader;

.field private final sentryTraceHeader:Lio/sentry/SentryTraceHeader;

.field private final w3cTraceparentHeader:Lio/sentry/W3CTraceparentHeader;


# direct methods
.method public constructor <init>(Lio/sentry/SentryTraceHeader;Lio/sentry/BaggageHeader;)V
    .locals 1
    .param p1, "sentryTraceHeader"    # Lio/sentry/SentryTraceHeader;
    .param p2, "baggageHeader"    # Lio/sentry/BaggageHeader;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lio/sentry/util/TracingUtils$TracingHeaders;->sentryTraceHeader:Lio/sentry/SentryTraceHeader;

    .line 141
    iput-object p2, p0, Lio/sentry/util/TracingUtils$TracingHeaders;->baggageHeader:Lio/sentry/BaggageHeader;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/util/TracingUtils$TracingHeaders;->w3cTraceparentHeader:Lio/sentry/W3CTraceparentHeader;

    .line 143
    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryTraceHeader;Lio/sentry/BaggageHeader;Lio/sentry/W3CTraceparentHeader;)V
    .locals 0
    .param p1, "sentryTraceHeader"    # Lio/sentry/SentryTraceHeader;
    .param p2, "baggageHeader"    # Lio/sentry/BaggageHeader;
    .param p3, "w3cTraceparentHeader"    # Lio/sentry/W3CTraceparentHeader;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lio/sentry/util/TracingUtils$TracingHeaders;->sentryTraceHeader:Lio/sentry/SentryTraceHeader;

    .line 150
    iput-object p2, p0, Lio/sentry/util/TracingUtils$TracingHeaders;->baggageHeader:Lio/sentry/BaggageHeader;

    .line 151
    iput-object p3, p0, Lio/sentry/util/TracingUtils$TracingHeaders;->w3cTraceparentHeader:Lio/sentry/W3CTraceparentHeader;

    .line 152
    return-void
.end method


# virtual methods
.method public getBaggageHeader()Lio/sentry/BaggageHeader;
    .locals 1

    .line 159
    iget-object v0, p0, Lio/sentry/util/TracingUtils$TracingHeaders;->baggageHeader:Lio/sentry/BaggageHeader;

    return-object v0
.end method

.method public getSentryTraceHeader()Lio/sentry/SentryTraceHeader;
    .locals 1

    .line 155
    iget-object v0, p0, Lio/sentry/util/TracingUtils$TracingHeaders;->sentryTraceHeader:Lio/sentry/SentryTraceHeader;

    return-object v0
.end method

.method public getW3cTraceparentHeader()Lio/sentry/W3CTraceparentHeader;
    .locals 1

    .line 163
    iget-object v0, p0, Lio/sentry/util/TracingUtils$TracingHeaders;->w3cTraceparentHeader:Lio/sentry/W3CTraceparentHeader;

    return-object v0
.end method
