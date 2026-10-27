.class public final Lw/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/h2;


# static fields
.field public static final x:Lg5/c;


# instance fields
.field public final a:Lw/a;

.field public b:Z

.field public c:Lw/k;

.field public d:Z

.field public final e:Lf8/p2;

.field public final f:Lr0/e1;

.field public final g:Ls/i;

.field public h:F

.field public final i:Lr/m;

.field public final j:Z

.field public k:Le2/g0;

.field public final l:Lw/n;

.field public final m:Lx/e;

.field public final n:Lx/s;

.field public final o:Lr/a;

.field public final p:Lx/f0;

.field public final q:Lq3/k;

.field public final r:Lx/c0;

.field public final s:Lr0/u0;

.field public final t:Lr0/e1;

.field public final u:Lr0/e1;

.field public final v:Lr0/u0;

.field public final w:Lg5/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lsc/u0;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lsc/u0;-><init>(I)V

    new-instance v1, Lsc/t0;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Lsc/t0;-><init>(I)V

    new-instance v2, Lb0/x;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0}, Lb0/x;-><init>(ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {v0, v1}, Lj9/b0;->b(ILjava/lang/Object;)V

    new-instance v0, Lg5/c;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v2, v1}, Lg5/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lw/p;->x:Lg5/c;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 10

    new-instance v0, Lw/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lw/a;->a:I

    iput v1, v0, Lw/a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lw/p;->a:Lw/a;

    new-instance v0, Lf8/p2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lr0/b1;

    invoke-direct {v1, p1}, Lr0/b1;-><init>(I)V

    iput-object v1, v0, Lf8/p2;->b:Ljava/lang/Object;

    new-instance v1, Lr0/b1;

    invoke-direct {v1, p2}, Lr0/b1;-><init>(I)V

    iput-object v1, v0, Lf8/p2;->c:Ljava/lang/Object;

    new-instance p2, Lx/z;

    invoke-direct {p2, p1}, Lx/z;-><init>(I)V

    iput-object p2, v0, Lf8/p2;->e:Ljava/lang/Object;

    iput-object v0, p0, Lw/p;->e:Lf8/p2;

    sget-object p2, Lw/r;->a:Lw/k;

    sget-object v0, Lr0/e;->o:Lr0/e;

    new-instance v1, Lr0/e1;

    invoke-direct {v1, p2, v0}, Lr0/e1;-><init>(Ljava/lang/Object;Lr0/m2;)V

    iput-object v1, p0, Lw/p;->f:Lr0/e1;

    new-instance p2, Ls/i;

    invoke-direct {p2}, Ls/i;-><init>()V

    iput-object p2, p0, Lw/p;->g:Ls/i;

    new-instance p2, Lr0/o1;

    const/16 v1, 0x9

    invoke-direct {p2, v1, p0}, Lr0/o1;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lr/m;

    invoke-direct {v1, p2}, Lr/m;-><init>(Li9/c;)V

    iput-object v1, p0, Lw/p;->i:Lr/m;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lw/p;->j:Z

    new-instance p2, Lw/n;

    invoke-direct {p2, p0}, Lw/n;-><init>(Lw/p;)V

    iput-object p2, p0, Lw/p;->l:Lw/n;

    new-instance p2, Lx/e;

    invoke-direct {p2}, Lx/e;-><init>()V

    iput-object p2, p0, Lw/p;->m:Lx/e;

    new-instance p2, Lx/s;

    invoke-direct {p2}, Lx/s;-><init>()V

    iput-object p2, p0, Lw/p;->n:Lx/s;

    new-instance p2, Lr/a;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Lr/a;-><init>(I)V

    iput-object p2, p0, Lw/p;->o:Lr/a;

    new-instance p2, Lx/f0;

    new-instance v1, Lw/m;

    invoke-direct {v1, p0, p1}, Lw/m;-><init>(Lw/p;I)V

    invoke-direct {p2, v1}, Lx/f0;-><init>(Lw/m;)V

    iput-object p2, p0, Lw/p;->p:Lx/f0;

    new-instance p1, Lq3/k;

    const/16 p2, 0xa

    invoke-direct {p1, p2, p0}, Lq3/k;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lw/p;->q:Lq3/k;

    new-instance p1, Lx/c0;

    invoke-direct {p1}, Lx/c0;-><init>()V

    iput-object p1, p0, Lw/p;->r:Lx/c0;

    new-instance p1, Lr0/e1;

    sget-object p2, Lt8/z;->a:Lt8/z;

    invoke-direct {p1, p2, v0}, Lr0/e1;-><init>(Ljava/lang/Object;Lr0/m2;)V

    iput-object p1, p0, Lw/p;->s:Lr0/u0;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v1

    iput-object v1, p0, Lw/p;->t:Lr0/e1;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lw/p;->u:Lr0/e1;

    new-instance p1, Lr0/e1;

    invoke-direct {p1, p2, v0}, Lr0/e1;-><init>(Ljava/lang/Object;Lr0/m2;)V

    iput-object p1, p0, Lw/p;->v:Lr0/u0;

    new-instance p1, Lg5/c;

    const/16 p2, 0xe

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lg5/c;-><init>(IZ)V

    sget-object v2, Ln/d;->j:Ln/o1;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-instance v1, Ln/k;

    iget-object p2, v2, Ln/o1;->a:Li9/c;

    invoke-interface {p2, v3}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ln/p;

    const-wide/high16 v5, -0x8000000000000000L

    const-wide/high16 v7, -0x8000000000000000L

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Ln/k;-><init>(Ln/o1;Ljava/lang/Object;Ln/p;JJZ)V

    iput-object v1, p1, Lg5/c;->n:Ljava/lang/Object;

    iput-object p1, p0, Lw/p;->w:Lg5/c;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lw/p;->i:Lr/m;

    invoke-virtual {p0}, Lr/m;->a()Z

    move-result p0

    return p0
.end method

.method public final b(Lp/n1;Li9/e;La9/c;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p3, Lw/o;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lw/o;

    iget v1, v0, Lw/o;->p:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lw/o;->p:I

    goto :goto_0

    :cond_0
    new-instance v0, Lw/o;

    invoke-direct {v0, p0, p3}, Lw/o;-><init>(Lw/p;La9/c;)V

    :goto_0
    iget-object p3, v0, Lw/o;->n:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lw/o;->p:I

    sget-object v3, Lt8/z;->a:Lt8/z;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    return-object v3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, v0, Lw/o;->m:La9/i;

    move-object p2, p1

    check-cast p2, Li9/e;

    iget-object p1, v0, Lw/o;->l:Lp/n1;

    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    iget-object p3, p0, Lw/p;->f:Lr0/e1;

    invoke-virtual {p3}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p3

    sget-object v2, Lw/r;->a:Lw/k;

    if-ne p3, v2, :cond_8

    iput-object p1, v0, Lw/o;->l:Lp/n1;

    move-object p3, p2

    check-cast p3, La9/i;

    iput-object p3, v0, Lw/o;->m:La9/i;

    iput v6, v0, Lw/o;->p:I

    iget-object p3, p0, Lw/p;->m:Lx/e;

    iget-object v2, p3, Lx/e;->b:Lu9/l;

    if-nez v2, :cond_4

    new-instance v2, Lu9/l;

    invoke-direct {v2, v6}, Lu9/c1;-><init>(Z)V

    invoke-virtual {v2, v5}, Lu9/c1;->L(Lu9/v0;)V

    iput-object v2, p3, Lx/e;->b:Lu9/l;

    iget-object p3, p3, Lx/e;->a:Lx/d;

    if-eqz p3, :cond_4

    iget-boolean v7, p3, Lf1/q;->y:Z

    if-eqz v7, :cond_4

    invoke-virtual {p3}, Lx/d;->M0()V

    :cond_4
    sget-object p3, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    instance-of v7, p3, Lu9/s0;

    if-nez v7, :cond_6

    instance-of v2, p3, Lu9/n;

    if-nez v2, :cond_5

    invoke-static {p3}, Lu9/v;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_1

    :cond_5
    check-cast p3, Lu9/n;

    iget-object p0, p3, Lu9/n;->a:Ljava/lang/Throwable;

    throw p0

    :cond_6
    invoke-virtual {v2, p3}, Lu9/c1;->Y(Ljava/lang/Object;)I

    move-result p3

    if-ltz p3, :cond_4

    new-instance p3, Lu9/z0;

    invoke-static {v0}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object v7

    invoke-direct {p3, v7, v2}, Lu9/z0;-><init>(Ly8/c;Lu9/l;)V

    invoke-virtual {p3}, Lu9/g;->r()V

    new-instance v7, Lu9/h0;

    invoke-direct {v7, v4, p3}, Lu9/h0;-><init>(ILjava/lang/Object;)V

    invoke-static {v2, v6, v7}, Lu9/v;->q(Lu9/v0;ZLu9/y0;)Lu9/g0;

    move-result-object v2

    new-instance v6, Lu9/e;

    invoke-direct {v6, v4, v2}, Lu9/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3, v6}, Lu9/g;->u(Lu9/h1;)V

    invoke-virtual {p3}, Lu9/g;->q()Ljava/lang/Object;

    move-result-object p3

    sget-object v2, Lz8/a;->l:Lz8/a;

    :goto_1
    sget-object v2, Lz8/a;->l:Lz8/a;

    if-ne p3, v2, :cond_7

    goto :goto_2

    :cond_7
    move-object p3, v3

    :goto_2
    if-ne p3, v1, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    iput-object v5, v0, Lw/o;->l:Lp/n1;

    iput-object v5, v0, Lw/o;->m:La9/i;

    iput v4, v0, Lw/o;->p:I

    iget-object p0, p0, Lw/p;->i:Lr/m;

    invoke-virtual {p0, p1, p2, v0}, Lr/m;->b(Lp/n1;Li9/e;La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    :goto_4
    return-object v1

    :cond_9
    return-object v3
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lw/p;->u:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lw/p;->t:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final e(F)F
    .locals 0

    iget-object p0, p0, Lw/p;->i:Lr/m;

    invoke-virtual {p0, p1}, Lr/m;->e(F)F

    move-result p0

    return p0
.end method

.method public final f(Lw/k;ZZ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Ln/d;->j:Ln/o1;

    iget-object v3, v1, Lw/k;->k:Ljava/lang/Object;

    iget v4, v1, Lw/k;->n:I

    iget v5, v1, Lw/k;->b:I

    iget-object v6, v1, Lw/k;->a:Lw/l;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, v0, Lw/p;->p:Lx/f0;

    iput v7, v8, Lx/f0;->e:I

    const/16 v7, 0x3c

    iget-object v8, v0, Lw/p;->w:Lg5/c;

    iget-object v9, v0, Lw/p;->e:Lf8/p2;

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-nez p2, :cond_4

    iget-boolean v12, v0, Lw/p;->b:Z

    if-eqz v12, :cond_4

    iput-object v1, v0, Lw/p;->c:Lw/k;

    invoke-static {}, Ld1/w;->e()Ld1/g;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ld1/g;->e()Li9/c;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v11

    :goto_0
    invoke-static {v1}, Ld1/w;->h(Ld1/g;)Ld1/g;

    move-result-object v4

    :try_start_0
    iget-object v0, v8, Lg5/c;->n:Ljava/lang/Object;

    check-cast v0, Ln/k;

    iget-object v0, v0, Ln/k;->m:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    cmpg-float v0, v0, v10

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_3

    iget v0, v6, Lw/l;->a:I

    iget-object v6, v9, Lf8/p2;->b:Ljava/lang/Object;

    check-cast v6, Lr0/b1;

    invoke-virtual {v6}, Lr0/b1;->g()I

    move-result v6

    if-ne v0, v6, :cond_3

    iget-object v0, v9, Lf8/p2;->c:Ljava/lang/Object;

    check-cast v0, Lr0/b1;

    invoke-virtual {v0}, Lr0/b1;->g()I

    move-result v0

    if-ne v5, v0, :cond_3

    iget-object v0, v8, Lg5/c;->m:Ljava/lang/Object;

    check-cast v0, Lu9/j1;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v11}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    new-instance v0, Ln/k;

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v0, v2, v5, v11, v7}, Ln/k;-><init>(Ln/o1;Ljava/lang/Object;Ln/p;I)V

    iput-object v0, v8, Lg5/c;->n:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {v1, v4, v3}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    return-void

    :goto_2
    invoke-static {v1, v4, v3}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    throw v0

    :cond_4
    const/4 v12, 0x1

    if-eqz p2, :cond_5

    iput-boolean v12, v0, Lw/p;->b:Z

    :cond_5
    if-eqz v6, :cond_6

    iget v14, v6, Lw/l;->a:I

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    :goto_3
    if-nez v14, :cond_8

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    const/4 v14, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    move v14, v12

    :goto_5
    iget-object v15, v0, Lw/p;->u:Lr0/e1;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v15, v14}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-boolean v14, v1, Lw/k;->c:Z

    iget-object v15, v0, Lw/p;->t:Lr0/e1;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v15, v14}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget v14, v0, Lw/p;->h:F

    iget v15, v1, Lw/k;->d:F

    sub-float/2addr v14, v15

    iput v14, v0, Lw/p;->h:F

    iget-object v14, v0, Lw/p;->f:Lr0/e1;

    invoke-virtual {v14, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    const-string v14, "scrollOffset should be non-negative"

    if-eqz p3, :cond_b

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float v0, v5

    cmpl-float v0, v0, v10

    if-ltz v0, :cond_9

    goto :goto_6

    :cond_9
    const/4 v12, 0x0

    :goto_6
    if-nez v12, :cond_a

    invoke-static {v14}, Lt/b;->c(Ljava/lang/String;)V

    :cond_a
    iget-object v0, v9, Lf8/p2;->c:Ljava/lang/Object;

    check-cast v0, Lr0/b1;

    invoke-virtual {v0, v5}, Lr0/b1;->h(I)V

    goto/16 :goto_e

    :cond_b
    invoke-static {v3}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lw/l;

    invoke-static {v3}, Lu8/m;->m0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v10

    move-object/from16 v10, v16

    check-cast v10, Lw/l;

    const-wide/16 v18, -0x1

    if-eqz v15, :cond_c

    iget v15, v15, Lw/l;->a:I

    move-object/from16 v20, v14

    int-to-long v13, v15

    goto :goto_7

    :cond_c
    move-object/from16 v20, v14

    move-wide/from16 v13, v18

    :goto_7
    const-string v15, "firstVisibleItem:index"

    invoke-static {v15, v13, v14}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    if-eqz v10, :cond_d

    iget v10, v10, Lw/l;->a:I

    int-to-long v13, v10

    goto :goto_8

    :cond_d
    move-wide/from16 v13, v18

    :goto_8
    const-string v10, "lastVisibleItem:index"

    invoke-static {v10, v13, v14}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v6, :cond_e

    iget-object v10, v6, Lw/l;->i:Ljava/lang/Object;

    goto :goto_9

    :cond_e
    move-object v10, v11

    :goto_9
    iput-object v10, v9, Lf8/p2;->d:Ljava/lang/Object;

    iget-boolean v10, v9, Lf8/p2;->a:Z

    if-nez v10, :cond_f

    if-lez v4, :cond_13

    :cond_f
    iput-boolean v12, v9, Lf8/p2;->a:Z

    int-to-float v10, v5

    cmpl-float v10, v10, v17

    if-ltz v10, :cond_10

    move v10, v12

    goto :goto_a

    :cond_10
    const/4 v10, 0x0

    :goto_a
    if-nez v10, :cond_11

    invoke-static/range {v20 .. v20}, Lt/b;->c(Ljava/lang/String;)V

    :cond_11
    if-eqz v6, :cond_12

    iget v6, v6, Lw/l;->a:I

    goto :goto_b

    :cond_12
    const/4 v6, 0x0

    :goto_b
    invoke-virtual {v9, v6, v5}, Lf8/p2;->h(II)V

    :cond_13
    iget-boolean v5, v0, Lw/p;->j:Z

    if-eqz v5, :cond_19

    iget-object v5, v0, Lw/p;->a:Lw/a;

    iget v6, v5, Lw/a;->a:I

    iget-boolean v9, v5, Lw/a;->c:Z

    const/4 v10, -0x1

    if-eq v6, v10, :cond_15

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_15

    invoke-static {v1, v9}, Lw/a;->a(Lw/k;Z)I

    move-result v9

    if-eq v6, v9, :cond_15

    iput v10, v5, Lw/a;->a:I

    iget-object v6, v5, Lw/a;->b:Lx/e0;

    if-eqz v6, :cond_14

    invoke-interface {v6}, Lx/e0;->cancel()V

    :cond_14
    iput-object v11, v5, Lw/a;->b:Lx/e0;

    :cond_15
    iget v6, v5, Lw/a;->d:I

    if-eq v6, v10, :cond_18

    iget v9, v5, Lw/a;->e:F

    cmpg-float v9, v9, v17

    if-nez v9, :cond_16

    goto :goto_d

    :cond_16
    if-eq v6, v4, :cond_18

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    iget v3, v5, Lw/a;->e:F

    cmpg-float v3, v3, v17

    if-gez v3, :cond_17

    goto :goto_c

    :cond_17
    const/4 v12, 0x0

    :goto_c
    invoke-static {v1, v12}, Lw/a;->a(Lw/k;Z)I

    move-result v3

    if-ltz v3, :cond_18

    if-ge v3, v4, :cond_18

    iput v3, v5, Lw/a;->a:I

    iget-object v0, v0, Lw/p;->q:Lq3/k;

    invoke-static {v0, v3}, Lq3/k;->s(Lq3/k;I)Lx/e0;

    move-result-object v0

    iput-object v0, v5, Lw/a;->b:Lx/e0;

    :cond_18
    :goto_d
    iput v4, v5, Lw/a;->d:I

    :cond_19
    :goto_e
    if-eqz p2, :cond_1e

    iget v0, v1, Lw/k;->f:F

    iget-object v3, v1, Lw/k;->i:Lb3/c;

    iget-object v1, v1, Lw/k;->h:Lu9/t;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Lx/h0;->a:F

    invoke-interface {v3, v4}, Lb3/c;->V(F)F

    move-result v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_1a

    goto :goto_13

    :cond_1a
    invoke-static {}, Ld1/w;->e()Ld1/g;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Ld1/g;->e()Li9/c;

    move-result-object v4

    goto :goto_f

    :cond_1b
    move-object v4, v11

    :goto_f
    invoke-static {v3}, Ld1/w;->h(Ld1/g;)Ld1/g;

    move-result-object v5

    :try_start_1
    iget-object v6, v8, Lg5/c;->n:Ljava/lang/Object;

    check-cast v6, Ln/k;

    iget-object v6, v6, Ln/k;->m:Lr0/e1;

    invoke-virtual {v6}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    iget-object v9, v8, Lg5/c;->m:Ljava/lang/Object;

    check-cast v9, Lu9/j1;

    if-eqz v9, :cond_1c

    invoke-virtual {v9, v11}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    goto :goto_10

    :catchall_1
    move-exception v0

    goto :goto_12

    :cond_1c
    :goto_10
    iget-object v9, v8, Lg5/c;->n:Ljava/lang/Object;

    check-cast v9, Ln/k;

    iget-boolean v10, v9, Ln/k;->q:Z

    if-eqz v10, :cond_1d

    sub-float/2addr v6, v0

    invoke-static {v9, v6}, Ln/d;->h(Ln/k;F)Ln/k;

    move-result-object v0

    iput-object v0, v8, Lg5/c;->n:Ljava/lang/Object;

    goto :goto_11

    :cond_1d
    new-instance v6, Ln/k;

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v6, v2, v0, v11, v7}, Ln/k;-><init>(Ln/o1;Ljava/lang/Object;Ln/p;I)V

    iput-object v6, v8, Lg5/c;->n:Ljava/lang/Object;

    :goto_11
    new-instance v0, Lad/w;

    const/16 v2, 0x17

    invoke-direct {v0, v8, v11, v2}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    const/4 v2, 0x3

    invoke-static {v1, v11, v11, v0, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object v0

    iput-object v0, v8, Lg5/c;->m:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v3, v5, v4}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    goto :goto_13

    :goto_12
    invoke-static {v3, v5, v4}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    throw v0

    :cond_1e
    :goto_13
    return-void
.end method

.method public final g()Lw/k;
    .locals 0

    iget-object p0, p0, Lw/p;->f:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw/k;

    return-object p0
.end method

.method public final h(FLw/k;)V
    .locals 5

    iget-boolean v0, p0, Lw/p;->j:Z

    if-eqz v0, :cond_6

    iget-object v0, p2, Lw/k;->k:Ljava/lang/Object;

    iget-object v1, p2, Lw/k;->k:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v2, p0, Lw/p;->a:Lw/a;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p2, v0}, Lw/a;->a(Lw/k;Z)I

    move-result v3

    if-ltz v3, :cond_5

    iget v4, p2, Lw/k;->n:I

    if-ge v3, v4, :cond_5

    iget v4, v2, Lw/a;->a:I

    if-eq v3, v4, :cond_3

    iget-boolean v4, v2, Lw/a;->c:Z

    if-eq v4, v0, :cond_2

    const/4 v4, -0x1

    iput v4, v2, Lw/a;->a:I

    iget-object v4, v2, Lw/a;->b:Lx/e0;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lx/e0;->cancel()V

    :cond_1
    const/4 v4, 0x0

    iput-object v4, v2, Lw/a;->b:Lx/e0;

    :cond_2
    iput-boolean v0, v2, Lw/a;->c:Z

    iput v3, v2, Lw/a;->a:I

    iget-object p0, p0, Lw/p;->q:Lq3/k;

    invoke-static {p0, v3}, Lq3/k;->s(Lq3/k;I)Lx/e0;

    move-result-object p0

    iput-object p0, v2, Lw/a;->b:Lx/e0;

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {v1}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw/l;

    iget v0, p2, Lw/k;->q:I

    iget v1, p0, Lw/l;->l:I

    iget p0, p0, Lw/l;->m:I

    add-int/2addr v1, p0

    add-int/2addr v1, v0

    iget p0, p2, Lw/k;->m:I

    sub-int/2addr v1, p0

    int-to-float p0, v1

    neg-float p2, p1

    cmpg-float p0, p0, p2

    if-gez p0, :cond_5

    iget-object p0, v2, Lw/a;->b:Lx/e0;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lx/e0;->a()V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw/l;

    iget p2, p2, Lw/k;->l:I

    iget p0, p0, Lw/l;->l:I

    sub-int/2addr p2, p0

    int-to-float p0, p2

    cmpg-float p0, p0, p1

    if-gez p0, :cond_5

    iget-object p0, v2, Lw/a;->b:Lx/e0;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lx/e0;->a()V

    :cond_5
    :goto_1
    iput p1, v2, Lw/a;->e:F

    :cond_6
    return-void
.end method
