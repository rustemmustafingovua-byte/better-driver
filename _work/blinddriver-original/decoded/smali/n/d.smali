.class public abstract Ln/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln/l;

.field public static final b:Ln/m;

.field public static final c:Ln/n;

.field public static final d:Ln/o;

.field public static final e:Ln/l;

.field public static final f:Ln/m;

.field public static final g:Ln/n;

.field public static final h:Ln/o;

.field public static final i:[F

.field public static final j:Ln/o1;

.field public static final k:Ln/o1;

.field public static final l:Ln/o1;

.field public static final m:Ln/o1;

.field public static final n:Ln/o1;

.field public static final o:Ln/o1;

.field public static final p:Ln/o1;

.field public static final q:Ln/o1;

.field public static final r:Ln/o1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Ln/l;

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v0, v1}, Ln/l;-><init>(F)V

    sput-object v0, Ln/d;->a:Ln/l;

    new-instance v0, Ln/m;

    invoke-direct {v0, v1, v1}, Ln/m;-><init>(FF)V

    sput-object v0, Ln/d;->b:Ln/m;

    new-instance v0, Ln/n;

    invoke-direct {v0, v1, v1, v1}, Ln/n;-><init>(FFF)V

    sput-object v0, Ln/d;->c:Ln/n;

    new-instance v0, Ln/o;

    invoke-direct {v0, v1, v1, v1, v1}, Ln/o;-><init>(FFFF)V

    sput-object v0, Ln/d;->d:Ln/o;

    new-instance v0, Ln/l;

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v0, v1}, Ln/l;-><init>(F)V

    sput-object v0, Ln/d;->e:Ln/l;

    new-instance v0, Ln/m;

    invoke-direct {v0, v1, v1}, Ln/m;-><init>(FF)V

    sput-object v0, Ln/d;->f:Ln/m;

    new-instance v0, Ln/n;

    invoke-direct {v0, v1, v1, v1}, Ln/n;-><init>(FFF)V

    sput-object v0, Ln/d;->g:Ln/n;

    new-instance v0, Ln/o;

    invoke-direct {v0, v1, v1, v1, v1}, Ln/o;-><init>(FFFF)V

    sput-object v0, Ln/d;->h:Ln/o;

    const/16 v0, 0x5b

    new-array v0, v0, [F

    sput-object v0, Ln/d;->i:[F

    new-instance v0, Lgd/e;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lgd/e;-><init>(I)V

    new-instance v1, Ln/p1;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ln/p1;-><init>(I)V

    new-instance v2, Ln/o1;

    invoke-direct {v2, v0, v1}, Ln/o1;-><init>(Li9/c;Li9/c;)V

    sput-object v2, Ln/d;->j:Ln/o1;

    new-instance v0, Lgd/e;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lgd/e;-><init>(I)V

    new-instance v1, Lgd/e;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lgd/e;-><init>(I)V

    new-instance v2, Ln/o1;

    invoke-direct {v2, v0, v1}, Ln/o1;-><init>(Li9/c;Li9/c;)V

    sput-object v2, Ln/d;->k:Ln/o1;

    new-instance v0, Lgd/e;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lgd/e;-><init>(I)V

    new-instance v1, Lgd/e;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lgd/e;-><init>(I)V

    new-instance v2, Ln/o1;

    invoke-direct {v2, v0, v1}, Ln/o1;-><init>(Li9/c;Li9/c;)V

    sput-object v2, Ln/d;->l:Ln/o1;

    new-instance v0, Lgd/e;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lgd/e;-><init>(I)V

    new-instance v1, Lgd/e;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lgd/e;-><init>(I)V

    new-instance v2, Ln/o1;

    invoke-direct {v2, v0, v1}, Ln/o1;-><init>(Li9/c;Li9/c;)V

    sput-object v2, Ln/d;->m:Ln/o1;

    new-instance v0, Lgd/e;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lgd/e;-><init>(I)V

    new-instance v1, Lgd/e;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lgd/e;-><init>(I)V

    new-instance v2, Ln/o1;

    invoke-direct {v2, v0, v1}, Ln/o1;-><init>(Li9/c;Li9/c;)V

    sput-object v2, Ln/d;->n:Ln/o1;

    new-instance v0, Lgd/e;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lgd/e;-><init>(I)V

    new-instance v1, Lgd/e;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Lgd/e;-><init>(I)V

    new-instance v2, Ln/o1;

    invoke-direct {v2, v0, v1}, Ln/o1;-><init>(Li9/c;Li9/c;)V

    sput-object v2, Ln/d;->o:Ln/o1;

    new-instance v0, Lgd/e;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lgd/e;-><init>(I)V

    new-instance v1, Lgd/e;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lgd/e;-><init>(I)V

    new-instance v2, Ln/o1;

    invoke-direct {v2, v0, v1}, Ln/o1;-><init>(Li9/c;Li9/c;)V

    sput-object v2, Ln/d;->p:Ln/o1;

    new-instance v0, Lgd/e;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lgd/e;-><init>(I)V

    new-instance v1, Ln/p1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ln/p1;-><init>(I)V

    new-instance v2, Ln/o1;

    invoke-direct {v2, v0, v1}, Ln/o1;-><init>(Li9/c;Li9/c;)V

    sput-object v2, Ln/d;->q:Ln/o1;

    new-instance v0, Ln/p1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ln/p1;-><init>(I)V

    new-instance v1, Ln/p1;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ln/p1;-><init>(I)V

    new-instance v2, Ln/o1;

    invoke-direct {v2, v0, v1}, Ln/o1;-><init>(Li9/c;Li9/c;)V

    sput-object v2, Ln/d;->r:Ln/o1;

    return-void
.end method

.method public static a(F)Ln/c;
    .locals 4

    new-instance v0, Ln/c;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const v1, 0x3c23d70a    # 0.01f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x8

    sget-object v3, Ln/d;->j:Ln/o1;

    invoke-direct {v0, p0, v3, v1, v2}, Ln/c;-><init>(Ljava/lang/Object;Ln/o1;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static b(FI)Ln/k;
    .locals 10

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move p0, v0

    :cond_0
    new-instance v1, Ln/k;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-instance v4, Ln/l;

    invoke-direct {v4, p0}, Ln/l;-><init>(F)V

    sget-object v2, Ln/d;->j:Ln/o1;

    const-wide/high16 v5, -0x8000000000000000L

    const-wide/high16 v7, -0x8000000000000000L

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Ln/k;-><init>(Ln/o1;Ljava/lang/Object;Ln/p;JJZ)V

    return-object v1
.end method

.method public static final c(Ln/k;Ln/f;JLi9/c;La9/c;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v3, p1

    move-object/from16 v0, p5

    sget-object v8, Lf2/u1;->l:Lf2/u1;

    instance-of v1, v0, Ln/x0;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ln/x0;

    iget v2, v1, Ln/x0;->q:I

    const/high16 v4, -0x80000000

    and-int v5, v2, v4

    if-eqz v5, :cond_0

    sub-int/2addr v2, v4

    iput v2, v1, Ln/x0;->q:I

    :goto_0
    move-object v9, v1

    goto :goto_1

    :cond_0
    new-instance v1, Ln/x0;

    invoke-direct {v1, v0}, La9/c;-><init>(Ly8/c;)V

    goto :goto_0

    :goto_1
    iget-object v0, v9, Ln/x0;->p:Ljava/lang/Object;

    sget-object v10, Lz8/a;->l:Lz8/a;

    iget v1, v9, Ln/x0;->q:I

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v12, :cond_1

    if-ne v1, v11, :cond_2

    :cond_1
    iget-object v1, v9, Ln/x0;->o:Lj9/y;

    iget-object v2, v9, Ln/x0;->n:Li9/c;

    iget-object v3, v9, Ln/x0;->m:Ln/f;

    iget-object v4, v9, Ln/x0;->l:Ln/k;

    :try_start_0
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    invoke-interface {v3, v0, v1}, Ln/f;->f(J)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v3, v0, v1}, Ln/f;->d(J)Ln/p;

    move-result-object v16

    new-instance v1, Lj9/y;

    invoke-direct {v1}, Lj9/y;-><init>()V

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, p2, v4

    if-nez v0, :cond_7

    :try_start_1
    invoke-interface {v9}, Ly8/c;->getContext()Ly8/h;

    move-result-object v0

    invoke-static {v0}, Ln/d;->j(Ly8/h;)F

    move-result v6

    new-instance v0, Ln/u0;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v5, p0

    move-object/from16 v7, p4

    move-object v2, v14

    move-object/from16 v4, v16

    :try_start_2
    invoke-direct/range {v0 .. v7}, Ln/u0;-><init>(Lj9/y;Ljava/lang/Object;Ln/f;Ln/p;Ln/k;FLi9/c;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v7, v1

    :try_start_3
    iput-object v5, v9, Ln/x0;->l:Ln/k;

    iput-object v3, v9, Ln/x0;->m:Ln/f;

    move-object/from16 v6, p4

    iput-object v6, v9, Ln/x0;->n:Li9/c;

    iput-object v7, v9, Ln/x0;->o:Lj9/y;

    iput v12, v9, Ln/x0;->q:I

    invoke-interface {v3}, Ln/f;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ly8/c;->getContext()Ly8/h;

    move-result-object v1

    invoke-interface {v1, v8}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-interface {v9}, Ly8/c;->getContext()Ly8/h;

    move-result-object v1

    invoke-static {v1}, Lr0/r;->v(Ly8/h;)Lf2/x0;

    move-result-object v1

    invoke-virtual {v1, v0, v9}, Lf2/x0;->a(Li9/c;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_5
    new-instance v1, Ld1/o;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ld1/o;-><init>(Li9/c;I)V

    invoke-interface {v9}, Ly8/c;->getContext()Ly8/h;

    move-result-object v0

    invoke-static {v0}, Lr0/r;->v(Ly8/h;)Lf2/x0;

    move-result-object v0

    invoke-virtual {v0, v1, v9}, Lf2/x0;->a(Li9/c;Ly8/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    if-ne v0, v10, :cond_6

    goto/16 :goto_9

    :cond_6
    move-object v4, v5

    move-object v2, v6

    goto :goto_6

    :goto_3
    move-object v4, v5

    :goto_4
    move-object v1, v7

    goto/16 :goto_a

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    :goto_5
    move-object v7, v1

    move-object v4, v5

    goto/16 :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_5

    :cond_7
    move-object/from16 v5, p0

    move-object/from16 v6, p4

    move-object v7, v1

    :try_start_4
    new-instance v13, Ln/i;

    invoke-interface {v3}, Ln/f;->c()Ln/o1;

    move-result-object v15

    invoke-interface {v3}, Ln/f;->g()Ljava/lang/Object;

    move-result-object v19

    new-instance v0, Ln/v0;

    const/4 v1, 0x0

    invoke-direct {v0, v5, v1}, Ln/v0;-><init>(Ln/k;I)V

    move-wide/from16 v20, p2

    move-wide/from16 v17, p2

    move-object/from16 v22, v0

    invoke-direct/range {v13 .. v22}, Ln/i;-><init>(Ljava/lang/Object;Ln/o1;Ln/p;JLjava/lang/Object;JLi9/a;)V

    invoke-interface {v9}, Ly8/c;->getContext()Ly8/h;

    move-result-object v0

    invoke-static {v0}, Ln/d;->j(Ly8/h;)F

    move-result v0

    move-wide/from16 v1, p2

    move-object v4, v3

    move v3, v0

    move-object v0, v13

    invoke-static/range {v0 .. v6}, Ln/d;->i(Ln/i;JFLn/f;Ln/k;Li9/c;)V

    move-object v13, v0

    iput-object v13, v7, Lj9/y;->m:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 v4, p0

    move-object/from16 v3, p1

    move-object/from16 v2, p4

    :goto_6
    move-object v1, v7

    :cond_8
    :goto_7
    :try_start_5
    iget-object v0, v1, Lj9/y;->m:Ljava/lang/Object;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v0, Ln/i;

    iget-object v0, v0, Ln/i;->i:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v9}, Ly8/c;->getContext()Ly8/h;

    move-result-object v0

    invoke-static {v0}, Ln/d;->j(Ly8/h;)F

    move-result v0

    new-instance v5, Ln/w0;
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_0

    move/from16 p2, v0

    move-object/from16 p1, v1

    move-object/from16 p5, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p0, v5

    :try_start_6
    invoke-direct/range {p0 .. p5}, Ln/w0;-><init>(Lj9/y;FLn/f;Ln/k;Li9/c;)V
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v2, p5

    :try_start_7
    iput-object v4, v9, Ln/x0;->l:Ln/k;

    iput-object v3, v9, Ln/x0;->m:Ln/f;

    iput-object v2, v9, Ln/x0;->n:Li9/c;

    iput-object v1, v9, Ln/x0;->o:Lj9/y;

    iput v11, v9, Ln/x0;->q:I

    invoke-interface {v3}, Ln/f;->a()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v9}, Ly8/c;->getContext()Ly8/h;

    move-result-object v5

    invoke-interface {v5, v8}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v5

    if-nez v5, :cond_9

    invoke-interface {v9}, Ly8/c;->getContext()Ly8/h;

    move-result-object v5

    invoke-static {v5}, Lr0/r;->v(Ly8/h;)Lf2/x0;

    move-result-object v5

    invoke-virtual {v5, v0, v9}, Lf2/x0;->a(Li9/c;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8

    :cond_9
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_a
    new-instance v5, Ld1/o;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6}, Ld1/o;-><init>(Li9/c;I)V

    invoke-interface {v9}, Ly8/c;->getContext()Ly8/h;

    move-result-object v0

    invoke-static {v0}, Lr0/r;->v(Ly8/h;)Lf2/x0;

    move-result-object v0

    invoke-virtual {v0, v5, v9}, Lf2/x0;->a(Li9/c;Ly8/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    if-ne v0, v10, :cond_8

    :goto_9
    return-object v10

    :catch_4
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    goto :goto_a

    :cond_b
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :catch_5
    move-exception v0

    move-object/from16 v4, p0

    goto/16 :goto_4

    :goto_a
    iget-object v2, v1, Lj9/y;->m:Ljava/lang/Object;

    check-cast v2, Ln/i;

    if-eqz v2, :cond_c

    iget-object v2, v2, Ln/i;->i:Lr0/e1;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_c
    iget-object v1, v1, Lj9/y;->m:Ljava/lang/Object;

    check-cast v1, Ln/i;

    if-eqz v1, :cond_d

    iget-wide v1, v1, Ln/i;->g:J

    iget-wide v5, v4, Ln/k;->o:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_d

    const/4 v1, 0x0

    iput-boolean v1, v4, Ln/k;->q:Z

    :cond_d
    throw v0
.end method

.method public static d(FLn/j;Li9/e;La9/i;I)Ljava/lang/Object;
    .locals 14

    and-int/lit8 v0, p4, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x7

    const/4 v0, 0x0

    invoke-static {v1, v1, v0, p1}, Ln/d;->m(FFLjava/lang/Object;I)Ln/r0;

    move-result-object p1

    :cond_0
    move-object v3, p1

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, v1}, Ljava/lang/Float;-><init>(F)V

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p0}, Ljava/lang/Float;-><init>(F)V

    new-instance p0, Ljava/lang/Float;

    invoke-direct {p0, v1}, Ljava/lang/Float;-><init>(F)V

    sget-object v4, Ln/d;->j:Ln/o1;

    iget-object p1, v4, Ln/o1;->a:Li9/c;

    invoke-interface {p1, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln/p;

    if-nez p0, :cond_1

    invoke-interface {p1, v5}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln/p;

    invoke-virtual {p0}, Ln/p;->c()Ln/p;

    move-result-object p0

    :cond_1
    move-object v7, p0

    new-instance v2, Ln/y0;

    invoke-direct/range {v2 .. v7}, Ln/y0;-><init>(Ln/j;Ln/o1;Ljava/lang/Object;Ljava/lang/Object;Ln/p;)V

    new-instance v8, Ln/k;

    const/16 p0, 0x38

    invoke-direct {v8, v4, v5, v7, p0}, Ln/k;-><init>(Ln/o1;Ljava/lang/Object;Ln/p;I)V

    new-instance v12, Lb0/a;

    const/16 p0, 0x11

    move-object/from16 p1, p2

    invoke-direct {v12, p0, p1}, Lb0/a;-><init>(ILjava/lang/Object;)V

    const-wide/high16 v10, -0x8000000000000000L

    move-object/from16 v13, p3

    move-object v9, v2

    invoke-static/range {v8 .. v13}, Ln/d;->c(Ln/k;Ln/f;JLi9/c;La9/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    sget-object v0, Lt8/z;->a:Lt8/z;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static final e(Ln/e0;FFLn/b0;Lr0/q;)Ln/c0;
    .locals 6

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lr0/m;->a:Lr0/e;

    if-ne p1, p2, :cond_0

    new-instance p1, Ln/c0;

    invoke-direct {p1, p0, v1, v3, p3}, Ln/c0;-><init>(Ln/e0;Ljava/lang/Float;Ljava/lang/Float;Ln/b0;)V

    invoke-virtual {p4, p1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_0
    move-object v2, p1

    check-cast v2, Ln/c0;

    invoke-virtual {p4, p3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-nez p1, :cond_1

    if-ne v0, p2, :cond_2

    :cond_1
    new-instance v0, Lh5/m;

    const/4 v5, 0x1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lh5/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    check-cast v0, Li9/a;

    invoke-static {v0, p4}, Lr0/r;->j(Li9/a;Lr0/q;)V

    invoke-virtual {p4, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p3

    if-nez p1, :cond_3

    if-ne p3, p2, :cond_4

    :cond_3
    new-instance p3, Lb0/r0;

    const/16 p1, 0xc

    invoke-direct {p3, p1, p0, v2}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p4, p3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    check-cast p3, Li9/c;

    invoke-static {v2, p3, p4}, Lr0/r;->c(Ljava/lang/Object;Li9/c;Lr0/q;)V

    return-object v2
.end method

.method public static final f(Ln/k;Ljava/lang/Float;Ln/x;Li9/c;La9/i;)Ljava/lang/Object;
    .locals 8

    iget-object v1, p0, Ln/k;->m:Lr0/e1;

    invoke-virtual {v1}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v5

    iget-object v4, p0, Ln/k;->l:Ln/o1;

    iget-object v7, p0, Ln/k;->n:Ln/p;

    new-instance v1, Ln/y0;

    move-object v6, p1

    move-object v3, p2

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Ln/y0;-><init>(Ln/j;Ln/o1;Ljava/lang/Object;Ljava/lang/Object;Ln/p;)V

    iget-wide v2, p0, Ln/k;->o:J

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Ln/d;->c(Ln/k;Ln/f;JLi9/c;La9/c;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lz8/a;->l:Lz8/a;

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method

.method public static final g(Ln/p;)Ln/p;
    .locals 4

    invoke-virtual {p0}, Ln/p;->c()Ln/p;

    move-result-object v0

    invoke-virtual {v0}, Ln/p;->b()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Ln/p;->a(I)F

    move-result v3

    invoke-virtual {v0, v3, v2}, Ln/p;->e(FI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static h(Ln/k;F)Ln/k;
    .locals 10

    iget-object v0, p0, Ln/k;->n:Ln/p;

    check-cast v0, Ln/l;

    iget v0, v0, Ln/l;->a:F

    iget-wide v5, p0, Ln/k;->o:J

    iget-wide v7, p0, Ln/k;->p:J

    iget-boolean v9, p0, Ln/k;->q:Z

    new-instance v1, Ln/k;

    iget-object v2, p0, Ln/k;->l:Ln/o1;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    new-instance v4, Ln/l;

    invoke-direct {v4, v0}, Ln/l;-><init>(F)V

    invoke-direct/range {v1 .. v9}, Ln/k;-><init>(Ln/o1;Ljava/lang/Object;Ln/p;JJZ)V

    return-object v1
.end method

.method public static final i(Ln/i;JFLn/f;Ln/k;Li9/c;)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-nez v0, :cond_0

    invoke-interface {p4}, Ln/f;->b()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Ln/i;->c:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    div-float/2addr v0, p3

    float-to-long v0, v0

    :goto_0
    iput-wide p1, p0, Ln/i;->g:J

    invoke-interface {p4, v0, v1}, Ln/f;->f(J)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Ln/i;->e:Lr0/e1;

    invoke-virtual {p2, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    invoke-interface {p4, v0, v1}, Ln/f;->d(J)Ln/p;

    move-result-object p1

    iput-object p1, p0, Ln/i;->f:Ln/p;

    invoke-interface {p4, v0, v1}, Ln/f;->e(J)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide p1, p0, Ln/i;->g:J

    iput-wide p1, p0, Ln/i;->h:J

    iget-object p1, p0, Ln/i;->i:Lr0/e1;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_1
    invoke-static {p0, p5}, Ln/d;->o(Ln/i;Ln/k;)V

    invoke-interface {p6, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final j(Ly8/h;)F
    .locals 1

    sget-object v0, Lf1/c;->A:Lf1/c;

    invoke-interface {p0, v0}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object p0

    check-cast p0, Lf1/t;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lf1/t;->q()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_1

    return p0

    :cond_1
    const-string v0, "negative scale factor"

    invoke-static {v0}, Ln/n0;->b(Ljava/lang/String;)V

    return p0
.end method

.method public static k(Ln/u;JI)Ln/b0;
    .locals 1

    sget-object v0, Ln/o0;->l:Ln/o0;

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    int-to-long p1, p1

    :cond_0
    new-instance p3, Ln/b0;

    invoke-direct {p3, p0, p1, p2}, Ln/b0;-><init>(Ln/u;J)V

    return-object p3
.end method

.method public static final l(Lr0/q;)Ln/e0;
    .locals 2

    invoke-virtual {p0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v0, v1, :cond_0

    new-instance v0, Ln/e0;

    invoke-direct {v0}, Ln/e0;-><init>()V

    invoke-virtual {p0, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_0
    check-cast v0, Ln/e0;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ln/e0;->a(Lr0/q;I)V

    return-object v0
.end method

.method public static m(FFLjava/lang/Object;I)Ln/r0;
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    const p1, 0x44bb8000    # 1500.0f

    :cond_1
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_2

    const/4 p2, 0x0

    :cond_2
    new-instance p3, Ln/r0;

    invoke-direct {p3, p0, p1, p2}, Ln/r0;-><init>(FFLjava/lang/Object;)V

    return-object p3
.end method

.method public static n(IILn/v;)Ln/n1;
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/16 p0, 0x12c

    :cond_0
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    sget-object p2, Ln/w;->a:Ln/r;

    :cond_1
    new-instance p1, Ln/n1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p2}, Ln/n1;-><init>(IILn/v;)V

    return-object p1
.end method

.method public static final o(Ln/i;Ln/k;)V
    .locals 5

    iget-object v0, p0, Ln/i;->e:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Ln/k;->m:Lr0/e1;

    invoke-virtual {v1, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v0, p1, Ln/k;->n:Ln/p;

    iget-object v1, p0, Ln/i;->f:Ln/p;

    invoke-virtual {v0}, Ln/p;->b()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ln/p;->a(I)F

    move-result v4

    invoke-virtual {v0, v4, v3}, Ln/p;->e(FI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Ln/i;->h:J

    iput-wide v0, p1, Ln/k;->p:J

    iget-wide v0, p0, Ln/i;->g:J

    iput-wide v0, p1, Ln/k;->o:J

    iget-object p0, p0, Ln/i;->i:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, p1, Ln/k;->q:Z

    return-void
.end method
