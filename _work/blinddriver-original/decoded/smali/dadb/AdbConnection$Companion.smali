.class public final Ldadb/AdbConnection$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldadb/AdbConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lj9/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldadb/AdbConnection$Companion;-><init>()V

    return-void
.end method

.method private final connect(Lbb/u;Lbb/t;Ldadb/AdbKeyPair;Ljava/io/Closeable;)Ldadb/AdbConnection;
    .locals 1

    .line 4
    new-instance v0, Ldadb/AdbReader;

    invoke-direct {v0, p1}, Ldadb/AdbReader;-><init>(Lbb/u;)V

    .line 5
    new-instance p1, Ldadb/AdbWriter;

    invoke-direct {p1, p2}, Ldadb/AdbWriter;-><init>(Lbb/t;)V

    .line 6
    :try_start_0
    invoke-direct {p0, v0, p1, p3, p4}, Ldadb/AdbConnection$Companion;->connect(Ldadb/AdbReader;Ldadb/AdbWriter;Ldadb/AdbKeyPair;Ljava/io/Closeable;)Ldadb/AdbConnection;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    invoke-virtual {v0}, Ldadb/AdbReader;->close()V

    .line 8
    invoke-virtual {p1}, Ldadb/AdbWriter;->close()V

    .line 9
    throw p0
.end method

.method private final connect(Ldadb/AdbReader;Ldadb/AdbWriter;Ldadb/AdbKeyPair;Ljava/io/Closeable;)Ldadb/AdbConnection;
    .locals 8

    .line 10
    invoke-virtual {p2}, Ldadb/AdbWriter;->writeConnect()V

    .line 11
    invoke-virtual {p1}, Ldadb/AdbReader;->readMessage()Ldadb/AdbMessage;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ldadb/AdbMessage;->getCommand()I

    move-result v1

    const v2, 0x48545541

    if-ne v1, v2, :cond_2

    if-eqz p3, :cond_1

    .line 13
    invoke-virtual {v0}, Ldadb/AdbMessage;->getArg0()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 14
    invoke-virtual {p3, v0}, Ldadb/AdbKeyPair;->signPayload$dadb(Ldadb/AdbMessage;)[B

    move-result-object v0

    const/4 v1, 0x2

    .line 15
    invoke-virtual {p2, v1, v0}, Ldadb/AdbWriter;->writeAuth(I[B)V

    .line 16
    invoke-virtual {p1}, Ldadb/AdbReader;->readMessage()Ldadb/AdbMessage;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ldadb/AdbMessage;->getCommand()I

    move-result v1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x3

    .line 18
    invoke-virtual {p3}, Ldadb/AdbKeyPair;->getPublicKeyBytes$dadb()[B

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Ldadb/AdbWriter;->writeAuth(I[B)V

    .line 19
    invoke-virtual {p1}, Ldadb/AdbReader;->readMessage()Ldadb/AdbMessage;

    move-result-object v0

    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unsupported auth type: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Authentication required but no KeyPair provided"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ldadb/AdbMessage;->getCommand()I

    move-result p3

    const v1, 0x4e584e43    # 9.072519E8f

    if-ne p3, v1, :cond_3

    .line 23
    new-instance p3, Ljava/lang/String;

    invoke-virtual {v0}, Ldadb/AdbMessage;->getPayload()[B

    move-result-object v1

    sget-object v2, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {p3, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, p3}, Ldadb/AdbConnection$Companion;->parseConnectionString(Ljava/lang/String;)Ldadb/ConnectionString;

    move-result-object p0

    .line 24
    invoke-virtual {v0}, Ldadb/AdbMessage;->getArg0()I

    move-result v6

    .line 25
    invoke-virtual {v0}, Ldadb/AdbMessage;->getArg1()I

    move-result v7

    .line 26
    new-instance v1, Ldadb/AdbConnection;

    invoke-virtual {p0}, Ldadb/ConnectionString;->getFeatures()Ljava/util/Set;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v1 .. v7}, Ldadb/AdbConnection;-><init>(Ldadb/AdbReader;Ldadb/AdbWriter;Ljava/io/Closeable;Ljava/util/Set;II)V

    return-object v1

    .line 27
    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Connection failed: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic connect$default(Ldadb/AdbConnection$Companion;Lbb/u;Lbb/t;Ldadb/AdbKeyPair;Ljava/io/Closeable;ILjava/lang/Object;)Ldadb/AdbConnection;
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Ldadb/AdbConnection$Companion;->connect(Lbb/u;Lbb/t;Ldadb/AdbKeyPair;Ljava/io/Closeable;)Ldadb/AdbConnection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic connect$default(Ldadb/AdbConnection$Companion;Ljava/net/Socket;Ldadb/AdbKeyPair;ILjava/lang/Object;)Ldadb/AdbConnection;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Ldadb/AdbConnection$Companion;->connect(Ljava/net/Socket;Ldadb/AdbKeyPair;)Ldadb/AdbConnection;

    move-result-object p0

    return-object p0
.end method

.method private final parseConnectionString(Ljava/lang/String;)Ldadb/ConnectionString;
    .locals 7

    const-string p0, "device::"

    invoke-static {p1, p0, p1}, Lr9/k;->t0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ";"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lr9/k;->p0(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "="

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lr9/k;->p0(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    :goto_1
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    new-instance v6, Lt8/j;

    invoke-direct {v6, v5, v4}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v6

    :goto_2
    if-eqz v4, :cond_1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lu8/v;->M(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "features"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0, p0}, Lu8/v;->I(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    const-string p1, ","

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lr9/k;->p0(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lu8/m;->F0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    new-instance p1, Ldadb/ConnectionString;

    invoke-direct {p1, p0}, Ldadb/ConnectionString;-><init>(Ljava/util/Set;)V

    return-object p1

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Failed to parse features from connection string: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final connect(Ljava/net/Socket;Ldadb/AdbKeyPair;)Ldadb/AdbConnection;
    .locals 2

    const-string v0, "socket"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lpc/h;->y(Ljava/net/Socket;)Lbb/d;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lpc/h;->w(Ljava/net/Socket;)Lbb/c;

    move-result-object v1

    .line 3
    invoke-direct {p0, v0, v1, p2, p1}, Ldadb/AdbConnection$Companion;->connect(Lbb/u;Lbb/t;Ldadb/AdbKeyPair;Ljava/io/Closeable;)Ldadb/AdbConnection;

    move-result-object p0

    return-object p0
.end method
