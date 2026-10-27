.class public final Li6/c;
.super Lg6/m1;
.source "SourceFile"


# static fields
.field public static final o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    invoke-static {}, Ljava/io/File;->listRoots()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x3a

    if-ne v4, v6, :cond_0

    move v2, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sput-boolean v2, Li6/c;->o:Z

    return-void
.end method


# virtual methods
.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 6

    iget-object p0, p0, Lg6/f1;->l:Ljava/lang/Class;

    sget-object v0, Ls5/n;->A:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    new-array p0, v3, [Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0

    :cond_0
    sget-boolean v2, Li6/c;->o:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_1

    new-array p0, v3, [Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-static {v0}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object p0
    :try_end_1
    .catch Ljava/nio/file/FileSystemNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p2, p0, p1}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    :try_start_2
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {v3}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/spi/FileSystemProvider;

    invoke-virtual {v4}, Ljava/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v0}, Ljava/nio/file/spi/FileSystemProvider;->getPath(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0

    :catch_2
    move-exception v0

    goto :goto_0

    :cond_3
    invoke-virtual {p2, p0, p1}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/util/ServiceConfigurationError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    invoke-virtual {p2, p0, v0}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception p1

    invoke-virtual {p2, p0, p1}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    const-class p0, Ljava/nio/file/Path;

    invoke-virtual {p2, p0, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    throw v1
.end method
