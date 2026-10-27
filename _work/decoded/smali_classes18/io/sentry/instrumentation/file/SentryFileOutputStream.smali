.class public final Lio/sentry/instrumentation/file/SentryFileOutputStream;
.super Ljava/io/FileOutputStream;
.source "SentryFileOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/instrumentation/file/SentryFileOutputStream$Factory;
    }
.end annotation


# instance fields
.field private final delegate:Ljava/io/FileOutputStream;

.field private final spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;


# direct methods
.method private constructor <init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;)V
    .locals 4
    .param p1, "data"    # Lio/sentry/instrumentation/file/FileOutputStreamInitData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 64
    iget-object v0, p1, Lio/sentry/instrumentation/file/FileOutputStreamInitData;->delegate:Ljava/io/FileOutputStream;

    invoke-static {v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->getFileDescriptor(Ljava/io/FileOutputStream;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 65
    new-instance v0, Lio/sentry/instrumentation/file/FileIOSpanManager;

    iget-object v1, p1, Lio/sentry/instrumentation/file/FileOutputStreamInitData;->span:Lio/sentry/ISpan;

    iget-object v2, p1, Lio/sentry/instrumentation/file/FileOutputStreamInitData;->file:Ljava/io/File;

    iget-object v3, p1, Lio/sentry/instrumentation/file/FileOutputStreamInitData;->options:Lio/sentry/SentryOptions;

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/instrumentation/file/FileIOSpanManager;-><init>(Lio/sentry/ISpan;Ljava/io/File;Lio/sentry/SentryOptions;)V

    iput-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    .line 66
    iget-object v0, p1, Lio/sentry/instrumentation/file/FileOutputStreamInitData;->delegate:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->delegate:Ljava/io/FileOutputStream;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Lio/sentry/instrumentation/file/SentryFileOutputStream$1;)V
    .locals 0
    .param p1, "x0"    # Lio/sentry/instrumentation/file/FileOutputStreamInitData;
    .param p2, "x1"    # Lio/sentry/instrumentation/file/SentryFileOutputStream$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;)V

    return-void
.end method

.method private constructor <init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Ljava/io/FileDescriptor;)V
    .locals 4
    .param p1, "data"    # Lio/sentry/instrumentation/file/FileOutputStreamInitData;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .line 57
    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 58
    new-instance v0, Lio/sentry/instrumentation/file/FileIOSpanManager;

    iget-object v1, p1, Lio/sentry/instrumentation/file/FileOutputStreamInitData;->span:Lio/sentry/ISpan;

    iget-object v2, p1, Lio/sentry/instrumentation/file/FileOutputStreamInitData;->file:Ljava/io/File;

    iget-object v3, p1, Lio/sentry/instrumentation/file/FileOutputStreamInitData;->options:Lio/sentry/SentryOptions;

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/instrumentation/file/FileIOSpanManager;-><init>(Lio/sentry/ISpan;Ljava/io/File;Lio/sentry/SentryOptions;)V

    iput-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    .line 59
    iget-object v0, p1, Lio/sentry/instrumentation/file/FileOutputStreamInitData;->delegate:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->delegate:Ljava/io/FileOutputStream;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Ljava/io/FileDescriptor;Lio/sentry/instrumentation/file/SentryFileOutputStream$1;)V
    .locals 0
    .param p1, "x0"    # Lio/sentry/instrumentation/file/FileOutputStreamInitData;
    .param p2, "x1"    # Ljava/io/FileDescriptor;
    .param p3, "x2"    # Lio/sentry/instrumentation/file/SentryFileOutputStream$1;

    .line 22
    invoke-direct {p0, p1, p2}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Ljava/io/File;ZLio/sentry/IScopes;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->init(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;)V

    .line 43
    return-void
.end method

.method constructor <init>(Ljava/io/File;ZLio/sentry/IScopes;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "append"    # Z
    .param p3, "scopes"    # Lio/sentry/IScopes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->init(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;

    .line 46
    const/4 v0, 0x0

    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->init(Ljava/io/FileDescriptor;Ljava/io/FileOutputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;Ljava/io/FileDescriptor;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 28
    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Ljava/io/File;ZLio/sentry/IScopes;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v2

    invoke-static {v1, p2, v0, v2}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->init(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/FileOutputStreamInitData;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;
    .locals 1
    .param p0, "x0"    # Ljava/io/File;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/io/FileOutputStream;
    .param p3, "x3"    # Lio/sentry/IScopes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 22
    invoke-static {p0, p1, p2, p3}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->init(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/io/FileDescriptor;Ljava/io/FileOutputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;
    .locals 1
    .param p0, "x0"    # Ljava/io/FileDescriptor;
    .param p1, "x1"    # Ljava/io/FileOutputStream;
    .param p2, "x2"    # Lio/sentry/IScopes;

    .line 22
    invoke-static {p0, p1, p2}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->init(Ljava/io/FileDescriptor;Ljava/io/FileOutputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    move-result-object v0

    return-object v0
.end method

.method private static getFileDescriptor(Ljava/io/FileOutputStream;)Ljava/io/FileDescriptor;
    .locals 3
    .param p0, "stream"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 129
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "error":Ljava/io/IOException;
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "No file descriptor"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static init(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "append"    # Z
    .param p2, "delegate"    # Ljava/io/FileOutputStream;
    .param p3, "scopes"    # Lio/sentry/IScopes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 75
    const-string v0, "file.write"

    invoke-static {p3, v0}, Lio/sentry/instrumentation/file/FileIOSpanManager;->startSpan(Lio/sentry/IScopes;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v4

    .line 76
    .local v4, "span":Lio/sentry/ISpan;
    if-nez p2, :cond_0

    .line 77
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object p2, v0

    move-object v5, p2

    goto :goto_0

    .line 76
    :cond_0
    move-object v5, p2

    .line 79
    .end local p2    # "delegate":Ljava/io/FileOutputStream;
    .local v5, "delegate":Ljava/io/FileOutputStream;
    :goto_0
    new-instance v1, Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    invoke-interface {p3}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v6

    move-object v2, p0

    move v3, p1

    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "append":Z
    .local v2, "file":Ljava/io/File;
    .local v3, "append":Z
    invoke-direct/range {v1 .. v6}, Lio/sentry/instrumentation/file/FileOutputStreamInitData;-><init>(Ljava/io/File;ZLio/sentry/ISpan;Ljava/io/FileOutputStream;Lio/sentry/SentryOptions;)V

    return-object v1
.end method

.method private static init(Ljava/io/FileDescriptor;Ljava/io/FileOutputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileOutputStreamInitData;
    .locals 7
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "delegate"    # Ljava/io/FileOutputStream;
    .param p2, "scopes"    # Lio/sentry/IScopes;

    .line 86
    const-string v0, "file.write"

    invoke-static {p2, v0}, Lio/sentry/instrumentation/file/FileIOSpanManager;->startSpan(Lio/sentry/IScopes;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v4

    .line 87
    .local v4, "span":Lio/sentry/ISpan;
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object p1, v0

    move-object v5, p1

    goto :goto_0

    .line 87
    :cond_0
    move-object v5, p1

    .line 90
    .end local p1    # "delegate":Ljava/io/FileOutputStream;
    .local v5, "delegate":Ljava/io/FileOutputStream;
    :goto_0
    new-instance v1, Lio/sentry/instrumentation/file/FileOutputStreamInitData;

    const/4 v3, 0x0

    invoke-interface {p2}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v6

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v6}, Lio/sentry/instrumentation/file/FileOutputStreamInitData;-><init>(Ljava/io/File;ZLio/sentry/ISpan;Ljava/io/FileOutputStream;Lio/sentry/SentryOptions;)V

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    iget-object v1, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->delegate:Ljava/io/FileOutputStream;

    invoke-virtual {v0, v1}, Lio/sentry/instrumentation/file/FileIOSpanManager;->finish(Ljava/io/Closeable;)V

    .line 123
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    .line 124
    return-void
.end method

.method synthetic lambda$write$0$io-sentry-instrumentation-file-SentryFileOutputStream(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->delegate:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 98
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$write$1$io-sentry-instrumentation-file-SentryFileOutputStream([B)Ljava/lang/Integer;
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->delegate:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 107
    array-length v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$write$2$io-sentry-instrumentation-file-SentryFileOutputStream([BII)Ljava/lang/Integer;
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->delegate:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 116
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    new-instance v1, Lio/sentry/instrumentation/file/SentryFileOutputStream$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream$$ExternalSyntheticLambda1;-><init>(Lio/sentry/instrumentation/file/SentryFileOutputStream;I)V

    invoke-virtual {v0, v1}, Lio/sentry/instrumentation/file/FileIOSpanManager;->performIO(Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    new-instance v1, Lio/sentry/instrumentation/file/SentryFileOutputStream$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream$$ExternalSyntheticLambda2;-><init>(Lio/sentry/instrumentation/file/SentryFileOutputStream;[B)V

    invoke-virtual {v0, v1}, Lio/sentry/instrumentation/file/FileIOSpanManager;->performIO(Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;)Ljava/lang/Object;

    .line 109
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    new-instance v1, Lio/sentry/instrumentation/file/SentryFileOutputStream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/sentry/instrumentation/file/SentryFileOutputStream$$ExternalSyntheticLambda0;-><init>(Lio/sentry/instrumentation/file/SentryFileOutputStream;[BII)V

    invoke-virtual {v0, v1}, Lio/sentry/instrumentation/file/FileIOSpanManager;->performIO(Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;)Ljava/lang/Object;

    .line 118
    return-void
.end method
