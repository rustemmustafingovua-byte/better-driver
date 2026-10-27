.class public final Lio/sentry/exception/SentryHttpClientException;
.super Ljava/lang/Exception;
.source "SentryHttpClientException.java"


# static fields
.field private static final serialVersionUID:J = 0x4d4ebb5fa00d56eL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method
