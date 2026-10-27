.class public final Lf8/w2;
.super Lf8/x2;
.source "SourceFile"


# instance fields
.field public final l:Lf8/y0;

.field public final m:[Lf8/m2;

.field public final n:[Lf8/r2;

.field public final o:[Lf8/a3;

.field public final p:[Lf8/v2;

.field public final q:[Lf8/w2;

.field public final r:Lf8/p2;


# direct methods
.method public constructor <init>(Lf8/y0;[Lf8/w2;Lf8/p2;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lf8/w2;->r:Lf8/p2;

    .line 3
    iput-object p1, p0, Lf8/w2;->l:Lf8/y0;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p2, v3

    .line 6
    iget-object v5, v4, Lf8/w2;->l:Lf8/y0;

    .line 7
    invoke-virtual {v5}, Lf8/y0;->v()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 10
    :goto_1
    iget-object v3, p1, Lf8/y0;->r:Lf8/c4;

    check-cast v3, Lf8/z3;

    invoke-virtual {v3}, Lf8/z3;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 11
    iget-object v3, p1, Lf8/y0;->r:Lf8/c4;

    check-cast v3, Lf8/z3;

    .line 12
    invoke-virtual {v3, v1}, Lf8/z3;->c(I)V

    .line 13
    iget-object v3, v3, Lf8/z3;->m:[I

    aget v3, v3, v1

    if-ltz v3, :cond_2

    .line 14
    iget-object v4, p1, Lf8/y0;->q:Lf8/k4;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 15
    iget-object v4, p1, Lf8/y0;->q:Lf8/k4;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf8/w2;

    if-nez v3, :cond_1

    goto :goto_2

    .line 17
    :cond_1
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 18
    :cond_2
    new-instance p1, Lf8/q2;

    const-string p2, "Invalid public dependency index."

    invoke-direct {p1, p0, p2}, Lf8/q2;-><init>(Lf8/w2;Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lf8/w2;

    iput-object v0, p0, Lf8/w2;->q:[Lf8/w2;

    .line 20
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 21
    iget-object p2, p0, Lf8/w2;->l:Lf8/y0;

    invoke-virtual {p2}, Lf8/y0;->x()Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-virtual {p3, p0, p2}, Lf8/p2;->a(Lf8/w2;Ljava/lang/String;)V

    .line 23
    iget-object p2, p1, Lf8/y0;->t:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 24
    new-array p2, p2, [Lf8/m2;

    iput-object p2, p0, Lf8/w2;->m:[Lf8/m2;

    move p2, v2

    .line 25
    :goto_3
    iget-object p3, p1, Lf8/y0;->t:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x0

    if-ge p2, p3, :cond_4

    .line 26
    iget-object p3, p0, Lf8/w2;->m:[Lf8/m2;

    new-instance v1, Lf8/m2;

    .line 27
    iget-object v3, p1, Lf8/y0;->t:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf8/t;

    .line 28
    invoke-direct {v1, v3, p0, v0}, Lf8/m2;-><init>(Lf8/t;Lf8/w2;Lf8/m2;)V

    .line 29
    aput-object v1, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 30
    :cond_4
    iget-object p2, p1, Lf8/y0;->u:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 31
    new-array p2, p2, [Lf8/r2;

    iput-object p2, p0, Lf8/w2;->n:[Lf8/r2;

    move p2, v2

    .line 32
    :goto_4
    iget-object p3, p1, Lf8/y0;->u:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_5

    .line 33
    iget-object p3, p0, Lf8/w2;->n:[Lf8/r2;

    new-instance v1, Lf8/r2;

    .line 34
    iget-object v3, p1, Lf8/y0;->u:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf8/z;

    .line 35
    invoke-direct {v1, v3, p0, v0}, Lf8/r2;-><init>(Lf8/z;Lf8/w2;Lf8/m2;)V

    aput-object v1, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 36
    :cond_5
    iget-object p2, p1, Lf8/y0;->v:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 37
    new-array p2, p2, [Lf8/a3;

    iput-object p2, p0, Lf8/w2;->o:[Lf8/a3;

    move p2, v2

    .line 38
    :goto_5
    iget-object p3, p1, Lf8/y0;->v:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_6

    .line 39
    iget-object p3, p0, Lf8/w2;->o:[Lf8/a3;

    new-instance v0, Lf8/a3;

    .line 40
    iget-object v1, p1, Lf8/y0;->v:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/v1;

    .line 41
    invoke-direct {v0, v1, p0}, Lf8/a3;-><init>(Lf8/v1;Lf8/w2;)V

    aput-object v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 42
    :cond_6
    iget-object p2, p1, Lf8/y0;->w:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 43
    new-array p2, p2, [Lf8/v2;

    iput-object p2, p0, Lf8/w2;->p:[Lf8/v2;

    move v7, v2

    .line 44
    :goto_6
    iget-object p2, p1, Lf8/y0;->w:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v7, p2, :cond_7

    .line 45
    iget-object p2, p0, Lf8/w2;->p:[Lf8/v2;

    new-instance v3, Lf8/v2;

    .line 46
    iget-object p3, p1, Lf8/y0;->w:Ljava/util/List;

    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Lf8/q0;

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v5, p0

    .line 47
    invoke-direct/range {v3 .. v8}, Lf8/v2;-><init>(Lf8/q0;Lf8/w2;Lf8/m2;IZ)V

    aput-object v3, p2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lf8/m2;)V
    .locals 6

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lf8/p2;

    const/4 v1, 0x0

    new-array v2, v1, [Lf8/w2;

    invoke-direct {v0, v2}, Lf8/p2;-><init>([Lf8/w2;)V

    iput-object v0, p0, Lf8/w2;->r:Lf8/p2;

    .line 50
    sget-object v2, Lf8/y0;->B:Lf8/y0;

    invoke-virtual {v2}, Lf8/y0;->D()Lf8/x0;

    move-result-object v2

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    iget-object v4, p2, Lf8/m2;->m:Ljava/lang/String;

    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".placeholder.proto"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    iget v4, v2, Lf8/x0;->n:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v2, Lf8/x0;->n:I

    .line 56
    iput-object v3, v2, Lf8/x0;->o:Ljava/io/Serializable;

    .line 57
    invoke-virtual {v2}, Lf8/l3;->O()V

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    iget v3, v2, Lf8/x0;->n:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lf8/x0;->n:I

    .line 60
    iput-object p1, v2, Lf8/x0;->p:Ljava/io/Serializable;

    .line 61
    invoke-virtual {v2}, Lf8/l3;->O()V

    .line 62
    iget-object v3, p2, Lf8/m2;->l:Lf8/t;

    .line 63
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    iget v4, v2, Lf8/x0;->n:I

    and-int/lit8 v4, v4, 0x20

    if-nez v4, :cond_0

    .line 65
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lf8/x0;->t:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v2, Lf8/x0;->t:Ljava/util/List;

    .line 66
    iget v4, v2, Lf8/x0;->n:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v2, Lf8/x0;->n:I

    .line 67
    :cond_0
    iget-object v4, v2, Lf8/x0;->t:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {v2}, Lf8/l3;->O()V

    .line 69
    invoke-virtual {v2}, Lf8/x0;->R()Lf8/y0;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, Lf8/y0;->p()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    iput-object v2, p0, Lf8/w2;->l:Lf8/y0;

    .line 72
    new-array v2, v1, [Lf8/w2;

    iput-object v2, p0, Lf8/w2;->q:[Lf8/w2;

    .line 73
    filled-new-array {p2}, [Lf8/m2;

    move-result-object v2

    iput-object v2, p0, Lf8/w2;->m:[Lf8/m2;

    .line 74
    new-array v2, v1, [Lf8/r2;

    iput-object v2, p0, Lf8/w2;->n:[Lf8/r2;

    .line 75
    new-array v2, v1, [Lf8/a3;

    iput-object v2, p0, Lf8/w2;->o:[Lf8/a3;

    .line 76
    new-array v1, v1, [Lf8/v2;

    iput-object v1, p0, Lf8/w2;->p:[Lf8/v2;

    .line 77
    invoke-virtual {v0, p0, p1}, Lf8/p2;->a(Lf8/w2;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, p2}, Lf8/p2;->b(Lf8/x2;)V

    return-void

    .line 79
    :cond_1
    invoke-static {v2}, Lf8/a;->D(Lf8/c;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0
.end method

.method public static f(Lf8/y0;[Lf8/w2;)Lf8/w2;
    .locals 12

    new-instance v0, Lf8/p2;

    invoke-direct {v0, p1}, Lf8/p2;-><init>([Lf8/w2;)V

    new-instance v1, Lf8/w2;

    invoke-direct {v1, p0, p1, v0}, Lf8/w2;-><init>(Lf8/y0;[Lf8/w2;Lf8/p2;)V

    iget-object p0, v1, Lf8/w2;->m:[Lf8/m2;

    array-length p1, p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lf8/m2;->f()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, v1, Lf8/w2;->o:[Lf8/a3;

    array-length p1, p0

    move v2, v0

    :goto_1
    if-ge v2, p1, :cond_4

    aget-object v3, p0, v2

    iget-object v3, v3, Lf8/a3;->o:[Lf8/y2;

    array-length v4, v3

    move v5, v0

    :goto_2
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    iget-object v7, v6, Lf8/y2;->n:Lf8/w2;

    iget-object v7, v7, Lf8/w2;->r:Lf8/p2;

    iget-object v8, v6, Lf8/y2;->l:Lf8/i1;

    invoke-virtual {v8}, Lf8/i1;->v()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v6, v9}, Lf8/p2;->f(Lf8/x2;Ljava/lang/String;)Lf8/x2;

    move-result-object v9

    instance-of v9, v9, Lf8/m2;

    const-string v10, "\" is not a message type."

    const-string v11, "\""

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Lf8/i1;->x()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v6, v9}, Lf8/p2;->f(Lf8/x2;Ljava/lang/String;)Lf8/x2;

    move-result-object v7

    instance-of v7, v7, Lf8/m2;

    if-eqz v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    new-instance p0, Lf8/q2;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lf8/i1;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v6, p1}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lf8/q2;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lf8/i1;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v6, p1}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object p0, v1, Lf8/w2;->p:[Lf8/v2;

    array-length p1, p0

    :goto_3
    if-ge v0, p1, :cond_5

    aget-object v2, p0, v0

    invoke-static {v2}, Lf8/v2;->f(Lf8/v2;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return-object v1
.end method

.method public static i([Ljava/lang/String;[Lf8/w2;)Lf8/w2;
    .locals 4

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    aget-object p0, p0, v2

    sget-object v0, Lf8/f4;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lf8/f4;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    :goto_1
    :try_start_0
    sget-object v0, Lf8/y0;->C:Lf8/w0;

    invoke-virtual {v0, p0}, Lf8/d;->b([B)Lf8/o4;

    move-result-object p0

    check-cast p0, Lf8/y0;
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0, p1}, Lf8/w2;->f(Lf8/y0;[Lf8/w2;)Lf8/w2;

    move-result-object p0
    :try_end_1
    .catch Lf8/q2; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid embedded descriptor for \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lf8/y0;->v()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to parse protocol buffer descriptor for generated code."

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final b()Lf8/w2;
    .locals 0

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf8/w2;->l:Lf8/y0;

    invoke-virtual {p0}, Lf8/y0;->v()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf8/w2;->l:Lf8/y0;

    invoke-virtual {p0}, Lf8/y0;->v()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lf8/c;
    .locals 0

    iget-object p0, p0, Lf8/w2;->l:Lf8/y0;

    return-object p0
.end method

.method public final g()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lf8/w2;->m:[Lf8/m2;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final h()I
    .locals 1

    iget-object p0, p0, Lf8/w2;->l:Lf8/y0;

    invoke-virtual {p0}, Lf8/y0;->y()Ljava/lang/String;

    move-result-object p0

    const-string v0, "proto3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method
