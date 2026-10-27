.class public final Lg5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/o1;
.implements Lcc/e;
.implements Lmb/j7;
.implements Lr0/f;
.implements Ls0/k0;
.implements Lx3/m;


# instance fields
.field public final synthetic l:I

.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lg5/e;->l:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg5/e;->m:Ljava/lang/Object;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg5/e;->n:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lg5/e;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    iput p1, p0, Lg5/e;->l:I

    iput-object p2, p0, Lg5/e;->m:Ljava/lang/Object;

    iput-object p3, p0, Lg5/e;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 3
    iput p1, p0, Lg5/e;->l:I

    iput-object p2, p0, Lg5/e;->n:Ljava/lang/Object;

    iput-object p3, p0, Lg5/e;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg5/e;->l:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lg5/e;->m:Ljava/lang/Object;

    .line 8
    new-instance v0, Lg5/b;

    .line 9
    invoke-direct {v0, p1}, Lg5/b;-><init>(Landroidx/work/impl/WorkDatabase;)V

    .line 10
    iput-object v0, p0, Lg5/e;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lb0/c3;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lg5/e;->l:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/e;->m:Ljava/lang/Object;

    .line 15
    new-instance p1, Lz0/a;

    const/4 v0, 0x0

    .line 16
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 17
    iput-object p1, p0, Lg5/e;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Le2/g0;Lc2/r0;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lg5/e;->l:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/e;->m:Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lg5/e;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/EnumSet;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lg5/e;->l:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lac/a;->l:Lac/a;

    sget-object v1, Lac/a;->m:Lac/a;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lg5/e;->n:Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lg5/e;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lp/g;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lg5/e;->l:I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/e;->m:Ljava/lang/Object;

    return-void
.end method

.method private final i()V
    .locals 0

    return-void
.end method

.method public static j(I)Lb6/i0;
    .locals 2

    new-instance v0, Lb6/i0;

    const-string v1, "@JsonUnwrapped/"

    invoke-static {p0, v1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb6/i0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static p(Ljava/util/ArrayList;Lu6/r;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Le6/y;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v3, p1}, Le6/y;->D(Lu6/r;)Le6/y;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public G(Lmb/d0;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lg5/e;->n:Ljava/lang/Object;

    check-cast v0, Lmb/a7;

    invoke-interface {p1}, Lmb/r0;->getType()Lmb/s5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v0

    check-cast v0, Lmb/x;

    iget-object v1, p0, Lg5/e;->m:Ljava/lang/Object;

    check-cast v1, Lorg/codehaus/janino/util/t0;

    invoke-virtual {v0}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Lg5/m;

    const/16 v4, 0x11

    invoke-direct {v3, p0, v0, v2, v4}, Lg5/m;-><init>(Ljava/lang/Object;Lmb/b0;Ljava/lang/Object;I)V

    invoke-interface {p1, v3}, Lmb/r0;->s(Lmb/e7;)Ljava/lang/Object;

    new-instance p0, Lorg/codehaus/janino/util/e;

    invoke-direct {p0, v1, v2}, Lorg/codehaus/janino/util/e;-><init>(SLjava/util/HashMap;)V

    return-object p0
.end method

.method public a(Lb0/b3;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public apply()Lc2/p1;
    .locals 1

    iget-object v0, p0, Lg5/e;->m:Ljava/lang/Object;

    check-cast v0, Lc2/n0;

    iget-object p0, p0, Lg5/e;->n:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lc2/n0;->f(Ljava/lang/Object;)Lc2/p1;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;IILx3/r;)Z
    .locals 3

    iget v0, p4, Lx3/r;->c:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-lez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lg5/e;->m:Ljava/lang/Object;

    check-cast v0, Lx3/t;

    if-nez v0, :cond_2

    new-instance v0, Lx3/t;

    instance-of v2, p1, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    check-cast p1, Landroid/text/Spannable;

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object p1, v2

    :goto_0
    invoke-direct {v0, p1}, Lx3/t;-><init>(Landroid/text/Spannable;)V

    iput-object v0, p0, Lg5/e;->m:Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Lg5/e;->n:Ljava/lang/Object;

    check-cast p1, Lwa/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lx3/s;

    invoke-direct {p1, p4}, Lx3/s;-><init>(Lx3/r;)V

    iget-object p0, p0, Lg5/e;->m:Ljava/lang/Object;

    check-cast p0, Lx3/t;

    const/16 p4, 0x21

    invoke-virtual {p0, p1, p2, p3, p4}, Lx3/t;->setSpan(Ljava/lang/Object;III)V

    return v1
.end method

.method public c()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg5/e;->m:Ljava/lang/Object;

    check-cast p0, Lx3/t;

    return-object p0
.end method

.method public cancel()V
    .locals 2

    iget v0, p0, Lg5/e;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg5/e;->n:Ljava/lang/Object;

    check-cast v0, Lz0/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lg5/e;->m:Ljava/lang/Object;

    check-cast p0, Lb0/c3;

    invoke-virtual {p0}, Lb0/c3;->invoke()Ljava/lang/Object;

    :cond_0
    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public d(Lcc/f;ILcc/f;I)V
    .locals 1

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return-void

    :cond_0
    check-cast p1, Lgc/i;

    check-cast p3, Lgc/i;

    iget-boolean v0, p1, Lgc/i;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lg5/e;->g(Lgc/i;ILgc/i;I)V

    return-void

    :cond_1
    invoke-virtual {p0, p3, p4, p1, p2}, Lg5/e;->g(Lgc/i;ILgc/i;I)V

    return-void
.end method

.method public e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public f(Ljava/lang/Integer;)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lg5/e;->m:Ljava/lang/Object;

    check-cast v0, Ls0/k0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ls0/k0;->f(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lg5/e;->n:Ljava/lang/Object;

    check-cast p0, Lr0/h2;

    iget v1, p0, Lr0/h2;->v:I

    if-gez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v2, p0, Lr0/h2;->b:[I

    invoke-virtual {p0, v2, v1}, Lr0/h2;->E([II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1, v1, v2}, Ll7/a;->e(Lr0/h2;Ljava/lang/Integer;ILjava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v0}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public g(Lgc/i;ILgc/i;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    iget-object v5, v1, Lgc/i;->a:[Lpb/a;

    aget-object v6, v5, v2

    add-int/lit8 v7, v2, 0x1

    aget-object v5, v5, v7

    iget-object v7, v3, Lgc/i;->a:[Lpb/a;

    aget-object v8, v7, v4

    add-int/lit8 v9, v4, 0x1

    aget-object v7, v7, v9

    iget-object v9, v0, Lg5/e;->m:Ljava/lang/Object;

    check-cast v9, Lnb/d;

    invoke-virtual {v9, v6, v5, v8, v7}, Lnb/d;->a(Lpb/a;Lpb/a;Lpb/a;Lpb/a;)V

    invoke-virtual {v9}, Lnb/d;->c()Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_c

    :cond_0
    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget v7, v9, Lnb/d;->a:I

    if-ge v6, v7, :cond_12

    iget-object v7, v9, Lnb/d;->c:[Lpb/a;

    aget-object v7, v7, v6

    invoke-virtual {v9}, Lnb/d;->d()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v1, v2, v7}, Lgc/i;->d(ILpb/a;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v3, v4, v7}, Lgc/i;->d(ILpb/a;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    move v11, v5

    goto/16 :goto_b

    :cond_2
    :goto_1
    invoke-virtual {v1, v2, v7}, Lgc/i;->a(ILpb/a;)Lgc/b;

    move-result-object v8

    invoke-virtual {v3, v4, v7}, Lgc/i;->a(ILpb/a;)Lgc/b;

    move-result-object v7

    iget-object v10, v0, Lg5/e;->n:Ljava/lang/Object;

    check-cast v10, Lg5/i;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v11, v8, Lgc/b;->l:Z

    iget-object v12, v8, Lgc/b;->q:Lpb/a;

    iget-boolean v13, v7, Lgc/b;->l:Z

    if-ne v11, v13, :cond_3

    move v11, v5

    goto/16 :goto_a

    :cond_3
    iget v11, v8, Lgc/b;->m:I

    const/4 v13, 0x1

    const/4 v14, 0x2

    if-ne v11, v14, :cond_10

    iget v11, v7, Lgc/b;->m:I

    if-ne v11, v14, :cond_10

    iget-boolean v11, v8, Lgc/b;->p:Z

    if-nez v11, :cond_4

    iget-boolean v11, v7, Lgc/b;->p:Z

    if-nez v11, :cond_4

    move v0, v5

    move v5, v14

    goto/16 :goto_8

    :cond_4
    invoke-virtual {v8, v5}, Lgc/b;->b(I)Lpb/a;

    move-result-object v11

    invoke-virtual {v8, v13}, Lgc/b;->b(I)Lpb/a;

    move-result-object v15

    invoke-virtual {v7, v5}, Lgc/b;->b(I)Lpb/a;

    move-result-object v14

    invoke-virtual {v7, v13}, Lgc/b;->b(I)Lpb/a;

    move-result-object v5

    invoke-static {v12, v11}, Lg5/f;->M(Lpb/a;Lpb/a;)I

    move-result v13

    invoke-static {v12, v15}, Lg5/f;->M(Lpb/a;Lpb/a;)I

    move-result v0

    if-le v13, v0, :cond_5

    goto :goto_2

    :cond_5
    if-ge v13, v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {v12, v15, v11}, Lb6/g;->v(Lpb/a;Lpb/a;Lpb/a;)I

    move-result v0

    const/4 v13, 0x1

    if-ne v0, v13, :cond_7

    :goto_2
    move-object/from16 v16, v15

    move-object v15, v11

    move-object/from16 v11, v16

    :cond_7
    :goto_3
    invoke-static {v12, v14, v11}, Lg5/f;->p(Lpb/a;Lpb/a;Lpb/a;)I

    move-result v0

    const/4 v13, -0x1

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {v12, v14, v15}, Lg5/f;->p(Lpb/a;Lpb/a;Lpb/a;)I

    move-result v14

    if-nez v14, :cond_9

    :goto_4
    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    if-lez v0, :cond_a

    if-gez v14, :cond_a

    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    move v0, v13

    :goto_5
    if-nez v0, :cond_b

    goto :goto_9

    :cond_b
    invoke-static {v12, v5, v11}, Lg5/f;->p(Lpb/a;Lpb/a;Lpb/a;)I

    move-result v11

    if-nez v11, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {v12, v5, v15}, Lg5/f;->p(Lpb/a;Lpb/a;Lpb/a;)I

    move-result v5

    if-nez v5, :cond_d

    :goto_6
    const/4 v13, 0x0

    goto :goto_7

    :cond_d
    if-lez v11, :cond_e

    if-gez v5, :cond_e

    const/4 v13, 0x1

    :cond_e
    :goto_7
    if-nez v13, :cond_f

    goto :goto_9

    :cond_f
    if-eq v0, v13, :cond_10

    const/4 v0, 0x0

    const/4 v5, 0x2

    :goto_8
    invoke-virtual {v10, v0, v0, v5}, Lg5/i;->F(III)V

    :cond_10
    :goto_9
    iget-object v0, v10, Lg5/i;->n:Ljava/lang/Object;

    check-cast v0, Lgc/e;

    iget-object v5, v8, Lgc/b;->t:Lpb/i;

    invoke-virtual {v0}, Lgc/e;->d()Lgc/f;

    move-result-object v0

    const/4 v13, 0x1

    invoke-virtual {v0, v12, v13, v5}, Lgc/f;->f(Lpb/a;ZLpb/i;)I

    move-result v0

    invoke-static {v0}, Ly4/s;->z(I)I

    move-result v0

    iget-object v5, v10, Lg5/i;->o:Ljava/lang/Object;

    check-cast v5, Lgc/e;

    iget-object v11, v7, Lgc/b;->t:Lpb/i;

    invoke-virtual {v5}, Lgc/e;->d()Lgc/f;

    move-result-object v5

    invoke-virtual {v5, v12, v13, v11}, Lgc/f;->f(Lpb/a;ZLpb/i;)I

    move-result v5

    invoke-static {v5}, Ly4/s;->z(I)I

    move-result v5

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v5, v11}, Lg5/i;->F(III)V

    :goto_a
    iget-object v0, v10, Lg5/i;->p:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgc/c;

    if-nez v5, :cond_11

    new-instance v5, Lgc/c;

    invoke-direct {v5, v12}, Lgc/c;-><init>(Lpb/a;)V

    invoke-virtual {v0, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    iget-object v0, v5, Lgc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move v5, v11

    goto/16 :goto_0

    :cond_12
    :goto_c
    return-void
.end method

.method public h(Ljava/util/List;)Lu2/x;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    move-object v3, v0

    :goto_0
    if-ge v2, v1, :cond_0

    :try_start_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu2/g;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v3, p0, Lg5/e;->n:Ljava/lang/Object;

    check-cast v3, Lu2/h;

    invoke-interface {v4, v3}, Lu2/g;->a(Lu2/h;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v4

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lg5/e;->n:Ljava/lang/Object;

    check-cast p1, Lu2/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lp2/g;

    iget-object p1, p1, Lu2/h;->a:Lr2/c;

    invoke-virtual {p1}, Lr2/c;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lp2/g;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lg5/e;->n:Ljava/lang/Object;

    check-cast p1, Lu2/h;

    iget v2, p1, Lu2/h;->b:I

    iget p1, p1, Lu2/h;->c:I

    invoke-static {v2, p1}, Lp2/d0;->b(II)J

    move-result-wide v2

    new-instance p1, Lp2/l0;

    invoke-direct {p1, v2, v3}, Lp2/l0;-><init>(J)V

    iget-object v4, p0, Lg5/e;->m:Ljava/lang/Object;

    check-cast v4, Lu2/x;

    iget-wide v4, v4, Lu2/x;->b:J

    invoke-static {v4, v5}, Lp2/l0;->g(J)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v0, p1

    :cond_1
    if-eqz v0, :cond_2

    iget-wide v2, v0, Lp2/l0;->a:J

    goto :goto_1

    :cond_2
    invoke-static {v2, v3}, Lp2/l0;->e(J)I

    move-result p1

    invoke-static {v2, v3}, Lp2/l0;->f(J)I

    move-result v0

    invoke-static {p1, v0}, Lp2/d0;->b(II)J

    move-result-wide v2

    :goto_1
    iget-object p1, p0, Lg5/e;->n:Ljava/lang/Object;

    check-cast p1, Lu2/h;

    invoke-virtual {p1}, Lu2/h;->c()Lp2/l0;

    move-result-object p1

    new-instance v0, Lu2/x;

    invoke-direct {v0, v1, v2, v3, p1}, Lu2/x;-><init>(Lp2/g;JLp2/l0;)V

    iput-object v0, p0, Lg5/e;->m:Ljava/lang/Object;

    return-object v0

    :catch_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error while applying EditCommand batch to buffer (length="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lg5/e;->n:Ljava/lang/Object;

    check-cast v5, Lu2/h;

    iget-object v5, v5, Lu2/h;->a:Lr2/c;

    invoke-virtual {v5}, Lr2/c;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", composition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lg5/e;->n:Ljava/lang/Object;

    check-cast v5, Lu2/h;

    invoke-virtual {v5}, Lu2/h;->c()Lp2/l0;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", selection="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lg5/e;->n:Ljava/lang/Object;

    check-cast v5, Lu2/h;

    iget v6, v5, Lu2/h;->b:I

    iget v5, v5, Lu2/h;->c:I

    invoke-static {v6, v5}, Lp2/d0;->b(II)J

    move-result-wide v5

    invoke-static {v5, v6}, Lp2/l0;->h(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v4, Lr0/o1;

    invoke-direct {v4, v3, p0}, Lr0/o1;-><init>(Lu2/g;Lg5/e;)V

    const/16 p0, 0x3c

    invoke-static {p1, v2, v4, p0}, Lu8/m;->j0(Ljava/util/List;Ljava/lang/StringBuilder;Lr0/o1;I)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isDone()Z
    .locals 0

    iget-object p0, p0, Lg5/e;->n:Ljava/lang/Object;

    check-cast p0, Lg5/i;

    iget-object p0, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast p0, Lgc/a;

    invoke-virtual {p0}, Lgc/a;->d()Z

    move-result p0

    return p0
.end method

.method public k(Lpb/d;I)V
    .locals 4

    iget-object v0, p0, Lg5/e;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumSet;

    iget-object p0, p0, Lg5/e;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/EnumSet;

    sget-object v1, Lac/a;->n:Lac/a;

    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, p2}, Lpb/d;->q(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v1, Lac/a;->o:Lac/a;

    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1, p2}, Lpb/d;->K(I)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public l(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    const/4 v0, 0x1

    const-string v1, "SELECT long_value FROM Preference where `key`=?"

    invoke-static {v0, v1}, Lk4/n;->b(ILjava/lang/String;)Lk4/n;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lk4/n;->h(ILjava/lang/String;)V

    iget-object p0, p0, Lg5/e;->m:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {p0, v1}, Landroidx/work/impl/WorkDatabase;->m(Lq4/d;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Lk4/n;->c()V

    return-object v0

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Lk4/n;->c()V

    throw p1
.end method

.method public m()Lc2/r0;
    .locals 0

    iget-object p0, p0, Lg5/e;->n:Ljava/lang/Object;

    check-cast p0, Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc2/r0;

    return-object p0
.end method

.method public n(Lg5/d;)V
    .locals 1

    iget-object v0, p0, Lg5/e;->m:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    iget-object p0, p0, Lg5/e;->n:Ljava/lang/Object;

    check-cast p0, Lg5/b;

    invoke-virtual {p0, p1}, Lg5/b;->h(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p0
.end method

.method public o(Ls5/k;Lb6/i;Ljava/lang/Object;Lu6/z;)V
    .locals 4

    iget-object p0, p0, Lg5/e;->n:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Le6/y;

    invoke-virtual {p1}, Ls5/k;->D0()Ls5/c;

    move-result-object v3

    invoke-virtual {p4, v3}, Lu6/z;->G0(Ls5/c;)Lu6/x;

    move-result-object v3

    invoke-virtual {v3}, Lu6/x;->z0()Ls5/n;

    invoke-virtual {v2, v3, p2, p3}, Le6/y;->k(Ls5/k;Lb6/i;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lg5/e;->n:Ljava/lang/Object;

    check-cast v0, Lv1/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lg5/e;->n:Ljava/lang/Object;

    iget-object p0, p0, Lg5/e;->m:Ljava/lang/Object;

    check-cast p0, Lp/g;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lp/g;->T0(Z)V

    :cond_0
    return-void
.end method

.method public u0(Lmb/a2;)Ljava/lang/Object;
    .locals 6

    iget-object p1, p1, Lmb/a2;->c:[Lmb/z1;

    array-length v0, p1

    new-array v0, v0, [Lorg/codehaus/janino/util/b0;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lg5/e;->n:Ljava/lang/Object;

    check-cast v3, Lmb/a7;

    aget-object v4, p1, v2

    iget-object v5, p0, Lg5/e;->m:Ljava/lang/Object;

    check-cast v5, Lorg/codehaus/janino/util/t0;

    invoke-virtual {v3, v4, v5, v1}, Lmb/a7;->Q(Lmb/z1;Lorg/codehaus/janino/util/t0;Z)Lorg/codehaus/janino/util/b0;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/codehaus/janino/util/g;

    invoke-direct {p0, v0}, Lorg/codehaus/janino/util/g;-><init>([Lorg/codehaus/janino/util/b0;)V

    return-object p0
.end method

.method public visitRvalue(Lmb/y4;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p1, Lmb/m3;->a:Lhb/c;

    iget-object v1, p0, Lg5/e;->n:Ljava/lang/Object;

    check-cast v1, Lmb/a7;

    iget-object p0, p0, Lg5/e;->m:Ljava/lang/Object;

    check-cast p0, Lorg/codehaus/janino/util/t0;

    instance-of v2, p1, Lmb/p0;

    const-string v3, "\""

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lmb/p0;

    invoke-virtual {v1, v2}, Lmb/a7;->W1(Lmb/p0;)Lmb/c1;

    move-result-object v2

    invoke-virtual {v2}, Lmb/c1;->A()Lmb/y4;

    move-result-object v2

    instance-of v4, v2, Lmb/i2;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    check-cast v2, Lmb/i2;

    iget-object v4, v2, Lmb/i2;->f:Lmb/c1;

    invoke-virtual {v4}, Lmb/c1;->C()Lmb/s5;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, p1, Lmb/m3;->a:Lhb/c;

    invoke-virtual {v4}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lmb/a7;->E0(Lhb/c;Ljava/lang/String;)Lmb/x;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lmb/x;->x()Lmb/x;

    move-result-object v4

    iget-object v6, v1, Lmb/a7;->h:Lmb/b;

    iget-object v6, v6, Lmb/a0;->h:Lmb/x;

    if-ne v4, v6, :cond_3

    new-instance p1, Lorg/codehaus/janino/util/c0;

    invoke-virtual {v5}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v0

    iget-object v1, v2, Lmb/i2;->g:Lmb/s;

    invoke-virtual {v1}, Lmb/s;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result p0

    invoke-direct {p1, v0, p0}, Lorg/codehaus/janino/util/c0;-><init>(SS)V

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Cannot find enum \""

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, v4, Lmb/m3;->a:Lhb/c;

    invoke-virtual {v1, p1, p0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_0
    instance-of v2, p1, Lmb/p1;

    if-eqz v2, :cond_4

    new-instance v0, Lorg/codehaus/janino/util/i;

    check-cast p1, Lmb/p1;

    iget-object p1, p1, Lmb/p1;->f:Lmb/s5;

    invoke-virtual {v1, p1}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object p1

    check-cast p1, Lmb/x;

    invoke-virtual {p1}, Lmb/x;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result p0

    const/16 p1, 0x63

    invoke-direct {v0, p1, p0}, Lorg/codehaus/janino/util/i;-><init>(BS)V

    return-object v0

    :cond_4
    invoke-virtual {v1, p1}, Lmb/a7;->H0(Lmb/y4;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lmb/a7;->q:Lmb/q;

    if-eq v1, v2, :cond_f

    if-eqz v1, :cond_e

    instance-of p1, v1, Ljava/lang/Boolean;

    if-eqz p1, :cond_5

    new-instance p1, Lorg/codehaus/janino/util/i;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/codehaus/janino/util/t0;->d(I)S

    move-result p0

    const/16 v0, 0x5a

    invoke-direct {p1, v0, p0}, Lorg/codehaus/janino/util/i;-><init>(BS)V

    return-object p1

    :cond_5
    instance-of p1, v1, Ljava/lang/Byte;

    if-eqz p1, :cond_6

    new-instance p1, Lorg/codehaus/janino/util/i;

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/codehaus/janino/util/t0;->d(I)S

    move-result p0

    const/16 v0, 0x42

    invoke-direct {p1, v0, p0}, Lorg/codehaus/janino/util/i;-><init>(BS)V

    return-object p1

    :cond_6
    instance-of p1, v1, Ljava/lang/Short;

    if-eqz p1, :cond_7

    new-instance p1, Lorg/codehaus/janino/util/i;

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/codehaus/janino/util/t0;->d(I)S

    move-result p0

    const/16 v0, 0x53

    invoke-direct {p1, v0, p0}, Lorg/codehaus/janino/util/i;-><init>(BS)V

    return-object p1

    :cond_7
    instance-of p1, v1, Ljava/lang/Integer;

    if-eqz p1, :cond_8

    new-instance p1, Lorg/codehaus/janino/util/i;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/codehaus/janino/util/t0;->d(I)S

    move-result p0

    const/16 v0, 0x49

    invoke-direct {p1, v0, p0}, Lorg/codehaus/janino/util/i;-><init>(BS)V

    return-object p1

    :cond_8
    instance-of p1, v1, Ljava/lang/Long;

    if-eqz p1, :cond_9

    new-instance p1, Lorg/codehaus/janino/util/i;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance v2, Lorg/codehaus/janino/util/s;

    invoke-direct {v2, v0, v1}, Lorg/codehaus/janino/util/s;-><init>(J)V

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/t0;->i(Lorg/codehaus/janino/util/v;)S

    move-result p0

    const/16 v0, 0x4a

    invoke-direct {p1, v0, p0}, Lorg/codehaus/janino/util/i;-><init>(BS)V

    return-object p1

    :cond_9
    instance-of p1, v1, Ljava/lang/Float;

    if-eqz p1, :cond_a

    new-instance p1, Lorg/codehaus/janino/util/i;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    new-instance v1, Lorg/codehaus/janino/util/p;

    invoke-direct {v1, v0}, Lorg/codehaus/janino/util/p;-><init>(F)V

    invoke-virtual {p0, v1}, Lorg/codehaus/janino/util/t0;->i(Lorg/codehaus/janino/util/v;)S

    move-result p0

    const/16 v0, 0x46

    invoke-direct {p1, v0, p0}, Lorg/codehaus/janino/util/i;-><init>(BS)V

    return-object p1

    :cond_a
    instance-of p1, v1, Ljava/lang/Double;

    if-eqz p1, :cond_b

    new-instance p1, Lorg/codehaus/janino/util/i;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v2, Lorg/codehaus/janino/util/n;

    invoke-direct {v2, v0, v1}, Lorg/codehaus/janino/util/n;-><init>(D)V

    invoke-virtual {p0, v2}, Lorg/codehaus/janino/util/t0;->i(Lorg/codehaus/janino/util/v;)S

    move-result p0

    const/16 v0, 0x44

    invoke-direct {p1, v0, p0}, Lorg/codehaus/janino/util/i;-><init>(BS)V

    return-object p1

    :cond_b
    instance-of p1, v1, Ljava/lang/Character;

    if-eqz p1, :cond_c

    new-instance p1, Lorg/codehaus/janino/util/i;

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/codehaus/janino/util/t0;->d(I)S

    move-result p0

    const/16 v0, 0x43

    invoke-direct {p1, v0, p0}, Lorg/codehaus/janino/util/i;-><init>(BS)V

    return-object p1

    :cond_c
    instance-of p1, v1, Ljava/lang/String;

    if-eqz p1, :cond_d

    new-instance p1, Lorg/codehaus/janino/util/i;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result p0

    const/16 v0, 0x73

    invoke-direct {p1, v0, p0}, Lorg/codehaus/janino/util/i;-><init>(BS)V

    return-object p1

    :cond_d
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_e
    new-instance p0, Lhb/a;

    const-string p1, "Null literal not allowed as element value"

    invoke-direct {p0, v0, p1}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Lhb/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\" is not a constant expression"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p0
.end method
