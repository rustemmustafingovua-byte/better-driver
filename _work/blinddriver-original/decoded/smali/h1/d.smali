.class public final Lh1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/f;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final l:Lf2/y;

.field public final m:Lf2/p;

.field public n:Lk0/l;

.field public final o:Ljava/util/ArrayList;

.field public final p:J

.field public q:Lh1/a;

.field public r:Z

.field public final s:Lw9/e;

.field public final t:Landroid/os/Handler;

.field public u:Lk/x;

.field public v:J

.field public final w:Lk/x;

.field public x:Lf2/j2;

.field public y:Z

.field public final z:Landroidx/lifecycle/f0;


# direct methods
.method public constructor <init>(Lf2/y;Lf2/p;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1/d;->l:Lf2/y;

    iput-object p2, p0, Lh1/d;->m:Lf2/p;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lh1/d;->o:Ljava/util/ArrayList;

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lh1/d;->p:J

    sget-object p2, Lh1/a;->l:Lh1/a;

    iput-object p2, p0, Lh1/d;->q:Lh1/a;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lh1/d;->r:Z

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p2, v1, v0}, Lpc/h;->a(IILw9/a;)Lw9/e;

    move-result-object p2

    iput-object p2, p0, Lh1/d;->s:Lw9/e;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lh1/d;->t:Landroid/os/Handler;

    sget-object p2, Lk/l;->a:Lk/x;

    const-string v0, "null cannot be cast to non-null type androidx.collection.IntObjectMap<V of androidx.collection.IntObjectMapKt.intObjectMapOf>"

    invoke-static {p2, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lh1/d;->u:Lk/x;

    new-instance v1, Lk/x;

    invoke-direct {v1}, Lk/x;-><init>()V

    iput-object v1, p0, Lh1/d;->w:Lk/x;

    new-instance v1, Lf2/j2;

    invoke-virtual {p1}, Lf2/y;->getSemanticsOwner()Lm2/r;

    move-result-object p1

    invoke-virtual {p1}, Lm2/r;->a()Lm2/p;

    move-result-object p1

    invoke-static {p2, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, p2}, Lf2/j2;-><init>(Lm2/p;Lk/k;)V

    iput-object v1, p0, Lh1/d;->x:Lf2/j2;

    new-instance p1, Landroidx/lifecycle/f0;

    const/4 p2, 0x7

    invoke-direct {p1, p2, p0}, Landroidx/lifecycle/f0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lh1/d;->z:Landroidx/lifecycle/f0;

    return-void
.end method


# virtual methods
.method public final a(La9/c;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lh1/b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lh1/b;

    iget v1, v0, Lh1/b;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lh1/b;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lh1/b;

    invoke-direct {v0, p0, p1}, Lh1/b;-><init>(Lh1/d;La9/c;)V

    :goto_0
    iget-object p1, v0, Lh1/b;->m:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lh1/b;->o:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lh1/b;->l:Lw9/b;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v2, v0, Lh1/b;->l:Lw9/b;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lh1/d;->s:Lw9/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lw9/b;

    invoke-direct {v2, p1}, Lw9/b;-><init>(Lw9/e;)V

    :cond_4
    :goto_1
    iput-object v2, v0, Lh1/b;->l:Lw9/b;

    iput v4, v0, Lh1/b;->o:I

    invoke-virtual {v2, v0}, Lw9/b;->b(La9/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v2}, Lw9/b;->c()Ljava/lang/Object;

    invoke-virtual {p0}, Lh1/d;->i()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lh1/d;->j()V

    :cond_6
    iget-boolean p1, p0, Lh1/d;->y:Z

    if-nez p1, :cond_7

    iput-boolean v4, p0, Lh1/d;->y:Z

    iget-object p1, p0, Lh1/d;->t:Landroid/os/Handler;

    iget-object v5, p0, Lh1/d;->z:Landroidx/lifecycle/f0;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    iput-object v2, v0, Lh1/b;->l:Lw9/b;

    iput v3, v0, Lh1/b;->o:I

    iget-wide v5, p0, Lh1/d;->p:J

    invoke-static {v5, v6, v0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    :goto_3
    return-object v1

    :cond_8
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public final d(Landroidx/lifecycle/v;)V
    .locals 0

    iget-object p1, p0, Lh1/d;->l:Lf2/y;

    invoke-virtual {p1}, Lf2/y;->getSemanticsOwner()Lm2/r;

    move-result-object p1

    invoke-virtual {p1}, Lm2/r;->a()Lm2/p;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh1/d;->m(Lm2/p;)V

    invoke-virtual {p0}, Lh1/d;->j()V

    const/4 p1, 0x0

    iput-object p1, p0, Lh1/d;->n:Lk0/l;

    return-void
.end method

.method public final e(Landroidx/lifecycle/v;)V
    .locals 1

    iget-object p1, p0, Lh1/d;->m:Lf2/p;

    invoke-virtual {p1}, Lf2/p;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk0/l;

    iput-object p1, p0, Lh1/d;->n:Lk0/l;

    iget-object p1, p0, Lh1/d;->l:Lf2/y;

    invoke-virtual {p1}, Lf2/y;->getSemanticsOwner()Lm2/r;

    move-result-object p1

    invoke-virtual {p1}, Lm2/r;->a()Lm2/p;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lh1/d;->l(ILm2/p;)V

    invoke-virtual {p0}, Lh1/d;->j()V

    return-void
.end method

.method public final f(Lk/k;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lk/k;->b:[I

    iget-object v3, v1, Lk/k;->a:[J

    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_1a

    const/4 v6, 0x0

    :goto_0
    aget-wide v7, v3, v6

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v12

    cmp-long v9, v9, v12

    if-eqz v9, :cond_19

    sub-int v9, v6, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v9, :cond_18

    const-wide/16 v15, 0xff

    and-long v17, v7, v15

    const-wide/16 v19, 0x80

    cmp-long v17, v17, v19

    if-gez v17, :cond_17

    shl-int/lit8 v17, v6, 0x3

    add-int v17, v17, v14

    aget v5, v2, v17

    move/from16 v17, v11

    iget-object v11, v0, Lh1/d;->w:Lk/x;

    invoke-virtual {v11, v5}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lf2/j2;

    invoke-virtual {v1, v5}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm2/q;

    const/16 v21, 0x0

    if-eqz v5, :cond_0

    iget-object v5, v5, Lm2/q;->a:Lm2/p;

    goto :goto_2

    :cond_0
    move-object/from16 v5, v21

    :goto_2
    if-eqz v5, :cond_16

    move-wide/from16 v22, v12

    iget v12, v5, Lm2/p;->g:I

    iget-object v5, v5, Lm2/p;->d:Lm2/m;

    iget-object v5, v5, Lm2/m;->l:Lk/m0;

    const-string v13, "Invalid content capture ID"

    if-nez v11, :cond_a

    iget-object v11, v5, Lk/m0;->b:[Ljava/lang/Object;

    move-wide/from16 v24, v15

    iget-object v15, v5, Lk/m0;->a:[J

    move/from16 v16, v10

    array-length v10, v15

    add-int/lit8 v10, v10, -0x2

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    if-ltz v10, :cond_9

    const/4 v1, 0x0

    :goto_3
    aget-wide v2, v15, v1

    move-wide/from16 v28, v7

    not-long v7, v2

    shl-long v7, v7, v17

    and-long/2addr v7, v2

    and-long v7, v7, v22

    cmp-long v7, v7, v22

    if-eqz v7, :cond_8

    sub-int v7, v1, v10

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    rsub-int/lit8 v7, v7, 0x8

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_7

    and-long v30, v2, v24

    cmp-long v30, v30, v19

    if-gez v30, :cond_5

    shl-int/lit8 v30, v1, 0x3

    add-int v30, v30, v8

    aget-object v30, v11, v30

    move-wide/from16 v31, v2

    move-object/from16 v2, v30

    check-cast v2, Lm2/w;

    sget-object v3, Lm2/t;->B:Lm2/w;

    invoke-static {v2, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v5, v3}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    move-object/from16 v2, v21

    :cond_1
    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp2/g;

    goto :goto_5

    :cond_2
    move-object/from16 v2, v21

    :goto_5
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lh1/d;->n:Lk0/l;

    if-nez v3, :cond_3

    goto :goto_6

    :cond_3
    move-object/from16 v33, v13

    move/from16 v30, v14

    int-to-long v13, v12

    invoke-virtual {v3, v13, v14}, Lk0/l;->i(J)Landroid/view/autofill/AutofillId;

    move-result-object v13

    if-eqz v13, :cond_4

    iget-object v3, v3, Lk0/l;->n:Ljava/lang/Object;

    check-cast v3, Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {v3, v13, v2}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_4
    invoke-static/range {v33 .. v33}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object v0

    throw v0

    :cond_5
    move-wide/from16 v31, v2

    :cond_6
    :goto_6
    move-object/from16 v33, v13

    move/from16 v30, v14

    :goto_7
    shr-long v2, v31, v16

    add-int/lit8 v8, v8, 0x1

    move/from16 v14, v30

    move-object/from16 v13, v33

    goto :goto_4

    :cond_7
    move-object/from16 v33, v13

    move/from16 v30, v14

    move/from16 v2, v16

    if-ne v7, v2, :cond_15

    goto :goto_8

    :cond_8
    move-object/from16 v33, v13

    move/from16 v30, v14

    :goto_8
    if-eq v1, v10, :cond_15

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v7, v28

    move/from16 v14, v30

    move-object/from16 v13, v33

    const/16 v16, 0x8

    goto/16 :goto_3

    :cond_9
    move-wide/from16 v28, v7

    move/from16 v30, v14

    goto/16 :goto_11

    :cond_a
    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-wide/from16 v28, v7

    move-object/from16 v33, v13

    move/from16 v30, v14

    move-wide/from16 v24, v15

    iget-object v1, v5, Lk/m0;->b:[Ljava/lang/Object;

    iget-object v2, v5, Lk/m0;->a:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_15

    const/4 v7, 0x0

    :goto_9
    aget-wide v13, v2, v7

    move-object v8, v1

    move-object v10, v2

    not-long v1, v13

    shl-long v1, v1, v17

    and-long/2addr v1, v13

    and-long v1, v1, v22

    cmp-long v1, v1, v22

    if-eqz v1, :cond_14

    sub-int v1, v7, v3

    not-int v1, v1

    ushr-int/lit8 v1, v1, 0x1f

    const/16 v16, 0x8

    rsub-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_13

    and-long v31, v13, v24

    cmp-long v15, v31, v19

    if-gez v15, :cond_11

    shl-int/lit8 v15, v7, 0x3

    add-int/2addr v15, v2

    aget-object v15, v8, v15

    check-cast v15, Lm2/w;

    move/from16 v31, v2

    sget-object v2, Lm2/t;->B:Lm2/w;

    invoke-static {v15, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    iget-object v15, v11, Lf2/j2;->a:Lm2/m;

    iget-object v15, v15, Lm2/m;->l:Lk/m0;

    invoke-virtual {v15, v2}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_b

    move-object/from16 v15, v21

    :cond_b
    check-cast v15, Ljava/util/List;

    if-eqz v15, :cond_c

    invoke-static {v15}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lp2/g;

    goto :goto_b

    :cond_c
    move-object/from16 v15, v21

    :goto_b
    invoke-virtual {v5, v2}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_d

    move-object/from16 v2, v21

    :cond_d
    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_e

    invoke-static {v2}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp2/g;

    goto :goto_c

    :cond_e
    move-object/from16 v2, v21

    :goto_c
    invoke-static {v15, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v15, v0, Lh1/d;->n:Lk0/l;

    if-nez v15, :cond_f

    goto :goto_e

    :cond_f
    move-object/from16 v34, v10

    move-object/from16 v32, v11

    int-to-long v10, v12

    invoke-virtual {v15, v10, v11}, Lk0/l;->i(J)Landroid/view/autofill/AutofillId;

    move-result-object v10

    if-eqz v10, :cond_10

    iget-object v11, v15, Lk0/l;->n:Ljava/lang/Object;

    check-cast v11, Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {v11, v10, v2}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_10
    invoke-static/range {v33 .. v33}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object v0

    throw v0

    :goto_d
    const/16 v2, 0x8

    goto :goto_f

    :cond_11
    move/from16 v31, v2

    :cond_12
    :goto_e
    move-object/from16 v34, v10

    move-object/from16 v32, v11

    goto :goto_d

    :goto_f
    shr-long/2addr v13, v2

    add-int/lit8 v10, v31, 0x1

    move v2, v10

    move-object/from16 v11, v32

    move-object/from16 v10, v34

    goto/16 :goto_a

    :cond_13
    move-object/from16 v34, v10

    move-object/from16 v32, v11

    const/16 v2, 0x8

    if-ne v1, v2, :cond_15

    goto :goto_10

    :cond_14
    move-object/from16 v34, v10

    move-object/from16 v32, v11

    :goto_10
    if-eq v7, v3, :cond_15

    add-int/lit8 v7, v7, 0x1

    move-object v1, v8

    move-object/from16 v11, v32

    move-object/from16 v2, v34

    goto/16 :goto_9

    :cond_15
    :goto_11
    const/16 v2, 0x8

    goto :goto_12

    :cond_16
    const-string v0, "no value for specified key"

    invoke-static {v0}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object v0

    throw v0

    :cond_17
    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-wide/from16 v28, v7

    move/from16 v17, v11

    move-wide/from16 v22, v12

    move/from16 v30, v14

    move v2, v10

    :goto_12
    shr-long v7, v28, v2

    add-int/lit8 v14, v30, 0x1

    move-object/from16 v1, p1

    move v10, v2

    move/from16 v11, v17

    move-wide/from16 v12, v22

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    goto/16 :goto_1

    :cond_18
    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move v2, v10

    if-ne v9, v2, :cond_1a

    goto :goto_13

    :cond_19
    move-object/from16 v26, v2

    move-object/from16 v27, v3

    :goto_13
    if-eq v6, v4, :cond_1a

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    goto/16 :goto_0

    :cond_1a
    return-void
.end method

.method public final g(Lm2/p;Li9/e;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    invoke-static {v0, p1}, Lm2/p;->j(ILm2/p;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lm2/p;

    invoke-virtual {p0}, Lh1/d;->h()Lk/k;

    move-result-object v5

    iget v4, v4, Lm2/p;->g:I

    invoke-virtual {v5, v4}, Lk/k;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4, v3}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final h()Lk/k;
    .locals 2

    iget-boolean v0, p0, Lh1/d;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh1/d;->r:Z

    iget-object v0, p0, Lh1/d;->l:Lf2/y;

    invoke-virtual {v0}, Lf2/y;->getSemanticsOwner()Lm2/r;

    move-result-object v0

    sget-object v1, Lh1/c;->l:Lh1/c;

    invoke-static {v0, v1}, Lm2/s;->b(Lm2/r;Li9/c;)Lk/x;

    move-result-object v0

    iput-object v0, p0, Lh1/d;->u:Lk/x;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lh1/d;->v:J

    :cond_0
    iget-object p0, p0, Lh1/d;->u:Lk/x;

    return-object p0
.end method

.method public final i()Z
    .locals 0

    iget-object p0, p0, Lh1/d;->n:Lk0/l;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final j()V
    .locals 8

    iget-object v0, p0, Lh1/d;->n:Lk0/l;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, v0, Lk0/l;->n:Ljava/lang/Object;

    check-cast v1, Landroid/view/contentcapture/ContentCaptureSession;

    iget-object p0, p0, Lh1/d;->o:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh1/e;

    iget-object v7, v6, Lh1/e;->c:Lh1/f;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_2

    if-ne v7, v5, :cond_1

    iget v5, v6, Lh1/e;->a:I

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Lk0/l;->i(J)Landroid/view/autofill/AutofillId;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v1, v5}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewDisappeared(Landroid/view/autofill/AutofillId;)V

    goto :goto_1

    :cond_1
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    iget-object v5, v6, Lh1/e;->d:Lb0/l1;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v5, Landroid/view/ViewStructure;

    invoke-virtual {v1, v5}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewAppeared(Landroid/view/ViewStructure;)V

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, v0, Lk0/l;->m:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    new-array v2, v5, [J

    const-wide/high16 v4, -0x8000000000000000L

    aput-wide v4, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewsDisappeared(Landroid/view/autofill/AutofillId;[J)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    :goto_2
    return-void
.end method

.method public final k(Lm2/p;Lf2/j2;)V
    .locals 5

    new-instance v0, Lc2/m0;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p2, p0}, Lc2/m0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lh1/d;->g(Lm2/p;Li9/e;)V

    const/4 p2, 0x4

    invoke-static {p2, p1}, Lm2/p;->j(ILm2/p;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm2/p;

    invoke-virtual {p0}, Lh1/d;->h()Lk/k;

    move-result-object v2

    iget v3, v1, Lm2/p;->g:I

    invoke-virtual {v2, v3}, Lk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lh1/d;->w:Lk/x;

    invoke-virtual {v2, v3}, Lk/k;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Lf2/j2;

    invoke-virtual {p0, v1, v2}, Lh1/d;->k(Lm2/p;Lf2/j2;)V

    goto :goto_1

    :cond_0
    const-string p0, "node not present in pruned tree before this change"

    invoke-static {p0}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final l(ILm2/p;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0}, Lh1/d;->i()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Lm2/p;->d:Lm2/m;

    iget-object v2, v2, Lm2/m;->l:Lk/m0;

    sget-object v3, Lm2/t;->D:Lm2/w;

    invoke-virtual {v2, v3}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    move-object v3, v4

    :cond_1
    check-cast v3, Ljava/lang/Boolean;

    iget-object v5, v0, Lh1/d;->q:Lh1/a;

    sget-object v6, Lh1/a;->l:Lh1/a;

    if-ne v5, v6, :cond_3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v3, Lm2/l;->m:Lm2/w;

    invoke-virtual {v2, v3}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v2, v4

    :cond_2
    check-cast v2, Lm2/a;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lm2/a;->b:Lt8/e;

    check-cast v2, Li9/c;

    if-eqz v2, :cond_5

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    iget-object v5, v0, Lh1/d;->q:Lh1/a;

    sget-object v6, Lh1/a;->m:Lh1/a;

    if-ne v5, v6, :cond_5

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lm2/l;->m:Lm2/w;

    invoke-virtual {v2, v3}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v2, v4

    :cond_4
    check-cast v2, Lm2/a;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lm2/a;->b:Lt8/e;

    check-cast v2, Li9/c;

    if-eqz v2, :cond_5

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    :cond_5
    :goto_0
    iget v6, v1, Lm2/p;->g:I

    iget-object v2, v0, Lh1/d;->n:Lk0/l;

    if-nez v2, :cond_6

    :goto_1
    move-object v10, v4

    goto/16 :goto_3

    :cond_6
    iget-object v3, v0, Lh1/d;->l:Lf2/y;

    invoke-virtual {v3}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v1}, Lm2/p;->l()Lm2/p;

    move-result-object v5

    iget v7, v1, Lm2/p;->g:I

    if-eqz v5, :cond_7

    iget v3, v5, Lm2/p;->g:I

    int-to-long v8, v3

    invoke-virtual {v2, v8, v9}, Lk0/l;->i(J)Landroid/view/autofill/AutofillId;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    int-to-long v8, v7

    iget-object v2, v2, Lk0/l;->n:Ljava/lang/Object;

    check-cast v2, Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {v2, v3, v8, v9}, Landroid/view/contentcapture/ContentCaptureSession;->newVirtualViewStructure(Landroid/view/autofill/AutofillId;J)Landroid/view/ViewStructure;

    move-result-object v10

    new-instance v2, Lb0/l1;

    const/16 v3, 0x11

    invoke-direct {v2, v3, v10}, Lb0/l1;-><init>(ILjava/lang/Object;)V

    iget-object v3, v1, Lm2/p;->d:Lm2/m;

    sget-object v5, Lm2/t;->K:Lm2/w;

    iget-object v8, v3, Lm2/m;->l:Lk/m0;

    invoke-virtual {v8, v5}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v10}, Landroid/view/ViewStructure;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_9

    const-string v9, "android.view.contentcapture.EventTimestamp"

    iget-wide v11, v0, Lh1/d;->v:J

    invoke-virtual {v5, v9, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v9, "android.view.ViewStructure.extra.EXTRA_VIEW_NODE_INDEX"

    move/from16 v11, p1

    invoke-virtual {v5, v9, v11}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_9
    sget-object v5, Lm2/t;->z:Lm2/w;

    invoke-virtual {v8, v5}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_a

    move-object v5, v4

    :cond_a
    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_b

    invoke-virtual {v10, v7, v4, v4, v5}, Landroid/view/ViewStructure;->setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    sget-object v5, Lm2/t;->m:Lm2/w;

    invoke-virtual {v8, v5}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_c

    move-object v5, v4

    :cond_c
    check-cast v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_d

    const-string v5, "android.widget.ViewGroup"

    invoke-virtual {v10, v5}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    :cond_d
    sget-object v5, Lm2/t;->B:Lm2/w;

    invoke-virtual {v8, v5}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_e

    move-object v5, v4

    :cond_e
    check-cast v5, Ljava/util/List;

    const/16 v7, 0x3e

    const-string v9, "\n"

    if-eqz v5, :cond_f

    const-string v11, "android.widget.TextView"

    invoke-virtual {v10, v11}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    invoke-static {v5, v9, v4, v7}, Ld3/a;->a(Ljava/util/List;Ljava/lang/String;Lp0/e;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    sget-object v5, Lm2/t;->F:Lm2/w;

    invoke-virtual {v8, v5}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_10

    move-object v5, v4

    :cond_10
    check-cast v5, Lp2/g;

    if-eqz v5, :cond_11

    const-string v11, "android.widget.EditText"

    invoke-virtual {v10, v11}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    sget-object v5, Lm2/t;->a:Lm2/w;

    invoke-virtual {v8, v5}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_12

    move-object v5, v4

    :cond_12
    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_13

    invoke-static {v5, v9, v4, v7}, Ld3/a;->a(Ljava/util/List;Ljava/lang/String;Lp0/e;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/view/ViewStructure;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_13
    sget-object v5, Lm2/t;->y:Lm2/w;

    invoke-virtual {v8, v5}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_14

    move-object v5, v4

    :cond_14
    check-cast v5, Lm2/h;

    if-eqz v5, :cond_15

    iget v5, v5, Lm2/h;->a:I

    invoke-static {v5}, Lf2/k0;->q(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-virtual {v10, v5}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    :cond_15
    invoke-static {v3}, Lf2/k0;->k(Lm2/m;)Lp2/j0;

    move-result-object v3

    if-eqz v3, :cond_16

    iget-object v3, v3, Lp2/j0;->a:Lp2/i0;

    iget-object v5, v3, Lp2/i0;->b:Lp2/m0;

    iget-object v3, v3, Lp2/i0;->g:Lb3/c;

    iget-object v5, v5, Lp2/m0;->a:Lp2/e0;

    iget-wide v7, v5, Lp2/e0;->b:J

    invoke-static {v7, v8}, Lb3/o;->c(J)F

    move-result v5

    invoke-interface {v3}, Lb3/c;->a()F

    move-result v7

    mul-float/2addr v7, v5

    invoke-interface {v3}, Lb3/c;->S()F

    move-result v3

    mul-float/2addr v3, v7

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v5, v5, v5}, Landroid/view/ViewStructure;->setTextStyle(FIII)V

    :cond_16
    invoke-virtual {v1}, Lm2/p;->d()Le2/h1;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Le2/h1;->U0()Lf1/q;

    move-result-object v5

    iget-boolean v5, v5, Lf1/q;->y:Z

    if-eqz v5, :cond_17

    move-object v4, v3

    :cond_17
    if-eqz v4, :cond_18

    invoke-virtual {v1, v4}, Lm2/p;->a(Le2/h1;)Ll1/c;

    move-result-object v3

    goto :goto_2

    :cond_18
    sget-object v3, Ll1/c;->e:Ll1/c;

    :goto_2
    iget v4, v3, Ll1/c;->a:F

    float-to-int v11, v4

    iget v5, v3, Ll1/c;->b:F

    float-to-int v12, v5

    iget v7, v3, Ll1/c;->c:F

    sub-float/2addr v7, v4

    float-to-int v15, v7

    iget v3, v3, Ll1/c;->d:F

    sub-float/2addr v3, v5

    float-to-int v3, v3

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v16, v3

    invoke-virtual/range {v10 .. v16}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    move-object v10, v2

    :goto_3
    if-nez v10, :cond_19

    goto :goto_4

    :cond_19
    new-instance v5, Lh1/e;

    iget-wide v7, v0, Lh1/d;->v:J

    sget-object v9, Lh1/f;->l:Lh1/f;

    invoke-direct/range {v5 .. v10}, Lh1/e;-><init>(IJLh1/f;Lb0/l1;)V

    iget-object v2, v0, Lh1/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    new-instance v2, Lc2/z;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v0}, Lc2/z;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lh1/d;->g(Lm2/p;Li9/e;)V

    return-void
.end method

.method public final m(Lm2/p;)V
    .locals 7

    invoke-virtual {p0}, Lh1/d;->i()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v2, p1, Lm2/p;->g:I

    new-instance v1, Lh1/e;

    iget-wide v3, p0, Lh1/d;->v:J

    sget-object v5, Lh1/f;->m:Lh1/f;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lh1/e;-><init>(IJLh1/f;Lb0/l1;)V

    iget-object v0, p0, Lh1/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    invoke-static {v0, p1}, Lm2/p;->j(ILm2/p;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm2/p;

    invoke-virtual {p0, v2}, Lh1/d;->m(Lm2/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final n()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lh1/d;->w:Lk/x;

    invoke-virtual {v1}, Lk/x;->c()V

    invoke-virtual {v0}, Lh1/d;->h()Lk/k;

    move-result-object v2

    iget-object v3, v2, Lk/k;->b:[I

    iget-object v4, v2, Lk/k;->c:[Ljava/lang/Object;

    iget-object v2, v2, Lk/k;->a:[J

    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_3

    const/4 v7, 0x0

    :goto_0
    aget-wide v8, v2, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    sub-int v10, v7, v5

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_1

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_0

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    aget v14, v3, v13

    aget-object v13, v4, v13

    check-cast v13, Lm2/q;

    new-instance v15, Lf2/j2;

    iget-object v13, v13, Lm2/q;->a:Lm2/p;

    invoke-virtual {v0}, Lh1/d;->h()Lk/k;

    move-result-object v6

    invoke-direct {v15, v13, v6}, Lf2/j2;-><init>(Lm2/p;Lk/k;)V

    invoke-virtual {v1, v14, v15}, Lk/x;->h(ILjava/lang/Object;)V

    :cond_0
    shr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    if-ne v10, v11, :cond_3

    :cond_2
    if-eq v7, v5, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Lf2/j2;

    iget-object v2, v0, Lh1/d;->l:Lf2/y;

    invoke-virtual {v2}, Lf2/y;->getSemanticsOwner()Lm2/r;

    move-result-object v2

    invoke-virtual {v2}, Lm2/r;->a()Lm2/p;

    move-result-object v2

    invoke-virtual {v0}, Lh1/d;->h()Lk/k;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lf2/j2;-><init>(Lm2/p;Lk/k;)V

    iput-object v1, v0, Lh1/d;->x:Lf2/j2;

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lh1/d;->t:Landroid/os/Handler;

    iget-object v0, p0, Lh1/d;->z:Landroidx/lifecycle/f0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lh1/d;->n:Lk0/l;

    return-void
.end method
