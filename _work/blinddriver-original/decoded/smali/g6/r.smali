.class public final Lg6/r;
.super Lg6/f1;
.source "SourceFile"

# interfaces
.implements Le6/k;


# instance fields
.field public final o:Lb6/l;

.field public final p:Lj6/i;

.field public final q:Lb6/n;

.field public final r:Lg6/n1;

.field public final s:[Le6/y;

.field public final t:Ljava/lang/Enum;

.field public final u:Z

.field public volatile transient v:Lf6/v;


# direct methods
.method public constructor <init>(Lg6/r;Lb6/n;)V
    .locals 1

    .line 18
    iget-object v0, p1, Lg6/f1;->l:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lg6/f1;-><init>(Ljava/lang/Class;)V

    .line 19
    iget-object v0, p1, Lg6/r;->o:Lb6/l;

    iput-object v0, p0, Lg6/r;->o:Lb6/l;

    .line 20
    iget-object v0, p1, Lg6/r;->p:Lj6/i;

    iput-object v0, p0, Lg6/r;->p:Lj6/i;

    .line 21
    iget-boolean v0, p1, Lg6/r;->u:Z

    iput-boolean v0, p0, Lg6/r;->u:Z

    .line 22
    iget-object v0, p1, Lg6/r;->r:Lg6/n1;

    iput-object v0, p0, Lg6/r;->r:Lg6/n1;

    .line 23
    iget-object v0, p1, Lg6/r;->s:[Le6/y;

    iput-object v0, p0, Lg6/r;->s:[Le6/y;

    .line 24
    iget-object p1, p1, Lg6/r;->t:Ljava/lang/Enum;

    iput-object p1, p0, Lg6/r;->t:Ljava/lang/Enum;

    .line 25
    iput-object p2, p0, Lg6/r;->q:Lb6/n;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lj6/i;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lg6/f1;-><init>(Ljava/lang/Class;)V

    .line 11
    iput-object p2, p0, Lg6/r;->p:Lj6/i;

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lg6/r;->u:Z

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lg6/r;->o:Lb6/l;

    .line 14
    iput-object p1, p0, Lg6/r;->q:Lb6/n;

    .line 15
    iput-object p1, p0, Lg6/r;->r:Lg6/n1;

    .line 16
    iput-object p1, p0, Lg6/r;->s:[Le6/y;

    .line 17
    iput-object p1, p0, Lg6/r;->t:Ljava/lang/Enum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lj6/i;Lb6/l;Lg6/n1;[Le6/y;Lu6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg6/f1;-><init>(Ljava/lang/Class;)V

    .line 2
    iput-object p2, p0, Lg6/r;->p:Lj6/i;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lg6/r;->u:Z

    .line 4
    const-class p1, Ljava/lang/String;

    invoke-virtual {p3, p1}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const-class p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move-object p3, p2

    :cond_1
    iput-object p3, p0, Lg6/r;->o:Lb6/l;

    .line 5
    iput-object p2, p0, Lg6/r;->q:Lb6/n;

    .line 6
    iput-object p4, p0, Lg6/r;->r:Lg6/n1;

    .line 7
    iput-object p5, p0, Lg6/r;->s:[Le6/y;

    .line 8
    iget-object p1, p6, Lu6/l;->o:Ljava/lang/Enum;

    .line 9
    iput-object p1, p0, Lg6/r;->t:Ljava/lang/Enum;

    return-void
.end method


# virtual methods
.method public final U()Le6/c0;
    .locals 0

    iget-object p0, p0, Lg6/r;->r:Lg6/n1;

    return-object p0
.end method

.method public final a(Lb6/i;Lb6/f;)Lb6/n;
    .locals 2

    iget-object v0, p0, Lg6/r;->q:Lb6/n;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg6/r;->o:Lb6/l;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg6/r;->s:[Le6/y;

    if-nez v1, :cond_0

    new-instance v1, Lg6/r;

    invoke-virtual {p1, v0, p2}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lg6/r;-><init>(Lg6/r;Lb6/n;)V

    return-object v1

    :cond_0
    return-object p0
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lg6/r;->q:Lb6/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_8

    :cond_0
    iget-boolean v0, p0, Lg6/r;->u:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lg6/r;->s:[Le6/y;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Ls5/k;->v0()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lg6/r;->v:Lf6/v;

    if-nez v0, :cond_1

    iget-object v0, p0, Lg6/r;->r:Lg6/n1;

    iget-object v4, p0, Lg6/r;->s:[Le6/y;

    sget-object v5, Lb6/x;->L:Lb6/x;

    iget-object v6, p2, Lb6/i;->q:Lb6/h;

    invoke-virtual {v6, v5}, Ld6/m;->m(Lb6/x;)Z

    move-result v5

    invoke-static {p2, v0, v4, v5}, Lf6/v;->h(Lb6/i;Le6/c0;[Le6/y;Z)Lf6/v;

    move-result-object v0

    iput-object v0, p0, Lg6/r;->v:Lf6/v;

    :cond_1
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    invoke-virtual {v0, p1, p2, v1}, Lf6/v;->x(Ls5/k;Lb6/i;Lf6/r;)Lf6/z;

    move-result-object v1

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v4

    :goto_0
    sget-object v5, Ls5/n;->y:Ls5/n;

    if-ne v4, v5, :cond_9

    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    invoke-virtual {v0, v4}, Lf6/v;->i(Ljava/lang/String;)Le6/y;

    move-result-object v5

    invoke-virtual {v1, v4}, Lf6/z;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v5, :cond_8

    :try_start_0
    invoke-virtual {v5, p1, p2}, Le6/y;->j(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, v5, v4}, Lf6/z;->b(Le6/y;Ljava/lang/Object;)Z

    goto :goto_3

    :catch_0
    move-exception p1

    iget-object p0, p0, Lg6/f1;->l:Ljava/lang/Class;

    iget-object v0, v5, Le6/y;->n:Lb6/i0;

    iget-object v0, v0, Lb6/i0;->l:Ljava/lang/String;

    invoke-static {p1}, Lu6/h;->q(Ljava/lang/Exception;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lu6/h;->C(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_4

    sget-object v1, Lb6/j;->D:Lb6/j;

    invoke-virtual {p2, v1}, Lb6/i;->n0(Lb6/j;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :cond_4
    :goto_1
    instance-of p2, p1, Ljava/io/IOException;

    if-eqz p2, :cond_6

    if-eqz v2, :cond_5

    instance-of p2, p1, Ls5/l;

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_6
    if-nez v2, :cond_7

    invoke-static {p1}, Lu6/h;->E(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    sget p2, Lb6/p;->o:I

    new-instance p2, Lb6/o;

    invoke-direct {p2, p0, v0}, Lb6/o;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lb6/p;->i(Ljava/lang/Throwable;Lb6/o;)Lb6/p;

    move-result-object p0

    throw p0

    :cond_8
    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    :goto_3
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v4

    goto :goto_0

    :cond_9
    invoke-virtual {v0, p2, v1}, Lf6/v;->f(Lb6/i;Lf6/z;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_a
    iget-object v0, p0, Lg6/r;->r:Lg6/n1;

    invoke-virtual {v0}, Lg6/n1;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object v0

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object p1

    invoke-static {v0}, Lu6/h;->r(Lb6/l;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lg6/r;->p:Lj6/i;

    invoke-static {p1}, Ls5/n;->a(Ls5/n;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p0, v2, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Input mismatch reading Enum %s: properties-based `@JsonCreator` (%s) expects Object Value, got %s (`JsonToken.%s`)"

    invoke-virtual {p2, p1, p0}, Lb6/i;->x0(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_c
    :goto_4
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    sget-object v4, Ls5/n;->w:Ls5/n;

    if-ne v0, v4, :cond_d

    sget-object v4, Lb6/j;->F:Lb6/j;

    invoke-virtual {p2, v4}, Lb6/i;->n0(Lb6/j;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_5

    :cond_d
    move v2, v3

    :goto_5
    if-eqz v2, :cond_e

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    :cond_e
    sget-object v3, Ls5/n;->u:Ls5/n;

    if-ne v0, v3, :cond_f

    iget-object v0, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-virtual {p2, v0, p1}, Lb6/i;->Q(Ljava/lang/Class;Ls5/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_f
    if-eqz v0, :cond_14

    iget-boolean v3, v0, Ls5/n;->s:Z

    if-eqz v3, :cond_14

    invoke-virtual {p1}, Ls5/k;->o0()Ljava/lang/String;

    move-result-object v0

    :goto_6
    if-eqz v2, :cond_11

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object p1

    sget-object v2, Ls5/n;->x:Ls5/n;

    if-ne p1, v2, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {p0, p2}, Lg6/f1;->X(Lb6/i;)V

    throw v1

    :cond_11
    :goto_7
    move-object p1, v0

    :goto_8
    :try_start_1
    iget-object v0, p0, Lg6/r;->p:Lj6/i;

    iget-object v2, p0, Lg6/f1;->l:Ljava/lang/Class;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iget-object v0, v0, Lj6/i;->o:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p1

    invoke-static {p1}, Lu6/h;->q(Ljava/lang/Exception;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lu6/h;->D(Ljava/lang/Throwable;)V

    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_13

    sget-object v0, Lb6/j;->M:Lb6/j;

    invoke-virtual {p2, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lg6/r;->t:Ljava/lang/Enum;

    if-eqz v0, :cond_12

    return-object v0

    :cond_12
    sget-object v0, Lb6/j;->L:Lb6/j;

    invoke-virtual {p2, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-object v1

    :cond_13
    iget-object p0, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-virtual {p2, p0, p1}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v1

    :cond_14
    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object p1

    invoke-static {p1}, Lu6/h;->r(Lb6/l;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lg6/r;->p:Lj6/i;

    invoke-static {v0}, Ls5/n;->a(Ls5/n;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, p0, v2, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Input mismatch reading Enum %s: properties-based `@JsonCreator` (%s) expects String Value, got %s (`JsonToken.%s`)"

    invoke-virtual {p2, p1, p0}, Lb6/i;->x0(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_15
    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    :try_start_2
    iget-object p1, p0, Lg6/r;->p:Lj6/i;

    invoke-virtual {p1}, Lj6/i;->q()Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p1

    invoke-static {p1}, Lu6/h;->q(Ljava/lang/Exception;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lu6/h;->D(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-virtual {p2, p0, p1}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p3, p1, p2}, Ln6/d;->b(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final isCachable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final logicalType()Lt6/f;
    .locals 0

    sget-object p0, Lt6/f;->t:Lt6/f;

    return-object p0
.end method

.method public final supportsUpdate(Lb6/h;)Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
