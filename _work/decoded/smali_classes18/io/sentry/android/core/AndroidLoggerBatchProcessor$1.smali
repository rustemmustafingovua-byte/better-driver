.class Lio/sentry/android/core/AndroidLoggerBatchProcessor$1;
.super Ljava/lang/Object;
.source "AndroidLoggerBatchProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/core/AndroidLoggerBatchProcessor;->onBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/sentry/android/core/AndroidLoggerBatchProcessor;


# direct methods
.method constructor <init>(Lio/sentry/android/core/AndroidLoggerBatchProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lio/sentry/android/core/AndroidLoggerBatchProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lio/sentry/android/core/AndroidLoggerBatchProcessor$1;->this$0:Lio/sentry/android/core/AndroidLoggerBatchProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 37
    iget-object v0, p0, Lio/sentry/android/core/AndroidLoggerBatchProcessor$1;->this$0:Lio/sentry/android/core/AndroidLoggerBatchProcessor;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lio/sentry/android/core/AndroidLoggerBatchProcessor;->flush(J)V

    .line 38
    return-void
.end method
