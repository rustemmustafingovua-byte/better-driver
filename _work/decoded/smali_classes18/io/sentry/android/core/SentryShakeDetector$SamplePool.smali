.class Lio/sentry/android/core/SentryShakeDetector$SamplePool;
.super Ljava/lang/Object;
.source "SentryShakeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/SentryShakeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SamplePool"
.end annotation


# instance fields
.field private head:Lio/sentry/android/core/SentryShakeDetector$Sample;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method acquire()Lio/sentry/android/core/SentryShakeDetector$Sample;
    .locals 2

    .line 240
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector$SamplePool;->head:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 241
    .local v0, "acquired":Lio/sentry/android/core/SentryShakeDetector$Sample;
    if-nez v0, :cond_0

    .line 242
    new-instance v1, Lio/sentry/android/core/SentryShakeDetector$Sample;

    invoke-direct {v1}, Lio/sentry/android/core/SentryShakeDetector$Sample;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 244
    :cond_0
    iget-object v1, v0, Lio/sentry/android/core/SentryShakeDetector$Sample;->next:Lio/sentry/android/core/SentryShakeDetector$Sample;

    iput-object v1, p0, Lio/sentry/android/core/SentryShakeDetector$SamplePool;->head:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 246
    :goto_0
    return-object v0
.end method

.method release(Lio/sentry/android/core/SentryShakeDetector$Sample;)V
    .locals 1
    .param p1, "sample"    # Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 250
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector$SamplePool;->head:Lio/sentry/android/core/SentryShakeDetector$Sample;

    iput-object v0, p1, Lio/sentry/android/core/SentryShakeDetector$Sample;->next:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 251
    iput-object p1, p0, Lio/sentry/android/core/SentryShakeDetector$SamplePool;->head:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 252
    return-void
.end method
