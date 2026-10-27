.class public final Lio/sentry/instrumentation/file/SentryFileInputStream;
.super Ljava/io/FileInputStream;
.source "SentryFileInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/instrumentation/file/SentryFileInputStream$Factory;
    }
.end annotation


# instance fields
.field private final delegate:Ljava/io/FileInputStream;

.field private final spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;


# direct methods
.method private constructor <init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;)V
    .locals 4
    .param p1, "data"    # Lio/sentry/instrumentation/file/FileInputStreamInitData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 58
    iget-object v0, p1, Lio/sentry/instrumentation/file/FileInputStreamInitData;->delegate:Ljava/io/FileInputStream;

    invoke-static {v0}, Lio/sentry/instrumentation/file/SentryFileInputStream;->getFileDescriptor(Ljava/io/FileInputStream;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 59
    new-instance v0, Lio/sentry/instrumentation/file/FileIOSpanManager;

    iget-object v1, p1, Lio/sentry/instrumentation/file/FileInputStreamInitData;->span:Lio/sentry/ISpan;

    iget-object v2, p1, Lio/sentry/instrumentation/file/FileInputStreamInitData;->file:Ljava/io/File;

    iget-object v3, p1, Lio/sentry/instrumentation/file/FileInputStreamInitData;->options:Lio/sentry/SentryOptions;

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/instrumentation/file/FileIOSpanManager;-><init>(Lio/sentry/ISpan;Ljava/io/File;Lio/sentry/SentryOptions;)V

    iput-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    .line 60
    iget-object v0, p1, Lio/sentry/instrumentation/file/FileInputStreamInitData;->delegate:Ljava/io/FileInputStream;

    iput-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->delegate:Ljava/io/FileInputStream;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;Lio/sentry/instrumentation/file/SentryFileInputStream$1;)V
    .locals 0
    .param p1, "x0"    # Lio/sentry/instrumentation/file/FileInputStreamInitData;
    .param p2, "x1"    # Lio/sentry/instrumentation/file/SentryFileInputStream$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;)V

    return-void
.end method

.method private constructor <init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;Ljava/io/FileDescriptor;)V
    .locals 4
    .param p1, "data"    # Lio/sentry/instrumentation/file/FileInputStreamInitData;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .line 51
    invoke-direct {p0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 52
    new-instance v0, Lio/sentry/instrumentation/file/FileIOSpanManager;

    iget-object v1, p1, Lio/sentry/instrumentation/file/FileInputStreamInitData;->span:Lio/sentry/ISpan;

    iget-object v2, p1, Lio/sentry/instrumentation/file/FileInputStreamInitData;->file:Ljava/io/File;

    iget-object v3, p1, Lio/sentry/instrumentation/file/FileInputStreamInitData;->options:Lio/sentry/SentryOptions;

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/instrumentation/file/FileIOSpanManager;-><init>(Lio/sentry/ISpan;Ljava/io/File;Lio/sentry/SentryOptions;)V

    iput-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    .line 53
    iget-object v0, p1, Lio/sentry/instrumentation/file/FileInputStreamInitData;->delegate:Ljava/io/FileInputStream;

    iput-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->delegate:Ljava/io/FileInputStream;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;Ljava/io/FileDescriptor;Lio/sentry/instrumentation/file/SentryFileInputStream$1;)V
    .locals 0
    .param p1, "x0"    # Lio/sentry/instrumentation/file/FileInputStreamInitData;
    .param p2, "x1"    # Ljava/io/FileDescriptor;
    .param p3, "x2"    # Lio/sentry/instrumentation/file/SentryFileInputStream$1;

    .line 23
    invoke-direct {p0, p1, p2}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 33
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Ljava/io/File;Lio/sentry/IScopes;)V

    .line 34
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lio/sentry/IScopes;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "scopes"    # Lio/sentry/IScopes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lio/sentry/instrumentation/file/SentryFileInputStream;->init(Ljava/io/File;Ljava/io/FileInputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileInputStreamInitData;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;

    .line 37
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Ljava/io/FileDescriptor;Lio/sentry/IScopes;)V

    .line 38
    return-void
.end method

.method constructor <init>(Ljava/io/FileDescriptor;Lio/sentry/IScopes;)V
    .locals 1
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .param p2, "scopes"    # Lio/sentry/IScopes;

    .line 46
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lio/sentry/instrumentation/file/SentryFileInputStream;->init(Ljava/io/FileDescriptor;Ljava/io/FileInputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileInputStreamInitData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Lio/sentry/instrumentation/file/FileInputStreamInitData;Ljava/io/FileDescriptor;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 29
    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Ljava/io/File;Lio/sentry/IScopes;)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Ljava/io/File;Ljava/io/FileInputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileInputStreamInitData;
    .locals 1
    .param p0, "x0"    # Ljava/io/File;
    .param p1, "x1"    # Ljava/io/FileInputStream;
    .param p2, "x2"    # Lio/sentry/IScopes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 23
    invoke-static {p0, p1, p2}, Lio/sentry/instrumentation/file/SentryFileInputStream;->init(Ljava/io/File;Ljava/io/FileInputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileInputStreamInitData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/io/FileDescriptor;Ljava/io/FileInputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileInputStreamInitData;
    .locals 1
    .param p0, "x0"    # Ljava/io/FileDescriptor;
    .param p1, "x1"    # Ljava/io/FileInputStream;
    .param p2, "x2"    # Lio/sentry/IScopes;

    .line 23
    invoke-static {p0, p1, p2}, Lio/sentry/instrumentation/file/SentryFileInputStream;->init(Ljava/io/FileDescriptor;Ljava/io/FileInputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileInputStreamInitData;

    move-result-object v0

    return-object v0
.end method

.method private static getFileDescriptor(Ljava/io/FileInputStream;)Ljava/io/FileDescriptor;
    .locals 3
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 122
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "error":Ljava/io/IOException;
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "No file descriptor"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static init(Ljava/io/File;Ljava/io/FileInputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileInputStreamInitData;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "delegate"    # Ljava/io/FileInputStream;
    .param p2, "scopes"    # Lio/sentry/IScopes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 66
    const-string v0, "file.read"

    invoke-static {p2, v0}, Lio/sentry/instrumentation/file/FileIOSpanManager;->startSpan(Lio/sentry/IScopes;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v0

    .line 67
    .local v0, "span":Lio/sentry/ISpan;
    if-nez p1, :cond_0

    .line 68
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object p1, v1

    .line 70
    :cond_0
    new-instance v1, Lio/sentry/instrumentation/file/FileInputStreamInitData;

    invoke-interface {p2}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-direct {v1, p0, v0, p1, v2}, Lio/sentry/instrumentation/file/FileInputStreamInitData;-><init>(Ljava/io/File;Lio/sentry/ISpan;Ljava/io/FileInputStream;Lio/sentry/SentryOptions;)V

    return-object v1
.end method

.method private static init(Ljava/io/FileDescriptor;Ljava/io/FileInputStream;Lio/sentry/IScopes;)Lio/sentry/instrumentation/file/FileInputStreamInitData;
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "delegate"    # Ljava/io/FileInputStream;
    .param p2, "scopes"    # Lio/sentry/IScopes;

    .line 77
    const-string v0, "file.read"

    invoke-static {p2, v0}, Lio/sentry/instrumentation/file/FileIOSpanManager;->startSpan(Lio/sentry/IScopes;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v0

    .line 78
    .local v0, "span":Lio/sentry/ISpan;
    if-nez p1, :cond_0

    .line 79
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object p1, v1

    .line 81
    :cond_0
    new-instance v1, Lio/sentry/instrumentation/file/FileInputStreamInitData;

    const/4 v2, 0x0

    invoke-interface {p2}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v3

    invoke-direct {v1, v2, v0, p1, v3}, Lio/sentry/instrumentation/file/FileInputStreamInitData;-><init>(Ljava/io/File;Lio/sentry/ISpan;Ljava/io/FileInputStream;Lio/sentry/SentryOptions;)V

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

    .line 115
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    iget-object v1, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->delegate:Ljava/io/FileInputStream;

    invoke-virtual {v0, v1}, Lio/sentry/instrumentation/file/FileIOSpanManager;->finish(Ljava/io/Closeable;)V

    .line 116
    invoke-super {p0}, Ljava/io/FileInputStream;->close()V

    .line 117
    return-void
.end method

.method synthetic lambda$read$0$io-sentry-instrumentation-file-SentryFileInputStream(Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/lang/Integer;
    .locals 2
    .param p1, "result"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->delegate:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .line 92
    .local v0, "res":I
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 93
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$read$1$io-sentry-instrumentation-file-SentryFileInputStream([B)Ljava/lang/Integer;
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->delegate:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$read$2$io-sentry-instrumentation-file-SentryFileInputStream([BII)Ljava/lang/Integer;
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->delegate:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$skip$3$io-sentry-instrumentation-file-SentryFileInputStream(J)Ljava/lang/Long;
    .locals 2
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->delegate:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 89
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    new-instance v2, Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda3;-><init>(Lio/sentry/instrumentation/file/SentryFileInputStream;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v1, v2}, Lio/sentry/instrumentation/file/FileIOSpanManager;->performIO(Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;)Ljava/lang/Object;

    .line 95
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    return v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    new-instance v1, Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda2;-><init>(Lio/sentry/instrumentation/file/SentryFileInputStream;[B)V

    invoke-virtual {v0, v1}, Lio/sentry/instrumentation/file/FileIOSpanManager;->performIO(Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    new-instance v1, Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda1;-><init>(Lio/sentry/instrumentation/file/SentryFileInputStream;[BII)V

    invoke-virtual {v0, v1}, Lio/sentry/instrumentation/file/FileIOSpanManager;->performIO(Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public skip(J)J
    .locals 2
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->spanManager:Lio/sentry/instrumentation/file/FileIOSpanManager;

    new-instance v1, Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda0;-><init>(Lio/sentry/instrumentation/file/SentryFileInputStream;J)V

    invoke-virtual {v0, v1}, Lio/sentry/instrumentation/file/FileIOSpanManager;->performIO(Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
