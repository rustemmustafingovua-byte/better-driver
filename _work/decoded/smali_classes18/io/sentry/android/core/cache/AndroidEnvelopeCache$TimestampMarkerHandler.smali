.class final Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;
.super Ljava/lang/Object;
.source "AndroidEnvelopeCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/cache/AndroidEnvelopeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimestampMarkerHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$TimestampExtractor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final label:Ljava/lang/String;

.field private final reportFilename:Ljava/lang/String;

.field private final timestampProvider:Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$TimestampExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$TimestampExtractor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$TimestampExtractor;)V
    .locals 0
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "reportFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$TimestampExtractor<",
            "TT;>;)V"
        }
    .end annotation

    .line 258
    .local p0, "this":Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;, "Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "timestampProvider":Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$TimestampExtractor;, "Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$TimestampExtractor<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p1, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;->type:Ljava/lang/Class;

    .line 260
    iput-object p2, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;->label:Ljava/lang/String;

    .line 261
    iput-object p3, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;->reportFilename:Ljava/lang/String;

    .line 262
    iput-object p4, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;->timestampProvider:Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$TimestampExtractor;

    .line 263
    return-void
.end method


# virtual methods
.method handle(Lio/sentry/Hint;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 2
    .param p1, "hint"    # Lio/sentry/Hint;
    .param p2, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 266
    .local p0, "this":Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;, "Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler<TT;>;"
    iget-object v0, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;->type:Ljava/lang/Class;

    new-instance v1, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;Lio/sentry/android/core/SentryAndroidOptions;)V

    invoke-static {p1, v0, v1}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 280
    return-void
.end method

.method synthetic lambda$handle$0$io-sentry-android-core-cache-AndroidEnvelopeCache$TimestampMarkerHandler(Lio/sentry/android/core/SentryAndroidOptions;Ljava/lang/Object;)V
    .locals 5
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p2, "typedHint"    # Ljava/lang/Object;

    .line 270
    .local p0, "this":Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;, "Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler<TT;>;"
    iget-object v0, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;->timestampProvider:Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$TimestampExtractor;

    invoke-interface {v0, p2}, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler$TimestampExtractor;->extract(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    .line 271
    .local v0, "timestamp":Ljava/lang/Long;
    nop

    .line 272
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    iget-object v3, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;->label:Ljava/lang/String;

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v3

    .line 273
    const-string v4, "Writing last reported %s marker with timestamp %d"

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget-object v1, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;->reportFilename:Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache$TimestampMarkerHandler;->label:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->access$000(Lio/sentry/SentryOptions;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method
