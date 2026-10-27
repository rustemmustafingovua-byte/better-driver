.class public final Ldadb/adbserver/AdbServer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Ldadb/adbserver/AdbServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldadb/adbserver/AdbServer;

    invoke-direct {v0}, Ldadb/adbserver/AdbServer;-><init>()V

    sput-object v0, Ldadb/adbserver/AdbServer;->INSTANCE:Ldadb/adbserver/AdbServer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createDadb()Ldadb/Dadb;
    .locals 7

    .line 1
    const/16 v5, 0x1f

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Ldadb/adbserver/AdbServer;->createDadb$default(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/Object;)Ldadb/Dadb;

    move-result-object v0

    return-object v0
.end method

.method public static final createDadb(Ljava/lang/String;)Ldadb/Dadb;
    .locals 8

    .line 2
    const-string v0, "adbServerHost"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Ldadb/adbserver/AdbServer;->createDadb$default(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/Object;)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public static final createDadb(Ljava/lang/String;I)Ldadb/Dadb;
    .locals 8

    .line 3
    const-string v0, "adbServerHost"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v7}, Ldadb/adbserver/AdbServer;->createDadb$default(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/Object;)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public static final createDadb(Ljava/lang/String;ILjava/lang/String;)Ldadb/Dadb;
    .locals 8

    .line 4
    const-string v0, "adbServerHost"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceQuery"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Ldadb/adbserver/AdbServer;->createDadb$default(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/Object;)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public static final createDadb(Ljava/lang/String;ILjava/lang/String;I)Ldadb/Dadb;
    .locals 8

    .line 5
    const-string v0, "adbServerHost"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceQuery"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v7}, Ldadb/adbserver/AdbServer;->createDadb$default(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/Object;)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public static final createDadb(Ljava/lang/String;ILjava/lang/String;II)Ldadb/Dadb;
    .locals 9

    const-string v0, "adbServerHost"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceQuery"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "host:"

    invoke-static {p2, v0}, Lr9/k;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    const-string v1, "transport:"

    invoke-static {v0, v1}, Lr9/k;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8
    new-instance v2, Ldadb/adbserver/AdbServerDadb;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Ldadb/adbserver/AdbServerDadb;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    return-object v2
.end method

.method public static synthetic createDadb$default(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/Object;)Ldadb/Dadb;
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const-string p0, "localhost"

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/16 p1, 0x13ad

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const-string p2, "host:transport-any"

    :cond_2
    and-int/lit8 p6, p5, 0x8

    const/4 v0, 0x0

    if-eqz p6, :cond_3

    move p3, v0

    :cond_3
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_4

    move p4, v0

    :cond_4
    invoke-static {p0, p1, p2, p3, p4}, Ldadb/adbserver/AdbServer;->createDadb(Ljava/lang/String;ILjava/lang/String;II)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public static final listDadbs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldadb/Dadb;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Ldadb/adbserver/AdbServer;->listDadbs$default(Ljava/lang/String;IILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final listDadbs(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ldadb/Dadb;",
            ">;"
        }
    .end annotation

    .line 2
    const-string v0, "adbServerHost"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Ldadb/adbserver/AdbServer;->listDadbs$default(Ljava/lang/String;IILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final listDadbs(Ljava/lang/String;I)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ldadb/Dadb;",
            ">;"
        }
    .end annotation

    const-string v0, "adbServerHost"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Ldadb/adbserver/AdbBinary;->INSTANCE:Ldadb/adbserver/AdbBinary;

    invoke-virtual {v0, p0, p1}, Ldadb/adbserver/AdbBinary;->tryStartServer(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object p0, Lu8/r;->l:Lu8/r;

    return-object p0

    .line 5
    :cond_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, p0, p1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 6
    :try_start_0
    sget-object v0, Ldadb/adbserver/AdbServer;->INSTANCE:Ldadb/adbserver/AdbServer;

    const-string v2, "host:devices"

    invoke-virtual {v0, v1, v2}, Ldadb/adbserver/AdbServer;->send$dadb(Ljava/net/Socket;Ljava/lang/String;)V

    .line 7
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v2}, Ldadb/adbserver/AdbServer;->readString$dadb(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 9
    invoke-static {v0}, Lr9/k;->j0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 12
    invoke-static {v3}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 13
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_3
    :goto_1
    if-ge v4, v2, :cond_5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 16
    check-cast v5, Ljava/lang/String;

    .line 17
    const-string v6, "\t"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lr9/k;->p0(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 18
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    .line 19
    :cond_4
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_2
    if-eqz v5, :cond_3

    .line 20
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v3, v2, :cond_6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 23
    check-cast v4, Ljava/lang/String;

    .line 24
    const-string v5, "host:transport:"

    .line 25
    invoke-static {v5, v4}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x18

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p0

    move v7, p1

    .line 26
    invoke-static/range {v6 .. v12}, Ldadb/adbserver/AdbServer;->createDadb$default(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/Object;)Ldadb/Dadb;

    move-result-object p0

    .line 27
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p0, v6

    goto :goto_3

    :cond_6
    return-object v1

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 28
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-static {v1, p0}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic listDadbs$default(Ljava/lang/String;IILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_0

    const-string p0, "localhost"

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/16 p1, 0x13ad

    :cond_1
    invoke-static {p0, p1}, Ldadb/adbserver/AdbServer;->listDadbs(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final readString(Ljava/io/DataInputStream;I)Ljava/lang/String;
    .locals 0

    new-array p0, p2, [B

    invoke-virtual {p1, p0}, Ljava/io/DataInputStream;->readFully([B)V

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string p2, "UTF_8"

    invoke-static {p1, p2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2
.end method

.method private final writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/io/OutputStreamWriter;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    sget-object p1, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "getBytes(...)"

    invoke-static {p1, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%04x"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->flush()V

    return-void
.end method


# virtual methods
.method public final readString$dadb(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 2

    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Ldadb/adbserver/AdbServer;->readString(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v1}, Lwa/h;->i(I)V

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Ldadb/adbserver/AdbServer;->readString(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final send$dadb(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 2

    const-string v0, "socket"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "command"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v1, p2}, Ldadb/adbserver/AdbServer;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-direct {p0, v0, p1}, Ldadb/adbserver/AdbServer;->readString(Ljava/io/DataInputStream;I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "OKAY"

    invoke-static {p1, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Ldadb/adbserver/AdbServer;->readString$dadb(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Command failed ("

    const-string v1, "): "

    invoke-static {v0, p2, v1, p0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
