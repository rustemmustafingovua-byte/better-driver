.class public final Lg6/o;
.super Lg6/m1;
.source "SourceFile"

# interfaces
.implements Le6/k;


# static fields
.field public static final synthetic x:I


# instance fields
.field public final o:[Ljava/lang/Object;

.field public final p:Ljava/lang/Enum;

.field public final q:Lu6/i;

.field public volatile r:Lu6/i;

.field public final s:Ljava/lang/Boolean;

.field public final t:Ljava/lang/Boolean;

.field public final u:Ljava/lang/Boolean;

.field public final v:Z

.field public final w:Lu6/i;


# direct methods
.method public constructor <init>(Lg6/o;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lg6/f1;-><init>(Lg6/f1;)V

    .line 2
    iget-object v0, p1, Lg6/o;->q:Lu6/i;

    iput-object v0, p0, Lg6/o;->q:Lu6/i;

    .line 3
    iget-object v0, p1, Lg6/o;->o:[Ljava/lang/Object;

    iput-object v0, p0, Lg6/o;->o:[Ljava/lang/Object;

    .line 4
    iget-object v0, p1, Lg6/o;->p:Ljava/lang/Enum;

    iput-object v0, p0, Lg6/o;->p:Ljava/lang/Enum;

    .line 5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lg6/o;->s:Ljava/lang/Boolean;

    .line 6
    iget-boolean p2, p1, Lg6/o;->v:Z

    iput-boolean p2, p0, Lg6/o;->v:Z

    .line 7
    iput-object p3, p0, Lg6/o;->t:Ljava/lang/Boolean;

    .line 8
    iput-object p4, p0, Lg6/o;->u:Ljava/lang/Boolean;

    .line 9
    iget-object p2, p1, Lg6/o;->w:Lu6/i;

    iput-object p2, p0, Lg6/o;->w:Lu6/i;

    .line 10
    iget-object p1, p1, Lg6/o;->r:Lu6/i;

    iput-object p1, p0, Lg6/o;->r:Lu6/i;

    return-void
.end method

.method public constructor <init>(Lu6/l;ZLu6/l;)V
    .locals 1

    .line 11
    iget-object v0, p1, Lu6/l;->l:Ljava/lang/Class;

    .line 12
    invoke-direct {p0, v0}, Lg6/f1;-><init>(Ljava/lang/Class;)V

    .line 13
    invoke-virtual {p1}, Lu6/l;->b()Lu6/i;

    move-result-object v0

    iput-object v0, p0, Lg6/o;->q:Lu6/i;

    .line 14
    iget-object v0, p1, Lu6/l;->m:[Ljava/lang/Enum;

    .line 15
    iput-object v0, p0, Lg6/o;->o:[Ljava/lang/Object;

    .line 16
    iget-object v0, p1, Lu6/l;->o:Ljava/lang/Enum;

    .line 17
    iput-object v0, p0, Lg6/o;->p:Ljava/lang/Enum;

    .line 18
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lg6/o;->s:Ljava/lang/Boolean;

    .line 19
    iget-boolean p1, p1, Lu6/l;->q:Z

    .line 20
    iput-boolean p1, p0, Lg6/o;->v:Z

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lg6/o;->w:Lu6/i;

    .line 22
    invoke-virtual {p3}, Lu6/l;->b()Lu6/i;

    move-result-object p1

    iput-object p1, p0, Lg6/o;->r:Lu6/i;

    return-void
.end method


# virtual methods
.method public final Z(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lg6/o;->w:Lu6/i;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lb6/j;->K:Lb6/j;

    invoke-virtual {p1, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg6/o;->r:Lu6/i;

    if-nez v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg6/o;->r:Lu6/i;

    if-nez v0, :cond_1

    iget-object v0, p1, Lb6/i;->q:Lb6/h;

    iget-object v1, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-static {v0, v1}, Lu6/l;->d(Lb6/h;Ljava/lang/Class;)Lu6/l;

    move-result-object v0

    invoke-virtual {v0}, Lu6/l;->b()Lu6/i;

    move-result-object v0

    iput-object v0, p0, Lg6/o;->r:Lu6/i;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    iget-object v0, p0, Lg6/o;->q:Lu6/i;

    :cond_3
    :goto_2
    invoke-virtual {v0, p2}, Lu6/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_17

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eq v1, p2, :cond_5

    invoke-virtual {v0, v1}, Lu6/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    return-object p2

    :cond_5
    :goto_3
    iget-object p2, p0, Lg6/f1;->l:Ljava/lang/Class;

    sget-object v2, Lt6/f;->t:Lt6/f;

    iget-object v3, p0, Lg6/o;->p:Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_b

    invoke-virtual {p0, p1}, Lg6/o;->a0(Lb6/i;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_7

    :cond_6
    iget-object p2, p0, Lg6/o;->u:Ljava/lang/Boolean;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_4

    :cond_7
    sget-object p2, Lb6/j;->L:Lb6/j;

    invoke-virtual {p1, p2}, Lb6/i;->n0(Lb6/j;)Z

    move-result p2

    :goto_4
    if-eqz p2, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lg6/f1;->l:Ljava/lang/Class;

    const/16 v0, 0xa

    invoke-virtual {p1, v2, p2, v0}, Lb6/i;->R(Lt6/f;Ljava/lang/Class;I)I

    move-result p2

    iget-object p0, p0, Lg6/f1;->l:Ljava/lang/Class;

    const-string v0, "empty String (\"\")"

    invoke-static {p1, p2, p0, v1, v0}, Lg6/f1;->d(Lb6/i;ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    iget-object p2, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-virtual {p1, v2, p2}, Lb6/i;->S(Lt6/f;Ljava/lang/Class;)I

    move-result p2

    iget-object p0, p0, Lg6/f1;->l:Ljava/lang/Class;

    const-string v0, "blank String (all whitespace)"

    invoke-static {p1, p2, p0, v1, v0}, Lg6/f1;->d(Lb6/i;ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    invoke-static {p2}, Landroidx/fragment/app/t1;->d(I)I

    move-result p0

    if-eq p0, v7, :cond_a

    const/4 p1, 0x3

    if-eq p0, p1, :cond_a

    :goto_6
    return-object v6

    :cond_a
    :goto_7
    return-object v3

    :cond_b
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lg6/o;->s:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    iget-object v1, v0, Lu6/i;->n:[Ljava/lang/Object;

    array-length v5, v1

    move v8, v2

    :goto_8
    if-ge v8, v5, :cond_d

    aget-object v9, v1, v8

    if-eqz v9, :cond_c

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    add-int/2addr v8, v7

    aget-object v1, v1, v8

    goto :goto_9

    :cond_c
    add-int/lit8 v8, v8, 0x2

    goto :goto_8

    :cond_d
    move-object v1, v6

    :goto_9
    if-eqz v1, :cond_e

    return-object v1

    :cond_e
    sget-object v1, Lb6/j;->t:Lb6/j;

    invoke-virtual {p1, v1}, Lb6/i;->n0(Lb6/j;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lg6/o;->v:Z

    if-nez v1, :cond_11

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x30

    if-lt v1, v5, :cond_11

    const/16 v8, 0x39

    if-gt v1, v8, :cond_11

    if-ne v1, v5, :cond_f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_f

    goto :goto_a

    :cond_f
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget-object v5, Lb6/x;->S:Lb6/x;

    iget-object v7, p1, Lb6/i;->q:Lb6/h;

    invoke-virtual {v7, v5}, Ld6/m;->m(Lb6/x;)Z

    move-result v5

    if-eqz v5, :cond_10

    if-ltz v1, :cond_11

    iget-object v5, p0, Lg6/o;->o:[Ljava/lang/Object;

    array-length v7, v5

    if-ge v1, v7, :cond_11

    aget-object p0, v5, v1

    return-object p0

    :cond_10
    const-string v1, "value looks like quoted Enum index, but `MapperFeature.ALLOW_COERCION_OF_SCALARS` prevents use"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v4, v1, v5}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_11
    :goto_a
    invoke-virtual {p0, p1}, Lg6/o;->a0(Lb6/i;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_c

    :cond_12
    iget-object p0, p0, Lg6/o;->u:Ljava/lang/Boolean;

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_b

    :cond_13
    sget-object p0, Lb6/j;->L:Lb6/j;

    invoke-virtual {p1, p0}, Lb6/i;->n0(Lb6/j;)Z

    move-result p0

    :goto_b
    if-eqz p0, :cond_14

    move-object v3, v6

    :goto_c
    return-object v3

    :cond_14
    const-string p0, "not one of the values accepted for Enum class: %s"

    iget-object v0, v0, Lu6/i;->n:[Ljava/lang/Object;

    array-length v1, v0

    new-instance v3, Ljava/util/ArrayList;

    shr-int/lit8 v5, v1, 0x2

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    :goto_d
    if-ge v2, v1, :cond_16

    aget-object v5, v0, v2

    if-eqz v5, :cond_15

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    add-int/lit8 v2, v2, 0x2

    goto :goto_d

    :cond_16
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v4, p0, v0}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    :cond_17
    return-object v1
.end method

.method public final a(Lb6/i;Lb6/f;)Lb6/n;
    .locals 6

    iget-object v0, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-static {p1, p2, v0}, Lg6/f1;->T(Lb6/i;Lb6/f;Ljava/lang/Class;)Lr5/q;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v3, Lr5/n;->m:Lr5/n;

    invoke-virtual {v1, v3}, Lr5/q;->b(Lr5/n;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iget-object v3, p0, Lg6/o;->s:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {p1, p2, v0}, Lg6/f1;->T(Lb6/i;Lb6/f;Ljava/lang/Class;)Lr5/q;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v5, Lr5/n;->o:Lr5/n;

    invoke-virtual {v4, v5}, Lr5/q;->b(Lr5/n;)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    iget-object v5, p0, Lg6/o;->t:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-static {p1, p2, v0}, Lg6/f1;->T(Lb6/i;Lb6/f;Ljava/lang/Class;)Lr5/q;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p2, Lr5/n;->n:Lr5/n;

    invoke-virtual {p1, p2}, Lr5/q;->b(Lr5/n;)Ljava/lang/Boolean;

    move-result-object v2

    :cond_2
    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iget-object p2, p0, Lg6/o;->u:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-object p0

    :cond_3
    new-instance p2, Lg6/o;

    invoke-direct {p2, p0, v1, v4, p1}, Lg6/o;-><init>(Lg6/o;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object p2
.end method

.method public final a0(Lb6/i;)Z
    .locals 1

    iget-object v0, p0, Lg6/o;->p:Ljava/lang/Enum;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lg6/o;->t:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lb6/j;->M:Lb6/j;

    invoke-virtual {p1, p0}, Lb6/i;->n0(Lb6/j;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls5/n;->A:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lg6/o;->Z(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Ls5/n;->B:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    iget-object v1, p0, Lg6/f1;->l:Ljava/lang/Class;

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lg6/o;->v:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lg6/o;->Z(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ls5/k;->X()I

    move-result p1

    sget-object v0, Lt6/f;->t:Lt6/f;

    const/4 v3, 0x3

    invoke-virtual {p2, v0, v1, v3}, Lb6/i;->R(Lt6/f;Ljava/lang/Class;I)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    sget-object v5, Lb6/j;->t:Lb6/j;

    invoke-virtual {p2, v5}, Lb6/i;->n0(Lb6/j;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Integer value ("

    const-string v7, ")"

    invoke-static {p1, v6, v7}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v0, v1, v5, v6}, Lg6/f1;->d(Lb6/i;ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "not allowed to deserialize Enum value out of number: disable DeserializationConfig.DeserializationFeature.FAIL_ON_NUMBERS_FOR_ENUMS to allow"

    invoke-virtual {p2, v1, p0, v0, p1}, Lb6/i;->j0(Ljava/lang/Class;Ljava/lang/Number;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_3
    :goto_0
    invoke-static {v0}, Landroidx/fragment/app/t1;->d(I)I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_9

    if-eq v0, v3, :cond_8

    iget-object v0, p0, Lg6/o;->o:[Ljava/lang/Object;

    if-ltz p1, :cond_4

    array-length v3, v0

    if-ge p1, v3, :cond_4

    aget-object p0, v0, p1

    return-object p0

    :cond_4
    invoke-virtual {p0, p2}, Lg6/o;->a0(Lb6/i;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lg6/o;->u:Ljava/lang/Boolean;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_6
    sget-object p0, Lb6/j;->L:Lb6/j;

    invoke-virtual {p2, p0}, Lb6/i;->n0(Lb6/j;)Z

    move-result p0

    :goto_1
    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    array-length p1, v0

    sub-int/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "index value outside legal index range [0..%s]"

    invoke-virtual {p2, v1, p0, v0, p1}, Lb6/i;->j0(Ljava/lang/Class;Ljava/lang/Number;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_8
    :goto_2
    iget-object p0, p0, Lg6/o;->p:Ljava/lang/Enum;

    return-object p0

    :cond_9
    :goto_3
    return-object v2

    :cond_a
    invoke-virtual {p1}, Ls5/k;->v0()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p2, v1, p1}, Lb6/i;->Q(Ljava/lang/Class;Ls5/k;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lg6/o;->Z(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    sget-object v0, Ls5/n;->w:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, p1, p2}, Lg6/f1;->q(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-virtual {p2, v1, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    throw v2
.end method

.method public final getEmptyValue(Lb6/i;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg6/o;->p:Ljava/lang/Enum;

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
