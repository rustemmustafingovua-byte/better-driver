.class Lio/sentry/cache/PersistingScopeObserver$1;
.super Ljava/lang/Object;
.source "PersistingScopeObserver.java"

# interfaces
.implements Lio/sentry/cache/tape/ObjectQueue$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/cache/PersistingScopeObserver;-><init>(Lio/sentry/SentryOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/cache/tape/ObjectQueue$Converter<",
        "Lio/sentry/Breadcrumb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/sentry/cache/PersistingScopeObserver;


# direct methods
.method constructor <init>(Lio/sentry/cache/PersistingScopeObserver;)V
    .locals 0
    .param p1, "this$0"    # Lio/sentry/cache/PersistingScopeObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lio/sentry/cache/PersistingScopeObserver$1;->this$0:Lio/sentry/cache/PersistingScopeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public from([B)Lio/sentry/Breadcrumb;
    .locals 5
    .param p1, "source"    # [B

    .line 108
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 110
    invoke-static {}, Lio/sentry/cache/PersistingScopeObserver;->access$000()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 111
    .local v0, "reader":Ljava/io/Reader;
    :try_start_1
    iget-object v1, p0, Lio/sentry/cache/PersistingScopeObserver$1;->this$0:Lio/sentry/cache/PersistingScopeObserver;

    invoke-static {v1}, Lio/sentry/cache/PersistingScopeObserver;->access$100(Lio/sentry/cache/PersistingScopeObserver;)Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v1

    const-class v2, Lio/sentry/Breadcrumb;

    invoke-interface {v1, v0, v2}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/Breadcrumb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 111
    return-object v1

    .line 108
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "source":[B
    :goto_0
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 112
    .end local v0    # "reader":Ljava/io/Reader;
    .restart local p1    # "source":[B
    :catchall_2
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/cache/PersistingScopeObserver$1;->this$0:Lio/sentry/cache/PersistingScopeObserver;

    invoke-static {v1}, Lio/sentry/cache/PersistingScopeObserver;->access$100(Lio/sentry/cache/PersistingScopeObserver;)Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Error reading entity from scope cache"

    invoke-interface {v1, v2, v0, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic from([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
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

    .line 104
    invoke-virtual {p0, p1}, Lio/sentry/cache/PersistingScopeObserver$1;->from([B)Lio/sentry/Breadcrumb;

    move-result-object p1

    return-object p1
.end method

.method public toStream(Lio/sentry/Breadcrumb;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "value"    # Lio/sentry/Breadcrumb;
    .param p2, "sink"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 121
    invoke-static {}, Lio/sentry/cache/PersistingScopeObserver;->access$000()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 122
    .local v0, "writer":Ljava/io/Writer;
    :try_start_0
    iget-object v1, p0, Lio/sentry/cache/PersistingScopeObserver$1;->this$0:Lio/sentry/cache/PersistingScopeObserver;

    invoke-static {v1}, Lio/sentry/cache/PersistingScopeObserver;->access$100(Lio/sentry/cache/PersistingScopeObserver;)Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lio/sentry/ISerializer;->serialize(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 124
    .end local v0    # "writer":Ljava/io/Writer;
    return-void

    .line 120
    .restart local v0    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
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
            0x1000,
            0x1000
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

    .line 104
    check-cast p1, Lio/sentry/Breadcrumb;

    invoke-virtual {p0, p1, p2}, Lio/sentry/cache/PersistingScopeObserver$1;->toStream(Lio/sentry/Breadcrumb;Ljava/io/OutputStream;)V

    return-void
.end method
