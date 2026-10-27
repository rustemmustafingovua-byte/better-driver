.class public final Lr/j1;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:Lj9/u;

.field public m:Lj9/u;

.field public n:I

.field public o:I

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Lj9/w;

.field public final synthetic r:Lj9/y;

.field public final synthetic s:Lj9/y;

.field public final synthetic t:F

.field public final synthetic u:Lgc/f;

.field public final synthetic v:F

.field public final synthetic w:Lr/n2;


# direct methods
.method public constructor <init>(Lj9/w;Lj9/y;Lj9/y;FLgc/f;FLr/n2;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lr/j1;->q:Lj9/w;

    iput-object p2, p0, Lr/j1;->r:Lj9/y;

    iput-object p3, p0, Lr/j1;->s:Lj9/y;

    iput p4, p0, Lr/j1;->t:F

    iput-object p5, p0, Lr/j1;->u:Lgc/f;

    iput p6, p0, Lr/j1;->v:F

    iput-object p7, p0, Lr/j1;->w:Lr/n2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 9

    new-instance v0, Lr/j1;

    iget v6, p0, Lr/j1;->v:F

    iget-object v7, p0, Lr/j1;->w:Lr/n2;

    iget-object v1, p0, Lr/j1;->q:Lj9/w;

    iget-object v2, p0, Lr/j1;->r:Lj9/y;

    iget-object v3, p0, Lr/j1;->s:Lj9/y;

    iget v4, p0, Lr/j1;->t:F

    iget-object v5, p0, Lr/j1;->u:Lgc/f;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lr/j1;-><init>(Lj9/w;Lj9/y;Lj9/y;FLgc/f;FLr/n2;Ly8/c;)V

    iput-object p1, v0, Lr/j1;->p:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lr/l2;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lr/j1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/j1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/j1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v7, p0

    sget-object v8, Lz8/a;->l:Lz8/a;

    iget v0, v7, Lr/j1;->o:I

    iget-object v1, v7, Lr/j1;->s:Lj9/y;

    iget-object v2, v7, Lr/j1;->q:Lj9/w;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    iget-object v6, v7, Lr/j1;->r:Lj9/y;

    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_0

    iget-object v0, v7, Lr/j1;->m:Lj9/u;

    iget-object v9, v7, Lr/j1;->l:Lj9/u;

    iget-object v10, v7, Lr/j1;->p:Ljava/lang/Object;

    check-cast v10, Lr/l2;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v14, v0

    move v12, v3

    move v15, v4

    move/from16 v17, v5

    move-object v4, v6

    move-object/from16 v0, p1

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, v7, Lr/j1;->n:I

    iget-object v9, v7, Lr/j1;->l:Lj9/u;

    iget-object v10, v7, Lr/j1;->p:Ljava/lang/Object;

    check-cast v10, Lr/l2;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    :goto_0
    move-object v14, v9

    goto/16 :goto_3

    :cond_2
    iget-object v0, v7, Lr/j1;->m:Lj9/u;

    iget-object v9, v7, Lr/j1;->l:Lj9/u;

    iget-object v10, v7, Lr/j1;->p:Ljava/lang/Object;

    check-cast v10, Lr/l2;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object v14, v0

    move v12, v3

    move v15, v4

    move-object v4, v6

    move-object v13, v10

    move-object/from16 v0, p1

    move v10, v5

    goto/16 :goto_7

    :cond_3
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v0, v7, Lr/j1;->p:Ljava/lang/Object;

    check-cast v0, Lr/l2;

    new-instance v9, Lj9/u;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-boolean v5, v9, Lj9/u;->l:Z

    move-object v14, v9

    :goto_1
    iget-boolean v9, v14, Lj9/u;->l:Z

    sget-object v16, Lt8/z;->a:Lt8/z;

    if-eqz v9, :cond_c

    const/4 v9, 0x0

    iput-boolean v9, v14, Lj9/u;->l:Z

    iget v9, v2, Lj9/w;->l:F

    iget-object v10, v6, Lj9/y;->m:Ljava/lang/Object;

    check-cast v10, Ln/k;

    iget-object v10, v10, Ln/k;->m:Lr0/e1;

    invoke-virtual {v10}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    move-result v10

    sub-float/2addr v9, v10

    iget-object v10, v1, Lj9/y;->m:Ljava/lang/Object;

    check-cast v10, Lr/g1;

    iget-boolean v10, v10, Lr/g1;->c:Z

    iget-object v11, v7, Lr/j1;->u:Lgc/f;

    if-nez v10, :cond_4

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v12, v7, Lr/j1;->t:F

    cmpg-float v10, v10, v12

    if-gez v10, :cond_5

    :cond_4
    move-object v13, v0

    move v12, v3

    move v15, v4

    move v10, v5

    move-object v4, v6

    goto/16 :goto_5

    :cond_5
    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v9

    mul-float/2addr v9, v12

    invoke-virtual {v11, v0, v9}, Lgc/f;->c(Lr/l2;F)F

    iget-object v10, v6, Lj9/y;->m:Ljava/lang/Object;

    check-cast v10, Ln/k;

    iget-object v11, v10, Ln/k;->m:Lr0/e1;

    invoke-virtual {v11}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    add-float/2addr v11, v9

    invoke-static {v10, v11}, Ln/d;->h(Ln/k;F)Ln/k;

    move-result-object v9

    iput-object v9, v6, Lj9/y;->m:Ljava/lang/Object;

    iget v10, v2, Lj9/w;->l:F

    iget-object v9, v9, Ln/k;->m:Lr0/e1;

    invoke-virtual {v9}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    sub-float/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v7, Lr/j1;->v:F

    div-float/2addr v9, v10

    invoke-static {v9}, Ll9/a;->z(F)I

    move-result v9

    const/16 v10, 0x64

    if-le v9, v10, :cond_6

    move v9, v10

    :cond_6
    iget-object v10, v6, Lj9/y;->m:Ljava/lang/Object;

    check-cast v10, Ln/k;

    iget v11, v2, Lj9/w;->l:F

    move v12, v9

    new-instance v9, Lb0/d2;

    const/4 v15, 0x6

    move-object v13, v10

    iget-object v10, v7, Lr/j1;->u:Lgc/f;

    move-object/from16 v17, v13

    iget-object v13, v7, Lr/j1;->w:Lr/n2;

    move v5, v11

    move-object v11, v1

    move v1, v12

    move-object v12, v2

    move-object/from16 v2, v17

    invoke-direct/range {v9 .. v15}, Lb0/d2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v18, v14

    move-object v14, v9

    move-object/from16 v9, v18

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    iput-object v0, v7, Lr/j1;->p:Ljava/lang/Object;

    iput-object v9, v7, Lr/j1;->l:Lj9/u;

    const/4 v11, 0x0

    iput-object v11, v7, Lr/j1;->m:Lj9/u;

    iput v1, v7, Lr/j1;->n:I

    iput v4, v7, Lr/j1;->o:I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lj9/w;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iget-object v12, v2, Ln/k;->m:Lr0/e1;

    invoke-virtual {v12}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    iput v12, v11, Lj9/w;->l:F

    new-instance v12, Ljava/lang/Float;

    invoke-direct {v12, v5}, Ljava/lang/Float;-><init>(F)V

    sget-object v5, Ln/w;->b:Lc2/c0;

    invoke-static {v1, v4, v5}, Ln/d;->n(IILn/v;)Ln/n1;

    move-result-object v5

    move-object v13, v12

    move-object v12, v10

    new-instance v10, Lb0/p0;

    const/16 v15, 0xa

    move-object/from16 v20, v13

    move-object v13, v0

    move-object/from16 v0, v20

    invoke-direct/range {v10 .. v15}, Lb0/p0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v2, v0, v5, v10, v7}, Ln/d;->f(Ln/k;Ljava/lang/Float;Ln/x;Li9/c;La9/i;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lz8/a;->l:Lz8/a;

    if-ne v0, v2, :cond_7

    goto :goto_2

    :cond_7
    move-object/from16 v0, v16

    :goto_2
    if-ne v0, v8, :cond_8

    goto/16 :goto_6

    :cond_8
    move v0, v1

    move-object v10, v13

    goto/16 :goto_0

    :goto_3
    iget-boolean v1, v14, Lj9/u;->l:Z

    if-nez v1, :cond_a

    const-wide/16 v1, 0x32

    int-to-long v11, v0

    sub-long/2addr v1, v11

    iput-object v10, v7, Lr/j1;->p:Ljava/lang/Object;

    iput-object v14, v7, Lr/j1;->l:Lj9/u;

    iput-object v14, v7, Lr/j1;->m:Lj9/u;

    iput v3, v7, Lr/j1;->o:I

    iget-object v0, v7, Lr/j1;->u:Lgc/f;

    move v5, v3

    iget-object v3, v7, Lr/j1;->w:Lr/n2;

    move v15, v4

    move v12, v5

    move-object v4, v6

    const/16 v17, 0x1

    move-wide v5, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static/range {v0 .. v7}, Lgc/f;->b(Lgc/f;Lj9/y;Lj9/w;Lr/n2;Lj9/y;JLa9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_9

    goto :goto_6

    :cond_9
    move-object v9, v14

    :goto_4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v14, Lj9/u;->l:Z

    move-object v6, v4

    move-object v14, v9

    move-object v0, v10

    move v3, v12

    move v4, v15

    move/from16 v5, v17

    goto/16 :goto_1

    :cond_a
    const/16 v17, 0x1

    move-object v0, v10

    move/from16 v5, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    goto/16 :goto_1

    :goto_5
    invoke-virtual {v11, v13, v9}, Lgc/f;->c(Lr/l2;F)F

    iput-object v13, v7, Lr/j1;->p:Ljava/lang/Object;

    iput-object v14, v7, Lr/j1;->l:Lj9/u;

    iput-object v14, v7, Lr/j1;->m:Lj9/u;

    iput v10, v7, Lr/j1;->o:I

    iget-object v0, v7, Lr/j1;->u:Lgc/f;

    iget-object v3, v7, Lr/j1;->w:Lr/n2;

    const-wide/16 v5, 0x32

    invoke-static/range {v0 .. v7}, Lgc/f;->b(Lgc/f;Lj9/y;Lj9/w;Lr/n2;Lj9/y;JLa9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_b

    :goto_6
    return-object v8

    :cond_b
    move-object v9, v14

    :goto_7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v14, Lj9/u;->l:Z

    move-object/from16 v7, p0

    move-object v6, v4

    move-object v14, v9

    move v5, v10

    move v3, v12

    move-object v0, v13

    move v4, v15

    goto/16 :goto_1

    :cond_c
    return-object v16
.end method
