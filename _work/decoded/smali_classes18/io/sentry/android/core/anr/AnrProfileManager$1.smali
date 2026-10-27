.class Lio/sentry/android/core/anr/AnrProfileManager$1;
.super Ljava/lang/Object;
.source "AnrProfileManager.java"

# interfaces
.implements Lio/sentry/cache/tape/ObjectQueue$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/core/anr/AnrProfileManager;-><init>(Lio/sentry/SentryOptions;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/cache/tape/ObjectQueue$Converter<",
        "Lio/sentry/android/core/anr/AnrStackTrace;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/sentry/android/core/anr/AnrProfileManager;


# direct methods
.method constructor <init>(Lio/sentry/android/core/anr/AnrProfileManager;)V
    .locals 0
    .param p1, "this$0"    # Lio/sentry/android/core/anr/AnrProfileManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lio/sentry/android/core/anr/AnrProfileManager$1;->this$0:Lio/sentry/android/core/anr/AnrProfileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public from([B)Lio/sentry/android/core/anr/AnrStackTrace;
    .locals 3
    .param p1, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 68
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 69
    .local v1, "dis":Ljava/io/DataInputStream;
    invoke-static {v1}, Lio/sentry/android/core/anr/AnrStackTrace;->deserialize(Ljava/io/DataInputStream;)Lio/sentry/android/core/anr/AnrStackTrace;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic from([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Lio/sentry/android/core/anr/AnrProfileManager$1;->from([B)Lio/sentry/android/core/anr/AnrStackTrace;

    move-result-object p1

    return-object p1
.end method

.method public toStream(Lio/sentry/android/core/anr/AnrStackTrace;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "value"    # Lio/sentry/android/core/anr/AnrStackTrace;
    .param p2, "sink"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 77
    .local v0, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p1, v0}, Lio/sentry/android/core/anr/AnrStackTrace;->serialize(Ljava/io/DataOutputStream;)V

    .line 78
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 79
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 81
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    return-void

    .line 76
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public bridge synthetic toStream(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    check-cast p1, Lio/sentry/android/core/anr/AnrStackTrace;

    invoke-virtual {p0, p1, p2}, Lio/sentry/android/core/anr/AnrProfileManager$1;->toStream(Lio/sentry/android/core/anr/AnrStackTrace;Ljava/io/OutputStream;)V

    return-void
.end method
