.class public abstract Lf8/v4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf8/b;


# static fields
.field public static final a:Lf8/t4;

.field public static final b:Lf8/u4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf8/t4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf8/v4;->a:Lf8/t4;

    new-instance v0, Lf8/u4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf8/v4;->b:Lf8/u4;

    return-void
.end method

.method public static b(BBBB[CI)V
    .locals 2

    invoke-static {p1}, Lf8/v4;->l(B)Z

    move-result v0

    if-nez v0, :cond_0

    shl-int/lit8 v0, p0, 0x1c

    add-int/lit8 v1, p1, 0x70

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_0

    invoke-static {p2}, Lf8/v4;->l(B)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lf8/v4;->l(B)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 p0, p0, 0x7

    shl-int/lit8 p0, p0, 0x12

    and-int/lit8 p1, p1, 0x3f

    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p0, p1

    and-int/lit8 p1, p2, 0x3f

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    and-int/lit8 p1, p3, 0x3f

    or-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0xa

    const p2, 0xd7c0

    add-int/2addr p1, p2

    int-to-char p1, p1

    aput-char p1, p4, p5

    add-int/lit8 p5, p5, 0x1

    and-int/lit16 p0, p0, 0x3ff

    const p1, 0xdc00

    add-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p4, p5

    return-void

    :cond_0
    invoke-static {}, Lf8/h4;->a()Lf8/h4;

    move-result-object p0

    throw p0
.end method

.method public static c(BB[CI)V
    .locals 1

    const/16 v0, -0x3e

    if-lt p0, v0, :cond_0

    invoke-static {p1}, Lf8/v4;->l(B)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x6

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p2, p3

    return-void

    :cond_0
    invoke-static {}, Lf8/h4;->a()Lf8/h4;

    move-result-object p0

    throw p0
.end method

.method public static d(BBB[CI)V
    .locals 2

    invoke-static {p1}, Lf8/v4;->l(B)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, -0x20

    const/16 v1, -0x60

    if-ne p0, v0, :cond_0

    if-lt p1, v1, :cond_2

    :cond_0
    const/16 v0, -0x13

    if-ne p0, v0, :cond_1

    if-ge p1, v1, :cond_2

    :cond_1
    invoke-static {p2}, Lf8/v4;->l(B)Z

    move-result v0

    if-nez v0, :cond_2

    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0xc

    and-int/lit8 p1, p1, 0x3f

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    and-int/lit8 p1, p2, 0x3f

    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p3, p4

    return-void

    :cond_2
    invoke-static {}, Lf8/h4;->a()Lf8/h4;

    move-result-object p0

    throw p0
.end method

.method public static i(Lb0/l1;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb0/l1;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lb0/l1;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget v2, p0, Lb0/l1;->l:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v2, [B

    aget-byte v2, v2, v1

    goto :goto_1

    :pswitch_0
    iget-object v2, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v2, Lf8/j;

    invoke-virtual {v2, v1}, Lf8/j;->a(I)B

    move-result v2

    :goto_1
    const/16 v3, 0x22

    if-eq v2, v3, :cond_3

    const/16 v3, 0x27

    if-eq v2, v3, :cond_2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_1

    const/16 v4, 0x20

    if-lt v2, v4, :cond_0

    const/16 v4, 0x7e

    if-gt v2, v4, :cond_0

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_1
    const-string v2, "\\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_2
    const-string v2, "\\f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_3
    const-string v2, "\\v"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_4
    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_5
    const-string v2, "\\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_6
    const-string v2, "\\b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_7
    const-string v2, "\\a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v2, "\\\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v2, "\\\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static j(Lf8/j;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lb0/l1;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Lb0/l1;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lf8/v4;->i(Lb0/l1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lf8/q4;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6

    invoke-interface {p0}, Lf8/q4;->h()Lf8/m2;

    move-result-object v0

    invoke-virtual {v0}, Lf8/m2;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/v2;

    iget-object v2, v1, Lf8/v2;->m:Lf8/q0;

    iget v2, v2, Lf8/q0;->q:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    sget-object v2, Lf8/o0;->m:Lf8/o0;

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    sget-object v2, Lf8/o0;->o:Lf8/o0;

    goto :goto_1

    :cond_2
    sget-object v2, Lf8/o0;->n:Lf8/o0;

    goto :goto_1

    :cond_3
    sget-object v2, Lf8/o0;->m:Lf8/o0;

    :goto_1
    if-nez v2, :cond_4

    sget-object v2, Lf8/o0;->m:Lf8/o0;

    :cond_4
    sget-object v3, Lf8/o0;->n:Lf8/o0;

    if-ne v2, v3, :cond_0

    invoke-interface {p0, v1}, Lf8/q4;->j(Lf8/v2;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lf8/v2;->m:Lf8/q0;

    invoke-virtual {v1}, Lf8/q0;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-interface {p0}, Lf8/q4;->l()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/v2;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, v2, Lf8/v2;->r:Lf8/u2;

    iget-object v3, v3, Lf8/u2;->l:Lf8/t2;

    sget-object v4, Lf8/t2;->u:Lf8/t2;

    if-ne v3, v4, :cond_6

    invoke-virtual {v2}, Lf8/v2;->l()Z

    move-result v3

    if-eqz v3, :cond_7

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf8/q4;

    add-int/lit8 v5, v3, 0x1

    invoke-static {p1, v2, v3}, Lf8/v4;->p(Ljava/lang/String;Lf8/v2;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, p2}, Lf8/v4;->k(Lf8/q4;Ljava/lang/String;Ljava/util/ArrayList;)V

    move v3, v5

    goto :goto_3

    :cond_7
    invoke-interface {p0, v2}, Lf8/q4;->j(Lf8/v2;)Z

    move-result v3

    if-eqz v3, :cond_6

    check-cast v1, Lf8/q4;

    const/4 v3, -0x1

    invoke-static {p1, v2, v3}, Lf8/v4;->p(Ljava/lang/String;Lf8/v2;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lf8/v4;->k(Lf8/q4;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_8
    return-void
.end method

.method public static l(B)Z
    .locals 1

    const/16 v0, -0x41

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static m(Lf8/k;Lf8/f5;Lf8/h3;Lf8/m2;Lb0/l1;I)Z
    .locals 6

    iget-object v0, p3, Lf8/m2;->l:Lf8/t;

    invoke-virtual {v0}, Lf8/t;->w()Lf8/f1;

    move-result-object v0

    iget-boolean v0, v0, Lf8/f1;->p:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    if-ne p5, v0, :cond_7

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lf8/k;->q()I

    move-result p5

    if-nez p5, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x10

    if-ne p5, v0, :cond_3

    invoke-virtual {p0}, Lf8/k;->l()I

    move-result p5

    if-eqz p5, :cond_2

    instance-of v0, p2, Lf8/f3;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lf8/f3;

    invoke-virtual {p4, v0, p3, p5}, Lb0/l1;->i(Lf8/f3;Lf8/m2;I)V

    :cond_2
    move v1, p5

    goto :goto_0

    :cond_3
    const/16 v0, 0x1a

    if-ne p5, v0, :cond_4

    invoke-virtual {p0}, Lf8/k;->g()Lf8/j;

    move-result-object p5

    move-object v3, p5

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p5}, Lf8/k;->s(I)Z

    move-result p5

    if-nez p5, :cond_0

    :goto_1
    const/16 p2, 0xc

    invoke-virtual {p0, p2}, Lf8/k;->a(I)V

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    new-instance p0, Lb0/l1;

    const/16 p2, 0xc

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3}, Lb0/l1;-><init>(IZ)V

    new-instance p2, Lf8/g5;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb0/l1;->m:Ljava/lang/Object;

    iget-object p3, p2, Lf8/g5;->d:Ljava/util/List;

    if-nez p3, :cond_5

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p2, Lf8/g5;->d:Ljava/util/List;

    :cond_5
    iget-object p2, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p2, Lf8/g5;

    iget-object p2, p2, Lf8/g5;->d:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lb0/l1;->h()Lf8/g5;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lf8/f5;->u(ILf8/g5;)V

    :cond_6
    return v2

    :cond_7
    and-int/lit8 v0, p5, 0x7

    ushr-int/lit8 v4, p5, 0x3

    invoke-virtual {p3, v4}, Lf8/m2;->l(I)Z

    move-result v5

    if-eqz v5, :cond_8

    instance-of v5, p2, Lf8/f3;

    if-eqz v5, :cond_9

    move-object v5, p2

    check-cast v5, Lf8/f3;

    invoke-virtual {p4, v5, p3, v4}, Lb0/l1;->i(Lf8/f3;Lf8/m2;I)V

    goto :goto_3

    :cond_8
    iget v5, p4, Lb0/l1;->l:I

    packed-switch v5, :pswitch_data_0

    const/4 v5, 0x2

    goto :goto_2

    :pswitch_0
    const/4 v5, 0x1

    :goto_2
    if-ne v5, v2, :cond_9

    invoke-virtual {p3, v4}, Lf8/m2;->h(I)Lf8/v2;

    move-result-object v3

    :cond_9
    :goto_3
    if-nez v3, :cond_b

    :cond_a
    move p3, v1

    move v1, v2

    goto :goto_4

    :cond_b
    invoke-virtual {v3}, Lf8/v2;->i()Lf8/x5;

    move-result-object p3

    iget p3, p3, Lf8/x5;->m:I

    if-ne v0, p3, :cond_c

    move p3, v1

    goto :goto_4

    :cond_c
    invoke-virtual {v3}, Lf8/v2;->l()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-virtual {v3}, Lf8/v2;->i()Lf8/x5;

    move-result-object p3

    invoke-virtual {p3}, Lf8/x5;->a()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-virtual {v3}, Lf8/v2;->i()Lf8/x5;

    const/4 p3, 0x2

    if-ne v0, p3, :cond_a

    move p3, v2

    :goto_4
    if-eqz v1, :cond_d

    invoke-virtual {p1, p5, p0}, Lf8/f5;->v(ILf8/k;)Z

    move-result p0

    return p0

    :cond_d
    const/4 p5, 0x3

    if-eqz p3, :cond_12

    invoke-virtual {p0}, Lf8/k;->l()I

    move-result p2

    invoke-virtual {p0, p2}, Lf8/k;->e(I)I

    move-result p2

    invoke-virtual {v3}, Lf8/v2;->i()Lf8/x5;

    move-result-object p3

    sget-object v0, Lf8/x5;->n:Lf8/x5;

    if-ne p3, v0, :cond_10

    :goto_5
    invoke-virtual {p0}, Lf8/k;->b()I

    move-result p3

    if-lez p3, :cond_11

    invoke-virtual {p0}, Lf8/k;->l()I

    move-result p3

    iget-object v0, v3, Lf8/v2;->o:Lf8/w2;

    invoke-virtual {v0}, Lf8/w2;->h()I

    move-result v0

    if-ne v0, p5, :cond_e

    invoke-virtual {v3}, Lf8/v2;->h()Lf8/r2;

    move-result-object v0

    invoke-virtual {v0, p3}, Lf8/r2;->g(I)Lf8/s2;

    move-result-object p3

    invoke-virtual {p4, v3, p3}, Lb0/l1;->g(Lf8/v2;Ljava/lang/Object;)Lb0/l1;

    goto :goto_5

    :cond_e
    invoke-virtual {v3}, Lf8/v2;->h()Lf8/r2;

    move-result-object v0

    invoke-virtual {v0, p3}, Lf8/r2;->f(I)Lf8/s2;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p1, v4, p3}, Lf8/f5;->z(II)V

    goto :goto_5

    :cond_f
    invoke-virtual {p4, v3, v0}, Lb0/l1;->g(Lf8/v2;Ljava/lang/Object;)Lb0/l1;

    goto :goto_5

    :cond_10
    :goto_6
    invoke-virtual {p0}, Lf8/k;->b()I

    move-result p1

    if-lez p1, :cond_11

    invoke-virtual {v3}, Lf8/v2;->i()Lf8/x5;

    move-result-object p1

    invoke-virtual {p4, v3}, Lb0/l1;->r(Lf8/v2;)I

    move-result p3

    invoke-static {p0, p1, p3}, Lf8/v4;->o(Lf8/k;Lf8/x5;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4, v3, p1}, Lb0/l1;->g(Lf8/v2;Ljava/lang/Object;)Lb0/l1;

    goto :goto_6

    :cond_11
    invoke-virtual {p0, p2}, Lf8/k;->d(I)V

    return v2

    :cond_12
    iget-object p3, v3, Lf8/v2;->r:Lf8/u2;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/16 v0, 0x9

    if-eq p3, v0, :cond_19

    const/16 v0, 0xa

    if-eq p3, v0, :cond_16

    const/16 p2, 0xd

    if-eq p3, p2, :cond_13

    invoke-virtual {v3}, Lf8/v2;->i()Lf8/x5;

    move-result-object p1

    invoke-virtual {p4, v3}, Lb0/l1;->r(Lf8/v2;)I

    move-result p2

    invoke-static {p0, p1, p2}, Lf8/v4;->o(Lf8/k;Lf8/x5;I)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_7

    :cond_13
    invoke-virtual {p0}, Lf8/k;->l()I

    move-result p0

    iget-object p2, v3, Lf8/v2;->o:Lf8/w2;

    invoke-virtual {p2}, Lf8/w2;->h()I

    move-result p2

    if-ne p2, p5, :cond_14

    invoke-virtual {v3}, Lf8/v2;->h()Lf8/r2;

    move-result-object p1

    invoke-virtual {p1, p0}, Lf8/r2;->g(I)Lf8/s2;

    move-result-object p0

    goto/16 :goto_7

    :cond_14
    invoke-virtual {v3}, Lf8/v2;->h()Lf8/r2;

    move-result-object p2

    invoke-virtual {p2, p0}, Lf8/r2;->f(I)Lf8/s2;

    move-result-object p2

    if-nez p2, :cond_15

    invoke-virtual {p1, v4, p0}, Lf8/f5;->z(II)V

    return v2

    :cond_15
    move-object p0, p2

    goto/16 :goto_7

    :cond_16
    iget p1, p4, Lb0/l1;->l:I

    packed-switch p1, :pswitch_data_1

    const/4 p0, 0x0

    throw p0

    :pswitch_1
    iget-object p1, p4, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p1, Lf8/a;

    invoke-virtual {p1, v3}, Lf8/a;->B(Lf8/v2;)Lf8/a;

    move-result-object p3

    invoke-virtual {v3}, Lf8/v2;->l()Z

    move-result p5

    if-nez p5, :cond_17

    invoke-interface {p1, v3}, Lf8/q4;->o(Lf8/v2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf8/c;

    if-eqz p1, :cond_17

    invoke-virtual {p3, p1}, Lf8/a;->x(Lf8/c;)Lf8/a;

    :cond_17
    invoke-virtual {p0}, Lf8/k;->l()I

    move-result p1

    iget p5, p0, Lf8/k;->a:I

    const/16 v0, 0x64

    if-ge p5, v0, :cond_18

    invoke-virtual {p0, p1}, Lf8/k;->e(I)I

    move-result p1

    iget p5, p0, Lf8/k;->a:I

    add-int/lit8 p5, p5, 0x1

    iput p5, p0, Lf8/k;->a:I

    invoke-interface {p3, p0, p2}, Lf8/n4;->k(Lf8/k;Lf8/h3;)Lf8/n4;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lf8/k;->a(I)V

    iget p2, p0, Lf8/k;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lf8/k;->a:I

    invoke-virtual {p0, p1}, Lf8/k;->d(I)V

    invoke-virtual {p3}, Lf8/a;->s()Lf8/c;

    move-result-object p0

    goto :goto_7

    :cond_18
    new-instance p0, Lf8/h4;

    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p0, p1}, Lf8/h4;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    iget p1, p4, Lb0/l1;->l:I

    packed-switch p1, :pswitch_data_2

    const/4 p0, 0x0

    throw p0

    :pswitch_2
    iget-object p1, p4, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p1, Lf8/a;

    invoke-virtual {p1, v3}, Lf8/a;->B(Lf8/v2;)Lf8/a;

    move-result-object p3

    invoke-virtual {v3}, Lf8/v2;->l()Z

    move-result p5

    if-nez p5, :cond_1a

    invoke-interface {p1, v3}, Lf8/q4;->o(Lf8/v2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf8/c;

    if-eqz p1, :cond_1a

    invoke-virtual {p3, p1}, Lf8/a;->x(Lf8/c;)Lf8/a;

    :cond_1a
    iget-object p1, v3, Lf8/v2;->m:Lf8/q0;

    iget p1, p1, Lf8/q0;->p:I

    invoke-virtual {p0, p1, p3, p2}, Lf8/k;->h(ILf8/n4;Lf8/h3;)V

    invoke-virtual {p3}, Lf8/a;->s()Lf8/c;

    move-result-object p0

    :goto_7
    invoke-virtual {v3}, Lf8/v2;->l()Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p4, v3, p0}, Lb0/l1;->g(Lf8/v2;Ljava/lang/Object;)Lb0/l1;

    return v2

    :cond_1b
    iget p1, p4, Lb0/l1;->l:I

    packed-switch p1, :pswitch_data_3

    iget-object p1, p4, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p1, Lf8/k3;

    invoke-virtual {p1, v3, p0}, Lf8/k3;->n(Lf8/j3;Ljava/lang/Object;)V

    goto :goto_8

    :pswitch_3
    iget-object p1, p4, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p1, Lf8/a;

    invoke-virtual {p1, v3, p0}, Lf8/a;->E(Lf8/v2;Ljava/lang/Object;)Lf8/a;

    :goto_8
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8
        :pswitch_3
    .end packed-switch
.end method

.method public static o(Lf8/k;Lf8/x5;I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lf8/k;->p()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lf8/k;->o()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lf8/k;->k()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lf8/k;->j()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle enums."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    invoke-virtual {p0}, Lf8/k;->l()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lf8/k;->g()Lf8/j;

    move-result-object p0

    return-object p0

    :pswitch_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_9
    const/4 p1, 0x1

    if-eq p2, p1, :cond_4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    invoke-virtual {p0}, Lf8/k;->g()Lf8/j;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lf8/k;->l()I

    move-result p1

    if-lez p1, :cond_1

    iget p2, p0, Lf8/k;->c:I

    iget v0, p0, Lf8/k;->e:I

    sub-int/2addr p2, v0

    if-gt p1, p2, :cond_1

    iget-object p2, p0, Lf8/k;->b:[B

    sget-object v1, Lf8/s5;->a:Lf8/v4;

    invoke-virtual {v1, p2, v0, p1}, Lf8/v4;->h([BII)Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lf8/k;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lf8/k;->e:I

    :goto_0
    move-object p0, p2

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const-string p0, ""

    goto :goto_1

    :cond_2
    if-gtz p1, :cond_3

    new-instance p0, Lf8/h4;

    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, p1}, Lf8/h4;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {}, Lf8/h4;->b()Lf8/h4;

    move-result-object p0

    throw p0

    :cond_4
    invoke-virtual {p0}, Lf8/k;->l()I

    move-result p1

    if-lez p1, :cond_5

    iget p2, p0, Lf8/k;->c:I

    iget v0, p0, Lf8/k;->e:I

    sub-int/2addr p2, v0

    if-gt p1, p2, :cond_5

    new-instance p2, Ljava/lang/String;

    iget-object v1, p0, Lf8/k;->b:[B

    sget-object v2, Lf8/f4;->a:Ljava/nio/charset/Charset;

    invoke-direct {p2, v1, v0, p1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v0, p0, Lf8/k;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lf8/k;->e:I

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    const-string p0, ""

    :goto_1
    return-object p0

    :cond_6
    if-gez p1, :cond_7

    new-instance p0, Lf8/h4;

    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, p1}, Lf8/h4;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-static {}, Lf8/h4;->b()Lf8/h4;

    move-result-object p0

    throw p0

    :pswitch_a
    invoke-virtual {p0}, Lf8/k;->f()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0}, Lf8/k;->j()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0}, Lf8/k;->k()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0}, Lf8/k;->l()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0}, Lf8/k;->m()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0}, Lf8/k;->m()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0}, Lf8/k;->j()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0}, Lf8/k;->k()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static p(Ljava/lang/String;Lf8/v2;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p1, Lf8/v2;->m:Lf8/q0;

    invoke-virtual {p0}, Lf8/q0;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p0, 0x28

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lf8/v2;->n:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf8/q0;->y()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 p0, -0x1

    if-eq p2, p0, :cond_1

    const/16 p0, 0x5b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/16 p0, 0x2e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract e(Ljava/lang/Iterable;)V
.end method

.method public abstract f(Lf8/c;)V
.end method

.method public abstract g()Ljava/util/List;
.end method

.method public abstract h([BII)Ljava/lang/String;
.end method

.method public abstract n([BII)I
.end method
