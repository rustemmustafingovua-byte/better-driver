.class final Lio/sentry/JsonObjectReader$RecoveryState;
.super Ljava/lang/Object;
.source "JsonObjectReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/JsonObjectReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecoveryState"
.end annotation


# instance fields
.field private final startDepth:I

.field private final startToken:Lio/sentry/vendor/gson/stream/JsonToken;

.field private valueConsumed:Z


# direct methods
.method private constructor <init>(ILio/sentry/vendor/gson/stream/JsonToken;)V
    .locals 0
    .param p1, "startDepth"    # I
    .param p2, "startToken"    # Lio/sentry/vendor/gson/stream/JsonToken;

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput p1, p0, Lio/sentry/JsonObjectReader$RecoveryState;->startDepth:I

    .line 423
    iput-object p2, p0, Lio/sentry/JsonObjectReader$RecoveryState;->startToken:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 424
    return-void
.end method

.method synthetic constructor <init>(ILio/sentry/vendor/gson/stream/JsonToken;Lio/sentry/JsonObjectReader$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lio/sentry/vendor/gson/stream/JsonToken;
    .param p3, "x2"    # Lio/sentry/JsonObjectReader$1;

    .line 416
    invoke-direct {p0, p1, p2}, Lio/sentry/JsonObjectReader$RecoveryState;-><init>(ILio/sentry/vendor/gson/stream/JsonToken;)V

    return-void
.end method

.method static synthetic access$100(Lio/sentry/JsonObjectReader$RecoveryState;)Z
    .locals 1
    .param p0, "x0"    # Lio/sentry/JsonObjectReader$RecoveryState;

    .line 416
    iget-boolean v0, p0, Lio/sentry/JsonObjectReader$RecoveryState;->valueConsumed:Z

    return v0
.end method

.method static synthetic access$102(Lio/sentry/JsonObjectReader$RecoveryState;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/sentry/JsonObjectReader$RecoveryState;
    .param p1, "x1"    # Z

    .line 416
    iput-boolean p1, p0, Lio/sentry/JsonObjectReader$RecoveryState;->valueConsumed:Z

    return p1
.end method

.method static synthetic access$200(Lio/sentry/JsonObjectReader$RecoveryState;)I
    .locals 1
    .param p0, "x0"    # Lio/sentry/JsonObjectReader$RecoveryState;

    .line 416
    iget v0, p0, Lio/sentry/JsonObjectReader$RecoveryState;->startDepth:I

    return v0
.end method

.method static synthetic access$300(Lio/sentry/JsonObjectReader$RecoveryState;)Lio/sentry/vendor/gson/stream/JsonToken;
    .locals 1
    .param p0, "x0"    # Lio/sentry/JsonObjectReader$RecoveryState;

    .line 416
    iget-object v0, p0, Lio/sentry/JsonObjectReader$RecoveryState;->startToken:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object v0
.end method
