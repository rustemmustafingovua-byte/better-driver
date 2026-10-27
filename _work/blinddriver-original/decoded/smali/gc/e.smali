.class public final Lgc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lpb/i;

.field public final b:Lpb/h;

.field public final c:I

.field public d:Ljava/util/HashSet;

.field public final e:Lnb/a;

.field public f:Lgc/f;

.field public g:I

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Z


# direct methods
.method public constructor <init>(Lpb/i;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lgc/e;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lgc/e;->g:I

    iput-object p1, p0, Lgc/e;->a:Lpb/i;

    invoke-virtual {p1}, Lpb/i;->z()Lpb/h;

    move-result-object v1

    iput-object v1, p0, Lgc/e;->b:Lpb/h;

    sget-object v1, Lnb/a;->b:Lnb/a;

    iput-object v1, p0, Lgc/e;->e:Lnb/a;

    invoke-virtual {p1}, Lpb/i;->L()Z

    move-result v1

    iput-boolean v1, p0, Lgc/e;->l:Z

    invoke-virtual {p1}, Lpb/i;->getDimension()I

    move-result v2

    iput v2, p0, Lgc/e;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    :cond_0
    instance-of v1, p1, Lpb/w;

    if-nez v1, :cond_14

    instance-of v1, p1, Lpb/u;

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_1
    instance-of v1, p1, Lpb/q;

    if-nez v1, :cond_13

    instance-of v1, p1, Lpb/t;

    if-eqz v1, :cond_2

    goto/16 :goto_5

    :cond_2
    instance-of v1, p1, Lpb/x;

    if-nez v1, :cond_12

    instance-of v1, p1, Lpb/v;

    if-eqz v1, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p1}, Lpb/i;->E()I

    move-result v1

    move v7, v0

    move-object v6, v3

    move v5, v4

    :cond_4
    :goto_0
    if-eqz v5, :cond_6

    :cond_5
    :goto_1
    move v8, v4

    goto :goto_2

    :cond_6
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lpb/k;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_1

    :cond_7
    move-object v6, v3

    :cond_8
    if-lt v7, v1, :cond_5

    move v8, v0

    :goto_2
    if-eqz v8, :cond_15

    if-eqz v5, :cond_a

    instance-of v5, p1, Lpb/j;

    if-nez v5, :cond_9

    add-int/lit8 v7, v7, 0x1

    :cond_9
    move-object v8, p1

    move v5, v0

    goto :goto_3

    :cond_a
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lpb/k;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v6}, Lpb/k;->next()Ljava/lang/Object;

    move-result-object v8

    goto :goto_3

    :cond_b
    move-object v6, v3

    :cond_c
    if-ge v7, v1, :cond_11

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p1, v7}, Lpb/i;->A(I)Lpb/i;

    move-result-object v7

    instance-of v9, v7, Lpb/j;

    if-eqz v9, :cond_d

    new-instance v6, Lpb/k;

    check-cast v7, Lpb/j;

    invoke-direct {v6, v7}, Lpb/k;-><init>(Lpb/j;)V

    invoke-virtual {v6}, Lpb/k;->next()Ljava/lang/Object;

    move-result-object v7

    :cond_d
    move v12, v8

    move-object v8, v7

    move v7, v12

    :goto_3
    check-cast v8, Lpb/i;

    invoke-virtual {v8}, Lpb/i;->L()Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_0

    :cond_e
    instance-of v9, v8, Lpb/w;

    if-eqz v9, :cond_f

    iput-boolean v4, p0, Lgc/e;->h:Z

    iget v9, p0, Lgc/e;->c:I

    if-gez v9, :cond_f

    iput v0, p0, Lgc/e;->c:I

    :cond_f
    instance-of v9, v8, Lpb/q;

    if-eqz v9, :cond_10

    iput-boolean v4, p0, Lgc/e;->i:Z

    iget v9, p0, Lgc/e;->c:I

    if-ge v9, v4, :cond_10

    iput v4, p0, Lgc/e;->c:I

    :cond_10
    instance-of v8, v8, Lpb/x;

    if-eqz v8, :cond_4

    iput-boolean v4, p0, Lgc/e;->j:Z

    iget v8, p0, Lgc/e;->c:I

    if-ge v8, v2, :cond_4

    iput v2, p0, Lgc/e;->c:I

    goto :goto_0

    :cond_11
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_12
    :goto_4
    iput-boolean v4, p0, Lgc/e;->j:Z

    iput v2, p0, Lgc/e;->c:I

    goto :goto_7

    :cond_13
    :goto_5
    iput-boolean v4, p0, Lgc/e;->i:Z

    iput v4, p0, Lgc/e;->c:I

    goto :goto_7

    :cond_14
    :goto_6
    iput-boolean v4, p0, Lgc/e;->h:Z

    iput v0, p0, Lgc/e;->c:I

    :cond_15
    :goto_7
    iget-object p1, p0, Lgc/e;->a:Lpb/i;

    iget v1, p0, Lgc/e;->c:I

    if-eq v1, v4, :cond_16

    goto/16 :goto_c

    :cond_16
    invoke-virtual {p1}, Lpb/i;->E()I

    move-result v1

    move v7, v0

    move-object v6, v3

    move v5, v4

    :cond_17
    if-eqz v5, :cond_19

    :cond_18
    :goto_8
    move v8, v4

    goto :goto_9

    :cond_19
    if-eqz v6, :cond_1b

    invoke-virtual {v6}, Lpb/k;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    goto :goto_8

    :cond_1a
    move-object v6, v3

    :cond_1b
    if-lt v7, v1, :cond_18

    move v8, v0

    :goto_9
    if-eqz v8, :cond_23

    if-eqz v5, :cond_1d

    instance-of v5, p1, Lpb/j;

    if-nez v5, :cond_1c

    add-int/lit8 v7, v7, 0x1

    :cond_1c
    move-object v8, p1

    move v5, v0

    goto :goto_a

    :cond_1d
    if-eqz v6, :cond_1f

    invoke-virtual {v6}, Lpb/k;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-virtual {v6}, Lpb/k;->next()Ljava/lang/Object;

    move-result-object v8

    goto :goto_a

    :cond_1e
    move-object v6, v3

    :cond_1f
    if-ge v7, v1, :cond_22

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p1, v7}, Lpb/i;->A(I)Lpb/i;

    move-result-object v7

    instance-of v9, v7, Lpb/j;

    if-eqz v9, :cond_20

    new-instance v6, Lpb/k;

    check-cast v7, Lpb/j;

    invoke-direct {v6, v7}, Lpb/k;-><init>(Lpb/j;)V

    invoke-virtual {v6}, Lpb/k;->next()Ljava/lang/Object;

    move-result-object v7

    :cond_20
    move v12, v8

    move-object v8, v7

    move v7, v12

    :goto_a
    check-cast v8, Lpb/i;

    instance-of v9, v8, Lpb/q;

    if-eqz v9, :cond_17

    check-cast v8, Lpb/q;

    iget-object v9, v8, Lpb/q;->o:Lpb/d;

    invoke-interface {v9}, Lpb/d;->size()I

    move-result v9

    if-lt v9, v2, :cond_17

    iget-object v9, v8, Lpb/q;->o:Lpb/d;

    invoke-interface {v9, v0}, Lpb/d;->b(I)Lpb/a;

    move-result-object v9

    move v10, v0

    :goto_b
    iget-object v11, v8, Lpb/q;->o:Lpb/d;

    invoke-interface {v11}, Lpb/d;->size()I

    move-result v11

    if-ge v10, v11, :cond_17

    iget-object v11, v8, Lpb/q;->o:Lpb/d;

    invoke-interface {v11, v10}, Lpb/d;->b(I)Lpb/a;

    move-result-object v11

    invoke-virtual {v9, v11}, Lpb/a;->i(Lpb/a;)Z

    move-result v11

    if-nez v11, :cond_21

    goto :goto_c

    :cond_21
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_22
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_23
    move v0, v4

    :goto_c
    iput-boolean v0, p0, Lgc/e;->k:Z

    return-void
.end method

.method public static g([Lpb/a;Z)[Lpb/a;
    .locals 5

    invoke-static {p0}, Lb6/g;->x([Lpb/a;)Z

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, [Lpb/a;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lpb/a;

    array-length p1, p0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    array-length p1, p0

    sub-int/2addr p1, v0

    div-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    aget-object v2, p0, v1

    sub-int v3, p1, v1

    aget-object v4, p0, v3

    aput-object v4, p0, v1

    aput-object v2, p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method


# virtual methods
.method public final a(ZLpb/s;ILpb/h;Lpb/i;Ljava/util/ArrayList;)V
    .locals 3

    invoke-virtual {p2}, Lpb/q;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p2}, Lpb/i;->z()Lpb/h;

    move-result-object v0

    invoke-virtual {p4, v0}, Lpb/h;->h(Lpb/h;)Z

    move-result p4

    if-nez p4, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 p4, 0x1

    if-nez p3, :cond_2

    move v0, p4

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object p2, p2, Lpb/q;->o:Lpb/d;

    invoke-interface {p2}, Lpb/d;->t()[Lpb/a;

    move-result-object p2

    invoke-static {p2, v0}, Lgc/e;->g([Lpb/a;Z)[Lpb/a;

    move-result-object p2

    iget p0, p0, Lgc/e;->g:I

    move v0, p4

    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_5

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p2, v1

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_3
    array-length v0, p2

    if-ge p4, v0, :cond_5

    add-int/lit8 v0, p4, -0x1

    aget-object v0, p2, v0

    aget-object v1, p2, p4

    invoke-virtual {v0, v1}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p4, Lpb/c;

    invoke-direct {p4, p2}, Lpb/c;-><init>([Lpb/a;)V

    sget-object p2, Lpb/c;->l:[Lpb/a;

    invoke-virtual {p4, p2}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lpb/a;

    goto :goto_4

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    new-instance p4, Lgc/i;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p2, p4, Lgc/i;->a:[Lpb/a;

    iput-boolean p1, p4, Lgc/i;->b:Z

    const/4 p1, 0x2

    iput p1, p4, Lgc/i;->c:I

    iput p0, p4, Lgc/i;->d:I

    iput p3, p4, Lgc/i;->e:I

    iput-object p5, p4, Lgc/i;->f:Lpb/i;

    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(ZLpb/h;Lpb/i;Ljava/util/ArrayList;)V
    .locals 14

    move-object/from16 v4, p2

    move-object/from16 v7, p3

    move-object/from16 v6, p4

    instance-of v0, v7, Lpb/v;

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    move-object v0, v7

    check-cast v0, Lpb/v;

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object v9, v8

    :goto_0
    const/4 v10, 0x0

    move v11, v10

    :goto_1
    invoke-virtual {v7}, Lpb/i;->E()I

    move-result v0

    if-ge v11, v0, :cond_a

    invoke-virtual {v7, v11}, Lpb/i;->A(I)Lpb/i;

    move-result-object v0

    instance-of v2, v0, Lpb/j;

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, v4, v0, v6}, Lgc/e;->b(ZLpb/h;Lpb/i;Ljava/util/ArrayList;)V

    goto/16 :goto_7

    :cond_1
    invoke-virtual {v0}, Lpb/i;->L()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_7

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lpb/i;->z()Lpb/h;

    move-result-object v2

    invoke-virtual {v4, v2}, Lpb/h;->h(Lpb/h;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_3
    iget v2, p0, Lgc/e;->g:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lgc/e;->g:I

    instance-of v2, v0, Lpb/q;

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lpb/i;->x()[Lpb/a;

    move-result-object v0

    iget v2, p0, Lgc/e;->g:I

    move v5, v3

    :goto_2
    array-length v12, v0

    if-ge v5, v12, :cond_6

    add-int/lit8 v12, v5, -0x1

    aget-object v12, v0, v12

    aget-object v13, v0, v5

    invoke-virtual {v12, v13}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    move v5, v3

    :goto_3
    array-length v12, v0

    if-ge v5, v12, :cond_6

    add-int/lit8 v12, v5, -0x1

    aget-object v12, v0, v12

    aget-object v13, v0, v5

    invoke-virtual {v12, v13}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    new-instance v5, Lpb/c;

    invoke-direct {v5, v0}, Lpb/c;-><init>([Lpb/a;)V

    sget-object v0, Lpb/c;->l:[Lpb/a;

    invoke-virtual {v5, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpb/a;

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    new-instance v5, Lgc/i;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v0, v5, Lgc/i;->a:[Lpb/a;

    iput-boolean p1, v5, Lgc/i;->b:Z

    iput v3, v5, Lgc/i;->c:I

    iput v2, v5, Lgc/i;->d:I

    const/4 v0, -0x1

    iput v0, v5, Lgc/i;->e:I

    iput-object v8, v5, Lgc/i;->f:Lpb/i;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    instance-of v2, v0, Lpb/x;

    if-eqz v2, :cond_9

    move-object v12, v0

    check-cast v12, Lpb/x;

    if-eqz v9, :cond_8

    move-object v5, v9

    goto :goto_5

    :cond_8
    move-object v5, v12

    :goto_5
    iget-object v2, v12, Lpb/x;->o:Lpb/s;

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lgc/e;->a(ZLpb/s;ILpb/h;Lpb/i;Ljava/util/ArrayList;)V

    move v0, v10

    :goto_6
    iget-object v1, v12, Lpb/x;->p:[Lpb/s;

    array-length v2, v1

    if-ge v0, v2, :cond_9

    aget-object v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    move-object v0, p0

    move v1, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lgc/e;->a(ZLpb/s;ILpb/h;Lpb/i;Ljava/util/ArrayList;)V

    move v0, v3

    goto :goto_6

    :cond_9
    :goto_7
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    goto/16 :goto_1

    :cond_a
    return-void
.end method

.method public final c()I
    .locals 2

    iget-boolean v0, p0, Lgc/e;->l:Z

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget v0, p0, Lgc/e;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lgc/e;->k:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lgc/e;->j:Z

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    iget-boolean p0, p0, Lgc/e;->i:Z

    if-eqz p0, :cond_3

    return v1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d()Lgc/f;
    .locals 11

    iget-object v0, p0, Lgc/e;->f:Lgc/f;

    if-nez v0, :cond_8

    new-instance v0, Lgc/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lgc/e;->a:Lpb/i;

    iput-object v1, v0, Lgc/f;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Lpb/i;->L()Z

    move-result v2

    iput-boolean v2, v0, Lgc/f;->a:Z

    invoke-virtual {v0, v1}, Lgc/f;->d(Lpb/i;)V

    iget-object v1, v0, Lgc/f;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    new-instance v2, Lad/a2;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lad/a2;-><init>(I)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lad/a2;->n:Ljava/lang/Object;

    iget-object v3, p0, Lgc/e;->e:Lnb/a;

    iput-object v3, v2, Lad/a2;->o:Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v4, :cond_3

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    check-cast v8, Lpb/q;

    invoke-virtual {v8}, Lpb/q;->L()Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    iget-object v9, v8, Lpb/q;->o:Lpb/d;

    invoke-interface {v9, v5}, Lpb/d;->b(I)Lpb/a;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_1

    :cond_1
    move v10, v5

    :goto_1
    add-int/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v8, Lpb/q;->o:Lpb/d;

    invoke-interface {v9}, Lpb/d;->size()I

    move-result v9

    sub-int/2addr v9, v7

    iget-object v8, v8, Lpb/q;->o:Lpb/d;

    invoke-interface {v8, v9}, Lpb/d;->b(I)Lpb/a;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_2

    :cond_2
    move v9, v5

    :goto_2
    add-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iput-object v3, v2, Lad/a2;->n:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Lad/a2;->o:Ljava/lang/Object;

    check-cast v4, Lnb/a;

    invoke-virtual {v4, v3}, Lnb/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move v5, v7

    :cond_5
    iput-boolean v5, v2, Lad/a2;->m:Z

    iput-object v2, v0, Lgc/f;->h:Ljava/lang/Object;

    :cond_6
    iget-object v1, v0, Lgc/f;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lm2/j;

    iput-object v1, v0, Lgc/f;->g:Ljava/lang/Object;

    :cond_7
    iput-object v0, p0, Lgc/e;->f:Lgc/f;

    :cond_8
    iget-object p0, p0, Lgc/e;->f:Lgc/f;

    return-object p0
.end method

.method public final e(I)Z
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lgc/e;->j:Z

    return p0

    :cond_1
    iget-boolean p0, p0, Lgc/e;->i:Z

    return p0

    :cond_2
    iget-boolean p0, p0, Lgc/e;->h:Z

    return p0
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Lgc/e;->a:Lpb/i;

    instance-of v1, v0, Lpb/w;

    if-nez v1, :cond_2

    instance-of v1, v0, Lpb/u;

    if-nez v1, :cond_2

    instance-of v1, v0, Lpb/x;

    if-nez v1, :cond_2

    instance-of v1, v0, Lpb/v;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lgc/e;->j:Z

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lpb/i;->E()I

    move-result p0

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgc/e;->a:Lpb/i;

    invoke-virtual {p0}, Lpb/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
