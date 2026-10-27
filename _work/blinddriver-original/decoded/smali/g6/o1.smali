.class public final Lg6/o1;
.super Lg6/f1;
.source "SourceFile"

# interfaces
.implements Le6/k;


# static fields
.field public static final s:[Ljava/lang/String;

.field public static final t:Lg6/o1;


# instance fields
.field public final o:Lb6/n;

.field public final p:Le6/r;

.field public final q:Ljava/lang/Boolean;

.field public final r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lg6/o1;->s:[Ljava/lang/String;

    new-instance v0, Lg6/o1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lg6/o1;-><init>(Lb6/n;Le6/r;Ljava/lang/Boolean;)V

    sput-object v0, Lg6/o1;->t:Lg6/o1;

    return-void
.end method

.method public constructor <init>(Lb6/n;Le6/r;Ljava/lang/Boolean;)V
    .locals 1

    const-class v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lg6/f1;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lg6/o1;->o:Lb6/n;

    iput-object p2, p0, Lg6/o1;->p:Le6/r;

    iput-object p3, p0, Lg6/o1;->q:Ljava/lang/Boolean;

    invoke-static {p2}, Lf6/q;->a(Le6/r;)Z

    move-result p1

    iput-boolean p1, p0, Lg6/o1;->r:Z

    return-void
.end method


# virtual methods
.method public final Z(Ls5/k;Lb6/i;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const-class v0, Ljava/lang/String;

    invoke-virtual {p2}, Lb6/i;->q0()Lf6/v;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p3, :cond_0

    invoke-virtual {v1}, Lf6/v;->l()[Ljava/lang/Object;

    move-result-object p3

    move v3, v2

    goto :goto_0

    :cond_0
    array-length v3, p3

    invoke-virtual {v1, v3, p3}, Lf6/v;->m(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ls5/k;->y0()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v5, p0, Lg6/o1;->r:Z

    iget-object v6, p0, Lg6/o1;->o:Lb6/n;

    if-nez v4, :cond_4

    :try_start_1
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v4

    sget-object v7, Ls5/n;->x:Ls5/n;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v4, v7, :cond_1

    invoke-virtual {v1, p3, v3, v0}, Lf6/v;->g([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {p2, v1}, Lb6/i;->C0(Lf6/v;)V

    return-object p0

    :cond_1
    :try_start_2
    sget-object v7, Ls5/n;->F:Ls5/n;

    if-ne v4, v7, :cond_3

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v6, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_4
    invoke-virtual {v6, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_1
    if-nez v4, :cond_5

    iget-object v4, p0, Lg6/o1;->p:Le6/r;

    invoke-interface {v4, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_5

    if-eqz v5, :cond_5

    goto :goto_0

    :cond_5
    array-length v5, p3

    if-lt v3, v5, :cond_6

    invoke-virtual {v1, p3}, Lf6/v;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v3, v2

    :cond_6
    add-int/lit8 v5, v3, 0x1

    :try_start_3
    aput-object v4, p3, v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v3, v5

    goto :goto_0

    :catch_1
    move-exception p0

    move v3, v5

    :goto_2
    invoke-static {p0, v0, v3}, Lb6/p;->j(Ljava/lang/Throwable;Ljava/lang/Object;I)Lb6/p;

    move-result-object p0

    throw p0
.end method

.method public final a(Lb6/i;Lb6/f;)Lb6/n;
    .locals 5

    iget-object v0, p0, Lg6/o1;->o:Lb6/n;

    invoke-static {p1, p2, v0}, Lg6/f1;->S(Lb6/i;Lb6/f;Lb6/n;)Lb6/n;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lb6/i;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object v2

    if-nez v1, :cond_0

    invoke-virtual {p1, v2, p2}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1, p2, v2}, Lb6/i;->e0(Lb6/n;Lb6/f;Lb6/l;)Lb6/n;

    move-result-object v1

    :goto_0
    const-class v2, [Ljava/lang/String;

    invoke-static {p1, p2, v2}, Lg6/f1;->T(Lb6/i;Lb6/f;Ljava/lang/Class;)Lr5/q;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget-object v4, Lr5/n;->l:Lr5/n;

    invoke-virtual {v2, v4}, Lr5/q;->b(Lr5/n;)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-static {p1, p2, v1}, Lg6/f1;->R(Lb6/i;Lb6/f;Lb6/n;)Le6/r;

    move-result-object p1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lu6/h;->v(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move-object v1, v3

    :cond_2
    if-ne v0, v1, :cond_3

    iget-object p2, p0, Lg6/o1;->q:Ljava/lang/Boolean;

    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lg6/o1;->p:Le6/r;

    if-ne p2, p1, :cond_3

    return-object p0

    :cond_3
    new-instance p0, Lg6/o1;

    invoke-direct {p0, v1, p1, v2}, Lg6/o1;-><init>(Lb6/n;Le6/r;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public final a0(Ls5/k;Lb6/i;)[Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lg6/f1;->l:Ljava/lang/Class;

    iget-object v2, p0, Lg6/o1;->q:Ljava/lang/Boolean;

    if-eq v2, v0, :cond_2

    if-nez v2, :cond_0

    sget-object v0, Lb6/j;->E:Lb6/j;

    invoke-virtual {p2, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ls5/n;->A:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lg6/f1;->s(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-virtual {p2, v1, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_0
    sget-object v0, Ls5/n;->F:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    iget-object v2, p0, Lg6/o1;->p:Le6/r;

    if-eqz v0, :cond_3

    invoke-interface {v2, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object v0, Ls5/n;->A:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    sget-object v5, Lt6/f;->l:Lt6/f;

    if-eqz v3, :cond_4

    const/16 v0, 0xa

    invoke-virtual {p2, v5, v1, v0}, Lb6/i;->R(Lt6/f;Ljava/lang/Class;I)I

    move-result v0

    if-eq v0, v4, :cond_5

    invoke-virtual {p0, p2, v0, v1}, Lg6/f1;->r(Lb6/i;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_4
    invoke-static {v0}, Lg6/f1;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2, v5, v1}, Lb6/i;->S(Lt6/f;Ljava/lang/Class;)I

    move-result v0

    if-eq v0, v4, :cond_5

    invoke-virtual {p0, p2, v0, v1}, Lg6/f1;->r(Lb6/i;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_5
    invoke-virtual {p0, p1, p2, v2}, Lg6/f1;->M(Ls5/k;Lb6/i;Le6/r;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 9

    .line 27
    invoke-virtual {p1}, Ls5/k;->u0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0, p1, p2}, Lg6/o1;->a0(Ls5/k;Lb6/i;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 29
    :cond_0
    iget-object v0, p0, Lg6/o1;->o:Lb6/n;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, p1, p2, v0}, Lg6/o1;->Z(Ls5/k;Lb6/i;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 31
    :cond_1
    invoke-virtual {p2}, Lb6/i;->q0()Lf6/v;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lf6/v;->l()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 33
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ls5/k;->y0()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 34
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v5

    .line 35
    sget-object v6, Ls5/n;->x:Ls5/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v6, :cond_2

    .line 36
    const-class p0, Ljava/lang/String;

    invoke-virtual {v0, v1, v3, p0}, Lf6/v;->g([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 37
    invoke-virtual {p2, v0}, Lb6/i;->C0(Lf6/v;)V

    return-object p0

    .line 38
    :cond_2
    :try_start_1
    sget-object v6, Ls5/n;->F:Ls5/n;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v7, p0, Lg6/o1;->p:Le6/r;

    iget-boolean v8, p0, Lg6/o1;->r:Z

    if-ne v5, v6, :cond_3

    if-eqz v8, :cond_4

    goto :goto_0

    .line 39
    :cond_3
    :try_start_2
    invoke-virtual {p0, p1, p2, v7}, Lg6/f1;->M(Ls5/k;Lb6/i;Le6/r;)Ljava/lang/String;

    move-result-object v4

    :cond_4
    if-nez v4, :cond_5

    .line 40
    invoke-interface {v7, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_5

    if-eqz v8, :cond_5

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 41
    :cond_5
    array-length v5, v1

    if-lt v3, v5, :cond_6

    .line 42
    invoke-virtual {v0, v1}, Lf6/v;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v3, v2

    :cond_6
    add-int/lit8 v5, v3, 0x1

    .line 43
    :try_start_3
    aput-object v4, v1, v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v3, v5

    goto :goto_0

    :catch_1
    move-exception p0

    move v3, v5

    .line 44
    :goto_1
    iget p1, v0, Lf6/v;->a:I

    add-int/2addr p1, v3

    .line 45
    invoke-static {p0, v1, p1}, Lb6/p;->j(Ljava/lang/Throwable;Ljava/lang/Object;I)Lb6/p;

    move-result-object p0

    throw p0
.end method

.method public final deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p3, [Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ls5/k;->u0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0, p1, p2}, Lg6/o1;->a0(Ls5/k;Lb6/i;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p3

    .line 4
    :cond_0
    array-length p1, p3

    .line 5
    array-length p2, p0

    add-int/2addr p2, p1

    new-array p2, p2, [Ljava/lang/String;

    .line 6
    invoke-static {p3, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    array-length p3, p0

    invoke-static {p0, v1, p2, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 8
    :cond_1
    iget-object v0, p0, Lg6/o1;->o:Lb6/n;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lg6/o1;->Z(Ls5/k;Lb6/i;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_2
    invoke-virtual {p2}, Lb6/i;->q0()Lf6/v;

    move-result-object v0

    .line 11
    array-length v2, p3

    .line 12
    invoke-virtual {v0, v2, p3}, Lf6/v;->m(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    .line 13
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ls5/k;->y0()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    .line 14
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v4

    .line 15
    sget-object v5, Ls5/n;->x:Ls5/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_3

    .line 16
    const-class p0, Ljava/lang/String;

    invoke-virtual {v0, p3, v2, p0}, Lf6/v;->g([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 17
    invoke-virtual {p2, v0}, Lb6/i;->C0(Lf6/v;)V

    return-object p0

    .line 18
    :cond_3
    :try_start_1
    sget-object v5, Ls5/n;->F:Ls5/n;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v6, p0, Lg6/o1;->p:Le6/r;

    iget-boolean v7, p0, Lg6/o1;->r:Z

    if-ne v4, v5, :cond_4

    if-eqz v7, :cond_5

    .line 19
    :try_start_2
    sget-object p0, Lg6/o1;->s:[Ljava/lang/String;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 20
    :cond_4
    invoke-virtual {p0, p1, p2, v6}, Lg6/f1;->M(Ls5/k;Lb6/i;Le6/r;)Ljava/lang/String;

    move-result-object v3

    :cond_5
    if-nez v3, :cond_6

    .line 21
    invoke-interface {v6, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_6

    if-eqz v7, :cond_6

    goto :goto_0

    .line 22
    :cond_6
    array-length v4, p3

    if-lt v2, v4, :cond_7

    .line 23
    invoke-virtual {v0, p3}, Lf6/v;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v2, v1

    :cond_7
    add-int/lit8 v4, v2, 0x1

    .line 24
    :try_start_3
    aput-object v3, p3, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v2, v4

    goto :goto_0

    :catch_1
    move-exception p0

    move v2, v4

    .line 25
    :goto_1
    iget p1, v0, Lf6/v;->a:I

    add-int/2addr p1, v2

    .line 26
    invoke-static {p0, p3, p1}, Lb6/p;->j(Ljava/lang/Throwable;Ljava/lang/Object;I)Lb6/p;

    move-result-object p0

    throw p0
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p3, p1, p2}, Ln6/d;->c(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getEmptyAccessPattern()Lu6/a;
    .locals 0

    sget-object p0, Lu6/a;->m:Lu6/a;

    return-object p0
.end method

.method public final getEmptyValue(Lb6/i;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lg6/o1;->s:[Ljava/lang/String;

    return-object p0
.end method

.method public final logicalType()Lt6/f;
    .locals 0

    sget-object p0, Lt6/f;->l:Lt6/f;

    return-object p0
.end method

.method public final supportsUpdate(Lb6/h;)Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method
