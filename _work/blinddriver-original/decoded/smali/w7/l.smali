.class public final Lw7/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ThreadLocal;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final c:Lad/a2;

.field public final d:Lz7/b;

.field public final e:Ljava/util/List;

.field public final f:Z


# direct methods
.method public constructor <init>(Ly7/g;Lw7/a;Ljava/util/Map;ZZILjava/util/List;Lw7/p;Lw7/q;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lw7/l;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lw7/l;->b:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v0, p3

    move-object p3, p2

    new-instance p2, Lad/a2;

    invoke-direct {p2, v0, p5, p10}, Lad/a2;-><init>(Ljava/util/Map;ZLjava/util/List;)V

    iput-object p2, p0, Lw7/l;->c:Lad/a2;

    iput-boolean p4, p0, Lw7/l;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object p4, Lz7/v;->A:Lz7/r;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lw7/t;->l:Lw7/p;

    if-ne p8, p4, :cond_0

    sget-object p4, Lz7/l;->c:Lz7/k;

    goto :goto_0

    :cond_0
    new-instance p4, Lz7/k;

    const/4 p5, 0x1

    invoke-direct {p4, p5, p8}, Lz7/k;-><init>(ILjava/lang/Object;)V

    :goto_0
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p4, Lz7/v;->p:Lz7/r;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lz7/v;->g:Lz7/s;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lz7/v;->d:Lz7/s;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lz7/v;->e:Lz7/s;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lz7/v;->f:Lz7/s;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p4, 0x1

    if-ne p6, p4, :cond_1

    sget-object p4, Lz7/v;->k:Lw7/i;

    goto :goto_1

    :cond_1
    new-instance p4, Lw7/i;

    const/4 p5, 0x2

    invoke-direct {p4, p5}, Lw7/i;-><init>(I)V

    :goto_1
    new-instance p5, Lz7/s;

    sget-object p6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class p7, Ljava/lang/Long;

    invoke-direct {p5, p6, p7, p4}, Lz7/s;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lw7/u;)V

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p5, Lw7/i;

    const/4 p6, 0x0

    invoke-direct {p5, p6}, Lw7/i;-><init>(I)V

    new-instance p6, Lz7/s;

    sget-object p7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class p8, Ljava/lang/Double;

    invoke-direct {p6, p7, p8, p5}, Lz7/s;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lw7/u;)V

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p5, Lw7/i;

    const/4 p6, 0x1

    invoke-direct {p5, p6}, Lw7/i;-><init>(I)V

    new-instance p6, Lz7/s;

    sget-object p7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class p8, Ljava/lang/Float;

    invoke-direct {p6, p7, p8, p5}, Lz7/s;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lw7/u;)V

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p5, Lw7/t;->m:Lw7/q;

    if-ne p9, p5, :cond_2

    sget-object p5, Lz7/c;->d:Lz7/k;

    goto :goto_2

    :cond_2
    new-instance p5, Lz7/c;

    invoke-direct {p5, p9}, Lz7/c;-><init>(Lw7/t;)V

    new-instance p6, Lz7/k;

    const/4 p7, 0x0

    invoke-direct {p6, p7, p5}, Lz7/k;-><init>(ILjava/lang/Object;)V

    move-object p5, p6

    :goto_2
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p5, Lz7/v;->h:Lz7/r;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p5, Lz7/v;->i:Lz7/r;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p5, Lw7/j;

    const/4 p6, 0x0

    invoke-direct {p5, p4, p6}, Lw7/j;-><init>(Lw7/u;I)V

    invoke-virtual {p5}, Lw7/u;->nullSafe()Lw7/u;

    move-result-object p5

    new-instance p6, Lz7/r;

    const/4 p7, 0x0

    const-class p8, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p6, p8, p5, p7}, Lz7/r;-><init>(Ljava/lang/Object;Lw7/u;I)V

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p5, Lw7/j;

    const/4 p6, 0x1

    invoke-direct {p5, p4, p6}, Lw7/j;-><init>(Lw7/u;I)V

    invoke-virtual {p5}, Lw7/u;->nullSafe()Lw7/u;

    move-result-object p4

    new-instance p5, Lz7/r;

    const/4 p6, 0x0

    const-class p7, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {p5, p7, p4, p6}, Lz7/r;-><init>(Ljava/lang/Object;Lw7/u;I)V

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lz7/v;->j:Lz7/r;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lz7/v;->l:Lz7/s;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lz7/v;->q:Lz7/r;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lz7/v;->r:Lz7/r;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lz7/v;->m:Lw7/i;

    new-instance p5, Lz7/r;

    const-class p7, Ljava/math/BigDecimal;

    invoke-direct {p5, p7, p4, p6}, Lz7/r;-><init>(Ljava/lang/Object;Lw7/u;I)V

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lz7/v;->n:Lw7/i;

    new-instance p5, Lz7/r;

    const-class p7, Ljava/math/BigInteger;

    invoke-direct {p5, p7, p4, p6}, Lz7/r;-><init>(Ljava/lang/Object;Lw7/u;I)V

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lz7/v;->o:Lw7/i;

    new-instance p5, Lz7/r;

    const-class p7, Ly7/i;

    invoke-direct {p5, p7, p4, p6}, Lz7/r;-><init>(Ljava/lang/Object;Lw7/u;I)V

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lz7/v;->s:Lz7/r;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lz7/v;->t:Lz7/r;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lz7/v;->v:Lz7/r;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lz7/v;->w:Lz7/r;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lz7/v;->y:Lz7/r;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lz7/v;->u:Lz7/r;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lz7/v;->b:Lz7/r;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lz7/c;->c:Lc8/a;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lz7/v;->x:Lz7/k;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean p4, Lc8/d;->a:Z

    if-eqz p4, :cond_3

    sget-object p4, Lc8/d;->e:Lc8/a;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lc8/d;->d:Lc8/a;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lc8/d;->f:Lc8/a;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object p4, Lz7/a;->d:Lc8/a;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lz7/v;->a:Lz7/r;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Lz7/b;

    const/4 p5, 0x0

    invoke-direct {p4, p2, p5}, Lz7/b;-><init>(Lad/a2;I)V

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Lz7/b;

    const/4 p5, 0x2

    invoke-direct {p4, p2, p5}, Lz7/b;-><init>(Lad/a2;I)V

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p5, Lz7/b;

    const/4 p4, 0x1

    invoke-direct {p5, p2, p4}, Lz7/b;-><init>(Lad/a2;I)V

    iput-object p5, p0, Lw7/l;->d:Lz7/b;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Lz7/v;->B:Lc8/a;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p4, p1

    new-instance p1, Lz7/q;

    move-object p6, p10

    invoke-direct/range {p1 .. p6}, Lz7/q;-><init>(Lad/a2;Lw7/h;Ly7/g;Lz7/b;Ljava/util/List;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lw7/l;->e:Ljava/util/List;

    return-void
.end method

.method public static a(D)V
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Ld8/a;

    invoke-direct {v0, p1}, Ld8/a;-><init>(Ljava/lang/reflect/Type;)V

    const/4 v1, 0x0

    if-nez p2, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p2, Le8/b;

    invoke-direct {p2, v2}, Le8/b;-><init>(Ljava/io/Reader;)V

    const-string v2, "AssertionError (GSON 2.10.1): "

    const/4 v3, 0x1

    iput-boolean v3, p2, Le8/b;->m:Z

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p2}, Le8/b;->Z()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, v0}, Lw7/l;->c(Ld8/a;)Lw7/u;

    move-result-object p0

    invoke-virtual {p0, p2}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-boolean v4, p2, Le8/b;->m:Z

    goto :goto_5

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    move v3, v4

    goto :goto_4

    :goto_1
    :try_start_2
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_2
    new-instance p1, Lw7/n;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_3
    new-instance p1, Lw7/n;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_4
    move-exception p0

    :goto_4
    if-eqz v3, :cond_c

    goto :goto_0

    :goto_5
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {p2}, Le8/b;->Z()I

    move-result p0

    const/16 p2, 0xa

    if-ne p0, p2, :cond_1

    goto :goto_6

    :cond_1
    new-instance p0, Lw7/n;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Le8/d; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :catch_5
    move-exception p0

    new-instance p1, Lw7/n;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_6
    move-exception p0

    new-instance p1, Lw7/n;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    :goto_6
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_3

    const-class p1, Ljava/lang/Integer;

    goto :goto_7

    :cond_3
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_4

    const-class p1, Ljava/lang/Float;

    goto :goto_7

    :cond_4
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_5

    const-class p1, Ljava/lang/Byte;

    goto :goto_7

    :cond_5
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_6

    const-class p1, Ljava/lang/Double;

    goto :goto_7

    :cond_6
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_7

    const-class p1, Ljava/lang/Long;

    goto :goto_7

    :cond_7
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_8

    const-class p1, Ljava/lang/Character;

    goto :goto_7

    :cond_8
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_9

    const-class p1, Ljava/lang/Boolean;

    goto :goto_7

    :cond_9
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_a

    const-class p1, Ljava/lang/Short;

    goto :goto_7

    :cond_a
    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_b

    const-class p1, Ljava/lang/Void;

    :cond_b
    :goto_7
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_c
    :try_start_4
    new-instance p1, Lw7/n;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_8
    iput-boolean v4, p2, Le8/b;->m:Z

    throw p0
.end method

.method public final c(Ld8/a;)Lw7/u;
    .locals 8

    iget-object v0, p0, Lw7/l;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw7/u;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lw7/l;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw7/u;

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    const/4 v3, 0x0

    :goto_0
    :try_start_0
    new-instance v4, Lw7/k;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    iput-object v5, v4, Lw7/k;->a:Lw7/u;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lw7/l;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw7/v;

    invoke-interface {v5, p0, p1}, Lw7/v;->create(Lw7/l;Ld8/a;)Lw7/u;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object p0, v4, Lw7/k;->a:Lw7/u;

    if-nez p0, :cond_4

    iput-object v5, v4, Lw7/k;->a:Lw7/u;

    invoke-interface {v2, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Delegate is already set"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_6
    if-eqz v5, :cond_8

    if-eqz v3, :cond_7

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    :cond_7
    return-object v5

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GSON (2.10.1) cannot handle "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    if-eqz v3, :cond_9

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_9
    throw p0
.end method

.method public final d(Lw7/v;Ld8/a;)Lw7/u;
    .locals 3

    iget-object v0, p0, Lw7/l;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lw7/l;->d:Lz7/b;

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw7/v;

    if-nez v1, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2, p0, p2}, Lw7/v;->create(Lw7/l;Ld8/a;)Lw7/u;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "GSON cannot serialize "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Ljava/io/Serializable;Ljava/lang/Class;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    new-instance v1, Le8/c;

    invoke-direct {v1, v0}, Le8/c;-><init>(Ljava/io/Writer;)V

    iget-boolean v2, p0, Lw7/l;->f:Z

    iput-boolean v2, v1, Le8/c;->q:Z

    const/4 v2, 0x0

    iput-boolean v2, v1, Le8/c;->p:Z

    iput-boolean v2, v1, Le8/c;->s:Z

    invoke-virtual {p0, p1, p2, v1}, Lw7/l;->g(Ljava/io/Serializable;Ljava/lang/Class;Le8/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lw7/n;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final f(Lorg/maplibre/geojson/GeoJson;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lw7/l;->e(Ljava/io/Serializable;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final g(Ljava/io/Serializable;Ljava/lang/Class;Le8/c;)V
    .locals 4

    const-string v0, "AssertionError (GSON 2.10.1): "

    new-instance v1, Ld8/a;

    invoke-direct {v1, p2}, Ld8/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p0, v1}, Lw7/l;->c(Ld8/a;)Lw7/u;

    move-result-object p2

    iget-boolean v1, p3, Le8/c;->p:Z

    const/4 v2, 0x1

    iput-boolean v2, p3, Le8/c;->p:Z

    iget-boolean v2, p3, Le8/c;->q:Z

    iget-boolean p0, p0, Lw7/l;->f:Z

    iput-boolean p0, p3, Le8/c;->q:Z

    iget-boolean p0, p3, Le8/c;->s:Z

    const/4 v3, 0x0

    iput-boolean v3, p3, Le8/c;->s:Z

    :try_start_0
    invoke-virtual {p2, p3, p1}, Lw7/u;->write(Le8/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p3, Le8/c;->p:Z

    iput-boolean v2, p3, Le8/c;->q:Z

    iput-boolean p0, p3, Le8/c;->s:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lw7/n;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-boolean v1, p3, Le8/c;->p:Z

    iput-boolean v2, p3, Le8/c;->q:Z

    iput-boolean p0, p3, Le8/c;->s:Z

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:false,factories:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lw7/l;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lw7/l;->c:Lad/a2;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
