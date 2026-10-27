.class public final Lmb/o6;
.super La/a;
.source "SourceFile"


# static fields
.field public static final p:Z

.field public static final q:Ljava/util/logging/Logger;


# instance fields
.field public final f:Ljava/lang/ClassLoader;

.field public g:Lmb/b;

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:I

.field public final l:Ljava/util/EnumSet;

.field public m:Ljava/util/List;

.field public n:Ljava/util/HashMap;

.field public o:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lmb/o6;

    const-string v1, "disassembleClassFilesToStdout"

    invoke-static {v0, v1}, Ljb/b;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lmb/o6;->p:Z

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lmb/o6;->q:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x7

    .line 1
    invoke-direct {p0, v0}, La/a;-><init>(I)V

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lmb/o6;->f:Ljava/lang/ClassLoader;

    .line 3
    const-string v0, "org.codehaus.janino.source_debugging.enable"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmb/o6;->h:Z

    .line 4
    iput-boolean v0, p0, Lmb/o6;->i:Z

    .line 5
    iput-boolean v0, p0, Lmb/o6;->j:Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lmb/o6;->k:I

    .line 7
    const-class v0, Lmb/c0;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lmb/o6;->l:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lib/a;)V
    .locals 2

    const/4 v0, 0x7

    .line 8
    invoke-direct {p0, v0}, La/a;-><init>(I)V

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lmb/o6;->f:Ljava/lang/ClassLoader;

    .line 10
    const-string v0, "org.codehaus.janino.source_debugging.enable"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmb/o6;->h:Z

    .line 11
    iput-boolean v0, p0, Lmb/o6;->i:Z

    .line 12
    iput-boolean v0, p0, Lmb/o6;->j:Z

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lmb/o6;->k:I

    .line 14
    const-class v1, Lmb/c0;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lmb/o6;->l:Ljava/util/EnumSet;

    .line 15
    new-instance v1, Lmb/j6;

    invoke-direct {v1, p1, p2}, Lmb/j6;-><init>(Ljava/lang/String;Ljava/io/Reader;)V

    .line 16
    new-instance p1, Lmb/d6;

    invoke-direct {p1, v1}, Lmb/d6;-><init>(Lmb/j6;)V

    .line 17
    iput v0, p1, Lmb/d6;->d:I

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lmb/d6;->i()Lmb/k0;

    move-result-object p1
    :try_end_0
    .catch Lhb/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    invoke-virtual {p0, p1}, Lmb/o6;->F(Lmb/k0;)V

    .line 20
    invoke-virtual {p0}, Lmb/o6;->G()Ljava/lang/ClassLoader;

    return-void

    :catch_0
    move-exception p1

    .line 21
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p2, p0, Lmb/o6;->m:Ljava/util/List;

    .line 22
    throw p1
.end method


# virtual methods
.method public final F(Lmb/k0;)V
    .locals 7

    const-string v0, "cook"

    sget-object v1, Lmb/o6;->q:Ljava/util/logging/Logger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p1}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmb/o6;->m:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Lmb/b;

    iget-object v1, p0, Lmb/o6;->f:Ljava/lang/ClassLoader;

    invoke-direct {v0, v1}, Lmb/b;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lmb/o6;->g:Lmb/b;

    :try_start_0
    new-instance v1, Lmb/a7;

    invoke-direct {v1, p1, v0}, Lmb/a7;-><init>(Lmb/k0;Lmb/b;)V

    iget-object p1, p0, Lmb/o6;->l:Ljava/util/EnumSet;

    iput-object p1, v1, Lmb/a7;->a:Ljava/util/EnumSet;

    iget p1, p0, Lmb/o6;->k:I

    iput p1, v1, Lmb/a7;->b:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v0, p0, Lmb/o6;->h:Z

    iget-boolean v3, p0, Lmb/o6;->i:Z

    iget-boolean v4, p0, Lmb/o6;->j:Z

    new-instance v5, Lc5/o;

    const/4 v6, 0x4

    invoke-direct {v5, v6, p1}, Lc5/o;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v1, v0, v3, v4, v5}, Lmb/a7;->e0(ZZZLc5/o;)V

    iput-object p1, p0, Lmb/o6;->m:Ljava/util/List;
    :try_end_0
    .catch Lhb/a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lmb/o6;->g:Lmb/b;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lmb/o6;->m:Ljava/util/List;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v2, p0, Lmb/o6;->g:Lmb/b;

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must only be called before \"cook()\""

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final G()Ljava/lang/ClassLoader;
    .locals 7

    iget-object v0, p0, Lmb/o6;->o:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lmb/o6;->n:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lmb/o6;->m:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Lorg/codehaus/janino/util/t0;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/codehaus/janino/util/t0;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lorg/codehaus/janino/util/t0;->m()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {v4, v6}, Lorg/codehaus/janino/util/t0;->n(Ljava/io/ByteArrayOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/codehaus/janino/util/j;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    iput-object v0, p0, Lmb/o6;->n:Ljava/util/HashMap;

    :goto_1
    new-instance v1, Lmb/m6;

    invoke-direct {v1, p0, v0}, Lmb/m6;-><init>(Lmb/o6;Ljava/util/HashMap;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    iput-object v0, p0, Lmb/o6;->o:Ljava/lang/ClassLoader;

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must only be called after \"cook()\""

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lmb/o6;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lmb/o6;

    iget-object p0, p0, Lmb/o6;->m:Ljava/util/List;

    const-string v0, "Must only be called after \"cook()\""

    if-eqz p0, :cond_2

    iget-object p1, p1, Lmb/o6;->m:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lmb/o6;->f:Ljava/lang/ClassLoader;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
