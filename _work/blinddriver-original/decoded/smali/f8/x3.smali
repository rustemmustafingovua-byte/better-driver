.class public final Lf8/x3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf8/m2;

.field public final b:[Lf8/p3;

.field public c:[Ljava/lang/String;

.field public final d:[Lg5/i;

.field public volatile e:Z


# direct methods
.method public constructor <init>(Lf8/m2;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf8/x3;->a:Lf8/m2;

    iput-object p2, p0, Lf8/x3;->c:[Ljava/lang/String;

    invoke-virtual {p1}, Lf8/m2;->i()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lf8/p3;

    iput-object p2, p0, Lf8/x3;->b:[Lf8/p3;

    invoke-virtual {p1}, Lf8/m2;->k()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lg5/i;

    iput-object p1, p0, Lf8/x3;->d:[Lg5/i;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lf8/x3;->e:Z

    return-void
.end method

.method public static a(Lf8/x3;Lf8/z2;)Lg5/i;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lf8/z2;->p:Lf8/m2;

    iget-object v1, p0, Lf8/x3;->a:Lf8/m2;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lf8/x3;->d:[Lg5/i;

    iget p1, p1, Lf8/z2;->l:I

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "OneofDescriptor does not match message type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lf8/x3;Lf8/v2;)Lf8/p3;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lf8/v2;->s:Lf8/m2;

    iget-object v1, p0, Lf8/x3;->a:Lf8/m2;

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lf8/v2;->m:Lf8/q0;

    invoke-virtual {v0}, Lf8/q0;->C()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lf8/x3;->b:[Lf8/p3;

    iget p1, p1, Lf8/v2;->l:I

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This type does not have extensions."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FieldDescriptor does not match message type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final c(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 11

    iget-boolean v0, p0, Lf8/x3;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lf8/x3;->e:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lf8/x3;->b:[Lf8/p3;

    array-length v0, v0

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    const/4 v7, 0x0

    if-ge v9, v0, :cond_a

    iget-object v1, p0, Lf8/x3;->a:Lf8/m2;

    invoke-virtual {v1}, Lf8/m2;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lf8/v2;

    iget-object v1, v2, Lf8/v2;->u:Lf8/z2;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lf8/x3;->c:[Ljava/lang/String;

    iget v1, v1, Lf8/z2;->l:I

    add-int/2addr v1, v0

    aget-object v1, v3, v1

    move-object v6, v1

    goto :goto_1

    :cond_2
    move-object v6, v7

    :goto_1
    invoke-virtual {v2}, Lf8/v2;->l()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v2, Lf8/v2;->r:Lf8/u2;

    iget-object v1, v1, Lf8/u2;->l:Lf8/t2;

    sget-object v3, Lf8/t2;->u:Lf8/t2;

    if-ne v1, v3, :cond_4

    invoke-virtual {v2}, Lf8/v2;->k()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lf8/x3;->b:[Lf8/p3;

    new-instance v2, Lf8/s3;

    iget-object v3, p0, Lf8/x3;->c:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-direct {v2, v3, p1, p2}, Lf8/s3;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v2, v1, v9

    goto/16 :goto_2

    :cond_3
    new-instance v0, Lb0/l1;

    iget-object v1, p0, Lf8/x3;->c:[Ljava/lang/String;

    aget-object v1, v1, v9

    invoke-direct {v0, v2, p1}, Lb0/l1;-><init>(Lf8/v2;Ljava/lang/Class;)V

    throw v7

    :cond_4
    sget-object v3, Lf8/t2;->t:Lf8/t2;

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lf8/x3;->b:[Lf8/p3;

    new-instance v3, Lf8/q3;

    iget-object v6, p0, Lf8/x3;->c:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-direct {v3, v2, v6, p1, p2}, Lf8/q3;-><init>(Lf8/v2;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v3, v1, v9

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lf8/x3;->b:[Lf8/p3;

    new-instance v2, Lg5/s;

    iget-object v3, p0, Lf8/x3;->c:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-direct {v2, v3, p1, p2}, Lg5/s;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v2, v1, v9

    goto :goto_2

    :cond_6
    iget-object v1, v2, Lf8/v2;->r:Lf8/u2;

    iget-object v1, v1, Lf8/u2;->l:Lf8/t2;

    sget-object v3, Lf8/t2;->u:Lf8/t2;

    if-ne v1, v3, :cond_7

    iget-object v10, p0, Lf8/x3;->b:[Lf8/p3;

    new-instance v1, Lf8/w3;

    iget-object v3, p0, Lf8/x3;->c:[Ljava/lang/String;

    aget-object v3, v3, v9

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lf8/w3;-><init>(Lf8/v2;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;I)V

    aput-object v1, v10, v9

    goto :goto_2

    :cond_7
    sget-object v3, Lf8/t2;->t:Lf8/t2;

    if-ne v1, v3, :cond_8

    iget-object v7, p0, Lf8/x3;->b:[Lf8/p3;

    new-instance v1, Lf8/t3;

    iget-object v3, p0, Lf8/x3;->c:[Ljava/lang/String;

    aget-object v3, v3, v9

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lf8/t3;-><init>(Lf8/v2;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v1, v7, v9

    goto :goto_2

    :cond_8
    sget-object v3, Lf8/t2;->r:Lf8/t2;

    if-ne v1, v3, :cond_9

    iget-object v10, p0, Lf8/x3;->b:[Lf8/p3;

    new-instance v1, Lf8/w3;

    iget-object v3, p0, Lf8/x3;->c:[Ljava/lang/String;

    aget-object v3, v3, v9

    const/4 v7, 0x1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lf8/w3;-><init>(Lf8/v2;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;I)V

    aput-object v1, v10, v9

    goto :goto_2

    :cond_9
    iget-object v7, p0, Lf8/x3;->b:[Lf8/p3;

    new-instance v1, Lf8/v3;

    iget-object v3, p0, Lf8/x3;->c:[Ljava/lang/String;

    aget-object v3, v3, v9

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lf8/v3;-><init>(Lf8/v2;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v1, v7, v9

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lf8/x3;->d:[Lg5/i;

    array-length v9, v1

    move v3, v8

    :goto_3
    if-ge v3, v9, :cond_b

    iget-object v8, p0, Lf8/x3;->d:[Lg5/i;

    new-instance v1, Lg5/i;

    iget-object v2, p0, Lf8/x3;->a:Lf8/m2;

    iget-object v4, p0, Lf8/x3;->c:[Ljava/lang/String;

    add-int v5, v3, v0

    aget-object v4, v4, v5

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lg5/i;-><init>(Lf8/m2;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v1, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf8/x3;->e:Z

    iput-object v7, p0, Lf8/x3;->c:[Ljava/lang/String;

    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
