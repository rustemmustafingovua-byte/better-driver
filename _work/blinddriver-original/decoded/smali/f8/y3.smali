.class public abstract Lf8/y3;
.super Lf8/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public m:Lf8/i5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf8/c;-><init>()V

    .line 2
    sget-object v0, Lf8/i5;->m:Lf8/i5;

    .line 3
    iput-object v0, p0, Lf8/y3;->m:Lf8/i5;

    return-void
.end method

.method public constructor <init>(Lf8/l3;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lf8/c;-><init>()V

    .line 5
    iget-object p1, p1, Lf8/l3;->m:Lf8/i5;

    .line 6
    iput-object p1, p0, Lf8/y3;->m:Lf8/i5;

    return-void
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Generated message class \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" missing method \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static r(Lf8/c4;)Lf8/z3;
    .locals 3

    check-cast p0, Lf8/z3;

    iget v0, p0, Lf8/z3;->n:I

    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    :goto_0
    if-lt v1, v0, :cond_1

    new-instance v0, Lf8/z3;

    iget-object v2, p0, Lf8/z3;->m:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget p0, p0, Lf8/z3;->n:I

    invoke-direct {v0, v1, p0}, Lf8/z3;-><init>([II)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static s(Lf8/e4;)Lf8/l4;
    .locals 3

    check-cast p0, Lf8/l4;

    iget v0, p0, Lf8/l4;->n:I

    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    :goto_0
    if-lt v1, v0, :cond_1

    new-instance v0, Lf8/l4;

    iget-object v2, p0, Lf8/l4;->m:[J

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iget p0, p0, Lf8/l4;->n:I

    invoke-direct {v0, v1, p0}, Lf8/l4;-><init>([JI)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static t()Lf8/z3;
    .locals 3

    new-instance v0, Lf8/z3;

    const/16 v1, 0xa

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf8/z3;-><init>([II)V

    return-object v0
.end method

.method public static u()Lf8/l4;
    .locals 3

    new-instance v0, Lf8/l4;

    const/16 v1, 0xa

    new-array v1, v1, [J

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf8/l4;-><init>([JI)V

    return-object v0
.end method


# virtual methods
.method public final h()Lf8/m2;
    .locals 0

    invoke-virtual {p0}, Lf8/y3;->q()Lf8/x3;

    move-result-object p0

    iget-object p0, p0, Lf8/x3;->a:Lf8/m2;

    return-object p0
.end method

.method public j(Lf8/v2;)Z
    .locals 1

    invoke-virtual {p0}, Lf8/y3;->q()Lf8/x3;

    move-result-object v0

    invoke-static {v0, p1}, Lf8/x3;->b(Lf8/x3;Lf8/v2;)Lf8/p3;

    move-result-object p1

    invoke-interface {p1, p0}, Lf8/p3;->l(Lf8/y3;)Z

    move-result p0

    return p0
.end method

.method public l()Ljava/util/Map;
    .locals 0

    invoke-virtual {p0}, Lf8/y3;->n()Ljava/util/TreeMap;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final n()Ljava/util/TreeMap;
    .locals 8

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lf8/y3;->q()Lf8/x3;

    move-result-object v1

    iget-object v1, v1, Lf8/x3;->a:Lf8/m2;

    invoke-virtual {v1}, Lf8/m2;->i()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf8/v2;

    iget-object v5, v4, Lf8/v2;->u:Lf8/z2;

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    iget v4, v5, Lf8/z2;->q:I

    sub-int/2addr v4, v6

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lf8/y3;->q()Lf8/x3;

    move-result-object v4

    invoke-static {v4, v5}, Lf8/x3;->a(Lf8/x3;Lf8/z2;)Lg5/i;

    move-result-object v4

    iget-object v7, v4, Lg5/i;->p:Ljava/lang/Object;

    check-cast v7, Lf8/v2;

    if-eqz v7, :cond_0

    invoke-virtual {p0, v7}, Lf8/y3;->j(Lf8/v2;)Z

    move-result v4

    goto :goto_1

    :cond_0
    iget-object v4, v4, Lg5/i;->n:Ljava/lang/Object;

    check-cast v4, Ljava/lang/reflect/Method;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, v7}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf8/b4;

    invoke-interface {v4}, Lf8/b4;->a()I

    move-result v4

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lf8/y3;->q()Lf8/x3;

    move-result-object v4

    invoke-static {v4, v5}, Lf8/x3;->a(Lf8/x3;Lf8/z2;)Lg5/i;

    move-result-object v4

    iget-object v5, v4, Lg5/i;->p:Ljava/lang/Object;

    check-cast v5, Lf8/v2;

    if-eqz v5, :cond_3

    invoke-virtual {p0, v5}, Lf8/y3;->j(Lf8/v2;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v5

    goto :goto_2

    :cond_3
    iget-object v5, v4, Lg5/i;->n:Ljava/lang/Object;

    check-cast v5, Ljava/lang/reflect/Method;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, p0, v7}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf8/b4;

    invoke-interface {v5}, Lf8/b4;->a()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v4, v4, Lg5/i;->m:Ljava/lang/Object;

    check-cast v4, Lf8/m2;

    invoke-virtual {v4, v5}, Lf8/m2;->h(I)Lf8/v2;

    move-result-object v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lf8/v2;->l()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0, v4}, Lf8/y3;->o(Lf8/v2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v4}, Lf8/y3;->j(Lf8/v2;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    invoke-virtual {p0, v4}, Lf8/y3;->o(Lf8/v2;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_3
    add-int/2addr v3, v6

    goto/16 :goto_0

    :cond_9
    return-object v0
.end method

.method public o(Lf8/v2;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lf8/y3;->q()Lf8/x3;

    move-result-object v0

    invoke-static {v0, p1}, Lf8/x3;->b(Lf8/x3;Lf8/v2;)Lf8/p3;

    move-result-object p1

    invoke-interface {p1, p0}, Lf8/p3;->o(Lf8/y3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract q()Lf8/x3;
.end method
