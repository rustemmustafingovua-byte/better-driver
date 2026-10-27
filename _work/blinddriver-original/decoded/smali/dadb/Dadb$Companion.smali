.class public final Ldadb/Dadb$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldadb/Dadb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Ldadb/Dadb$Companion;

.field private static final MAX_EMULATOR_PORT:I = 0x1633

.field private static final MIN_EMULATOR_PORT:I = 0x15b3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldadb/Dadb$Companion;

    invoke-direct {v0}, Ldadb/Dadb$Companion;-><init>()V

    sput-object v0, Ldadb/Dadb$Companion;->$$INSTANCE:Ldadb/Dadb$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$readMode(Ldadb/Dadb$Companion;Ljava/io/File;)I
    .locals 0

    invoke-direct {p0, p1}, Ldadb/Dadb$Companion;->readMode(Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$restartAdb(Ldadb/Dadb$Companion;Ldadb/Dadb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Ldadb/Dadb$Companion;->restartAdb(Ldadb/Dadb;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$waitRootOrClose(Ldadb/Dadb$Companion;Ldadb/Dadb;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldadb/Dadb$Companion;->waitRootOrClose(Ldadb/Dadb;Z)V

    return-void
.end method

.method public static synthetic create$default(Ldadb/Dadb$Companion;Ljava/lang/String;ILdadb/AdbKeyPair;IIZILjava/lang/Object;)Ldadb/Dadb;
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    sget-object p3, Ldadb/AdbKeyPair;->Companion:Ldadb/AdbKeyPair$Companion;

    invoke-virtual {p3}, Ldadb/AdbKeyPair$Companion;->readDefault()Ldadb/AdbKeyPair;

    move-result-object p3

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x8

    const/4 p8, 0x0

    if-eqz p3, :cond_1

    move v4, p8

    goto :goto_0

    :cond_1
    move v4, p4

    :goto_0
    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    move v5, p8

    goto :goto_1

    :cond_2
    move v5, p5

    :goto_1
    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_3

    move v6, p8

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    goto :goto_3

    :cond_3
    move v6, p6

    goto :goto_2

    :goto_3
    invoke-virtual/range {v0 .. v6}, Ldadb/Dadb$Companion;->create(Ljava/lang/String;ILdadb/AdbKeyPair;IIZ)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic discover$default(Ldadb/Dadb$Companion;Ljava/lang/String;Ldadb/AdbKeyPair;IIZILjava/lang/Object;)Ldadb/Dadb;
    .locals 1

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const-string p1, "localhost"

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    sget-object p2, Ldadb/AdbKeyPair;->Companion:Ldadb/AdbKeyPair$Companion;

    invoke-virtual {p2}, Ldadb/AdbKeyPair$Companion;->readDefault()Ldadb/AdbKeyPair;

    move-result-object p2

    :cond_1
    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move p7, v0

    move p5, p3

    move p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    goto :goto_0

    :cond_4
    move p7, p5

    move p6, p4

    move-object p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    :goto_0
    invoke-virtual/range {p2 .. p7}, Ldadb/Dadb$Companion;->discover(Ljava/lang/String;Ldadb/AdbKeyPair;IIZ)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic list$default(Ldadb/Dadb$Companion;Ljava/lang/String;Ldadb/AdbKeyPair;IIZILjava/lang/Object;)Ljava/util/List;
    .locals 1

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const-string p1, "localhost"

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    sget-object p2, Ldadb/AdbKeyPair;->Companion:Ldadb/AdbKeyPair$Companion;

    invoke-virtual {p2}, Ldadb/AdbKeyPair$Companion;->readDefault()Ldadb/AdbKeyPair;

    move-result-object p2

    :cond_1
    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move p7, v0

    move p5, p3

    move p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    goto :goto_0

    :cond_4
    move p7, p5

    move p6, p4

    move-object p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    :goto_0
    invoke-virtual/range {p2 .. p7}, Ldadb/Dadb$Companion;->list(Ljava/lang/String;Ldadb/AdbKeyPair;IIZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final readMode(Ljava/io/File;)I
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/nio/file/LinkOption;

    const-string v0, "unix:mode"

    invoke-static {p0, v0, p1}, Ljava/nio/file/Files;->getAttribute(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to read file mode"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final readUntil(Lbb/i;B)Lbb/g;
    .locals 1

    new-instance p0, Lbb/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :cond_0
    invoke-interface {p1}, Lbb/i;->readByte()B

    move-result v0

    invoke-virtual {p0, v0}, Lbb/g;->X(I)V

    if-ne v0, p2, :cond_0

    return-object p0
.end method

.method private final restartAdb(Ldadb/Dadb;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1, p2}, Ldadb/Dadb;->open(Ljava/lang/String;)Ldadb/AdbStream;

    move-result-object p0

    :try_start_0
    sget-object p1, Ldadb/Dadb$Companion;->$$INSTANCE:Ldadb/Dadb$Companion;

    invoke-interface {p0}, Ldadb/AdbStream;->getSource()Lbb/i;

    move-result-object p2

    const/16 v0, 0xa

    invoke-direct {p1, p2, v0}, Ldadb/Dadb$Companion;->readUntil(Lbb/i;B)Lbb/g;

    move-result-object p1

    sget-object p2, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Lbb/g;->x(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lwa/h;->l(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, Lwa/h;->l(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final waitRootOrClose(Ldadb/Dadb;Z)V
    .locals 2

    :cond_0
    :try_start_0
    const-string p0, "getprop service.adb.root"

    invoke-interface {p1, p0}, Ldadb/Dadb;->shell(Ljava/lang/String;)Ldadb/AdbShellResponse;

    move-result-object p0

    invoke-virtual {p0}, Ldadb/AdbShellResponse;->getOutput()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;I)Ldadb/Dadb;
    .locals 10

    .line 1
    const-string v0, "host"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x3c

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v9}, Ldadb/Dadb$Companion;->create$default(Ldadb/Dadb$Companion;Ljava/lang/String;ILdadb/AdbKeyPair;IIZILjava/lang/Object;)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public final create(Ljava/lang/String;ILdadb/AdbKeyPair;)Ldadb/Dadb;
    .locals 10

    .line 2
    const-string v0, "host"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x38

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v9}, Ldadb/Dadb$Companion;->create$default(Ldadb/Dadb$Companion;Ljava/lang/String;ILdadb/AdbKeyPair;IIZILjava/lang/Object;)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public final create(Ljava/lang/String;ILdadb/AdbKeyPair;I)Ldadb/Dadb;
    .locals 10

    .line 3
    const-string v0, "host"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v1 .. v9}, Ldadb/Dadb$Companion;->create$default(Ldadb/Dadb$Companion;Ljava/lang/String;ILdadb/AdbKeyPair;IIZILjava/lang/Object;)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public final create(Ljava/lang/String;ILdadb/AdbKeyPair;II)Ldadb/Dadb;
    .locals 10

    .line 4
    const-string v0, "host"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v9}, Ldadb/Dadb$Companion;->create$default(Ldadb/Dadb$Companion;Ljava/lang/String;ILdadb/AdbKeyPair;IIZILjava/lang/Object;)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public final create(Ljava/lang/String;ILdadb/AdbKeyPair;IIZ)Ldadb/Dadb;
    .locals 7

    const-string p0, "host"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ldadb/DadbImpl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Ldadb/DadbImpl;-><init>(Ljava/lang/String;ILdadb/AdbKeyPair;IIZ)V

    return-object v0
.end method

.method public final discover()Ldadb/Dadb;
    .locals 8

    .line 1
    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Ldadb/Dadb$Companion;->discover$default(Ldadb/Dadb$Companion;Ljava/lang/String;Ldadb/AdbKeyPair;IIZILjava/lang/Object;)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public final discover(Ljava/lang/String;)Ldadb/Dadb;
    .locals 9

    .line 2
    const-string v0, "host"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Ldadb/Dadb$Companion;->discover$default(Ldadb/Dadb$Companion;Ljava/lang/String;Ldadb/AdbKeyPair;IIZILjava/lang/Object;)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public final discover(Ljava/lang/String;Ldadb/AdbKeyPair;)Ldadb/Dadb;
    .locals 9

    .line 3
    const-string v0, "host"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v8}, Ldadb/Dadb$Companion;->discover$default(Ldadb/Dadb$Companion;Ljava/lang/String;Ldadb/AdbKeyPair;IIZILjava/lang/Object;)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public final discover(Ljava/lang/String;Ldadb/AdbKeyPair;I)Ldadb/Dadb;
    .locals 9

    .line 4
    const-string v0, "host"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v8}, Ldadb/Dadb$Companion;->discover$default(Ldadb/Dadb$Companion;Ljava/lang/String;Ldadb/AdbKeyPair;IIZILjava/lang/Object;)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public final discover(Ljava/lang/String;Ldadb/AdbKeyPair;II)Ldadb/Dadb;
    .locals 9

    .line 5
    const-string v0, "host"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v8}, Ldadb/Dadb$Companion;->discover$default(Ldadb/Dadb$Companion;Ljava/lang/String;Ldadb/AdbKeyPair;IIZILjava/lang/Object;)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public final discover(Ljava/lang/String;Ldadb/AdbKeyPair;IIZ)Ldadb/Dadb;
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual/range {p0 .. p5}, Ldadb/Dadb$Companion;->list(Ljava/lang/String;Ldadb/AdbKeyPair;IIZ)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldadb/Dadb;

    return-object p0
.end method

.method public final list()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldadb/Dadb;",
            ">;"
        }
    .end annotation

    .line 1
    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Ldadb/Dadb$Companion;->list$default(Ldadb/Dadb$Companion;Ljava/lang/String;Ldadb/AdbKeyPair;IIZILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final list(Ljava/lang/String;)Ljava/util/List;
    .locals 9
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
    const-string v0, "host"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Ldadb/Dadb$Companion;->list$default(Ldadb/Dadb$Companion;Ljava/lang/String;Ldadb/AdbKeyPair;IIZILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final list(Ljava/lang/String;Ldadb/AdbKeyPair;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldadb/AdbKeyPair;",
            ")",
            "Ljava/util/List<",
            "Ldadb/Dadb;",
            ">;"
        }
    .end annotation

    .line 3
    const-string v0, "host"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v8}, Ldadb/Dadb$Companion;->list$default(Ldadb/Dadb$Companion;Ljava/lang/String;Ldadb/AdbKeyPair;IIZILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final list(Ljava/lang/String;Ldadb/AdbKeyPair;I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldadb/AdbKeyPair;",
            "I)",
            "Ljava/util/List<",
            "Ldadb/Dadb;",
            ">;"
        }
    .end annotation

    .line 4
    const-string v0, "host"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v8}, Ldadb/Dadb$Companion;->list$default(Ldadb/Dadb$Companion;Ljava/lang/String;Ldadb/AdbKeyPair;IIZILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final list(Ljava/lang/String;Ldadb/AdbKeyPair;II)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldadb/AdbKeyPair;",
            "II)",
            "Ljava/util/List<",
            "Ldadb/Dadb;",
            ">;"
        }
    .end annotation

    .line 5
    const-string v0, "host"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v8}, Ldadb/Dadb$Companion;->list$default(Ldadb/Dadb$Companion;Ljava/lang/String;Ldadb/AdbKeyPair;IIZILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final list(Ljava/lang/String;Ldadb/AdbKeyPair;IIZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldadb/AdbKeyPair;",
            "IIZ)",
            "Ljava/util/List<",
            "Ldadb/Dadb;",
            ">;"
        }
    .end annotation

    const-string p0, "host"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 6
    invoke-static {p1, p0, v0, v1}, Ldadb/adbserver/AdbServer;->listDadbs$default(Ljava/lang/String;IILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 8
    :cond_0
    new-instance p0, Lo9/d;

    const/16 v0, 0x1633

    const/4 v2, 0x1

    const/16 v3, 0x15b3

    .line 9
    invoke-direct {p0, v3, v0, v2}, Lo9/b;-><init>(III)V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, p0

    check-cast v2, Lo9/c;

    invoke-virtual {v2}, Lo9/c;->nextInt()I

    move-result v5

    .line 12
    sget-object v3, Ldadb/Dadb$Companion;->$$INSTANCE:Ldadb/Dadb$Companion;

    move-object v4, p1

    move-object v6, p2

    move v8, p3

    move v7, p4

    move v9, p5

    invoke-virtual/range {v3 .. v9}, Ldadb/Dadb$Companion;->create(Ljava/lang/String;ILdadb/AdbKeyPair;IIZ)Ldadb/Dadb;

    move-result-object p1

    .line 13
    :try_start_0
    const-string p2, "echo success"

    invoke-interface {p1, p2}, Ldadb/Dadb;->shell(Ljava/lang/String;)Ldadb/AdbShellResponse;

    move-result-object p2

    invoke-virtual {p2}, Ldadb/AdbShellResponse;->getAllOutput()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-object p2, v1

    .line 14
    :goto_1
    const-string p3, "success\n"

    invoke-static {p2, p3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_2

    .line 15
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object p1, v4

    move-object p2, v6

    move p4, v7

    move p3, v8

    move p5, v9

    goto :goto_0

    :cond_3
    return-object v0
.end method
