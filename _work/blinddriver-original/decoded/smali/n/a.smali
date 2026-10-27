.class public final Ln/a;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public l:Ln/k;

.field public m:Lj9/u;

.field public n:I

.field public final synthetic o:Ln/c;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ln/y0;

.field public final synthetic r:J

.field public final synthetic s:Li9/c;


# direct methods
.method public constructor <init>(Ln/c;Ljava/lang/Object;Ln/y0;JLi9/c;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Ln/a;->o:Ln/c;

    iput-object p2, p0, Ln/a;->p:Ljava/lang/Object;

    iput-object p3, p0, Ln/a;->q:Ln/y0;

    iput-wide p4, p0, Ln/a;->r:J

    iput-object p6, p0, Ln/a;->s:Li9/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p7}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ly8/c;)Ly8/c;
    .locals 8

    new-instance v0, Ln/a;

    iget-wide v4, p0, Ln/a;->r:J

    iget-object v6, p0, Ln/a;->s:Li9/c;

    iget-object v1, p0, Ln/a;->o:Ln/c;

    iget-object v2, p0, Ln/a;->p:Ljava/lang/Object;

    iget-object v3, p0, Ln/a;->q:Ln/y0;

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Ln/a;-><init>(Ln/c;Ljava/lang/Object;Ln/y0;JLi9/c;Ly8/c;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly8/c;

    invoke-virtual {p0, p1}, Ln/a;->create(Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Ln/a;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Ln/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v5, p0

    iget-object v1, v5, Ln/a;->q:Ln/y0;

    sget-object v6, Lz8/a;->l:Lz8/a;

    iget v0, v5, Ln/a;->n:I

    const/4 v2, 0x1

    iget-object v8, v5, Ln/a;->o:Ln/c;

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    iget-object v0, v5, Ln/a;->m:Lj9/u;

    iget-object v1, v5, Ln/a;->l:Ln/k;

    :try_start_0
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    :try_start_1
    iget-object v0, v8, Ln/c;->c:Ln/k;

    iget-object v3, v8, Ln/c;->a:Ln/o1;

    iget-object v3, v3, Ln/o1;->a:Li9/c;

    iget-object v4, v5, Ln/a;->p:Ljava/lang/Object;

    invoke-interface {v3, v4}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln/p;

    iput-object v3, v0, Ln/k;->n:Ln/p;

    iget-object v0, v1, Ln/y0;->c:Ljava/lang/Object;

    iget-object v3, v8, Ln/c;->e:Lr0/e1;

    invoke-virtual {v3, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v0, v8, Ln/c;->d:Lr0/e1;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v0, v8, Ln/c;->c:Ln/k;

    iget-object v3, v0, Ln/k;->m:Lr0/e1;

    invoke-virtual {v3}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v11

    iget-object v3, v0, Ln/k;->n:Ln/p;

    invoke-static {v3}, Ln/d;->g(Ln/p;)Ln/p;

    move-result-object v12

    iget-wide v13, v0, Ln/k;->o:J

    iget-boolean v3, v0, Ln/k;->q:Z

    new-instance v9, Ln/k;

    iget-object v10, v0, Ln/k;->l:Ln/o1;

    const-wide/high16 v15, -0x8000000000000000L

    move/from16 v17, v3

    invoke-direct/range {v9 .. v17}, Ln/k;-><init>(Ln/o1;Ljava/lang/Object;Ln/p;JJZ)V

    new-instance v11, Lj9/u;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iget-wide v3, v5, Ln/a;->r:J

    iget-object v10, v5, Ln/a;->s:Li9/c;

    new-instance v7, Lb0/p0;

    const/4 v12, 0x3

    invoke-direct/range {v7 .. v12}, Lb0/p0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v9, v5, Ln/a;->l:Ln/k;

    iput-object v11, v5, Ln/a;->m:Lj9/u;

    iput v2, v5, Ln/a;->n:I

    move-wide v2, v3

    move-object v4, v7

    move-object v0, v9

    invoke-static/range {v0 .. v5}, Ln/d;->c(Ln/k;Ln/f;JLi9/c;La9/c;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v0

    if-ne v1, v6, :cond_2

    return-object v6

    :cond_2
    move-object v1, v9

    move-object v0, v11

    :goto_0
    iget-boolean v0, v0, Lj9/u;->l:Z

    if-eqz v0, :cond_3

    sget-object v0, Ln/g;->l:Ln/g;

    goto :goto_1

    :cond_3
    sget-object v0, Ln/g;->m:Ln/g;

    :goto_1
    invoke-static {v8}, Ln/c;->b(Ln/c;)V

    new-instance v2, Ln/h;

    invoke-direct {v2, v1, v0}, Ln/h;-><init>(Ln/k;Ln/g;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :goto_2
    invoke-static {v8}, Ln/c;->b(Ln/c;)V

    throw v0
.end method
