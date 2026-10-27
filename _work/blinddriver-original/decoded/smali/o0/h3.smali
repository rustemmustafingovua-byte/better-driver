.class public final Lo0/h3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo0/h3;

.field public static final b:F

.field public static final c:F

.field public static final d:Lu/s0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo0/h3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo0/h3;->a:Lo0/h3;

    sget v0, Lq0/t;->g:F

    sput v0, Lo0/h3;->b:F

    sget v0, Lq0/t;->l:F

    sput v0, Lo0/h3;->c:F

    sget-object v0, Lo0/q;->b:Lu/s0;

    sput-object v0, Lo0/h3;->d:Lu/s0;

    return-void
.end method


# virtual methods
.method public final a(Lr0/q;I)V
    .locals 23

    move-object/from16 v4, p1

    move/from16 v6, p2

    const v0, -0x4be11234

    invoke-virtual {v4, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, v6, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v2, v6, 0x1

    invoke-virtual {v4, v2, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lp0/h;->b:Lr1/f;

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v7, Lr1/e;

    const/4 v15, 0x0

    const/16 v16, 0xe0

    const/high16 v8, 0x41c00000    # 24.0f

    const/high16 v9, 0x41c00000    # 24.0f

    const/high16 v10, 0x41c00000    # 24.0f

    const/high16 v11, 0x41c00000    # 24.0f

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v16}, Lr1/e;-><init>(FFFFJIZI)V

    sget v0, Lr1/h0;->a:I

    new-instance v12, Lm1/j0;

    sget-wide v2, Lm1/p;->b:J

    invoke-direct {v12, v2, v3}, Lm1/j0;-><init>(J)V

    new-instance v10, Ljava/util/ArrayList;

    const/16 v0, 0x20

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lr1/n;

    const/high16 v2, 0x41100000    # 9.0f

    const v3, 0x41815c29    # 16.17f

    invoke-direct {v0, v2, v3}, Lr1/n;-><init>(FF)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lr1/m;

    const v3, 0x409a8f5c    # 4.83f

    const/high16 v5, 0x41400000    # 12.0f

    invoke-direct {v0, v3, v5}, Lr1/m;-><init>(FF)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lr1/u;

    const v3, -0x404a3d71    # -1.42f

    const v5, 0x3fb47ae1    # 1.41f

    invoke-direct {v0, v3, v5}, Lr1/u;-><init>(FF)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lr1/m;

    const/high16 v3, 0x41980000    # 19.0f

    invoke-direct {v0, v2, v3}, Lr1/m;-><init>(FF)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lr1/m;

    const/high16 v2, 0x41a80000    # 21.0f

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-direct {v0, v2, v3}, Lr1/m;-><init>(FF)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lr1/u;

    const v2, -0x404b851f    # -1.41f

    invoke-direct {v0, v2, v2}, Lr1/u;-><init>(FF)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lr1/j;->c:Lr1/j;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v7, Lr1/e;->k:Z

    if-eqz v0, :cond_2

    const-string v0, "ImageVector.Builder is single use, create a new instance to create a new ImageVector"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v7, Lr1/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr1/d;

    iget-object v0, v0, Lr1/d;->j:Ljava/util/ArrayList;

    new-instance v8, Lr1/k0;

    const-string v9, ""

    const/4 v11, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    invoke-direct/range {v8 .. v22}, Lr1/k0;-><init>(Ljava/lang/String;Ljava/util/List;ILm1/m;FLm1/m;FFIIFFFF)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lr1/e;->a()Lr1/f;

    move-result-object v0

    sput-object v0, Lp0/h;->b:Lr1/f;

    :goto_1
    sget-object v1, Lf1/o;->a:Lf1/o;

    sget v2, Lo0/h3;->c:F

    invoke-static {v1, v2}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/16 v5, 0x30

    invoke-static/range {v0 .. v5}, Lo0/k1;->b(Lr1/f;Lf1/r;JLr0/q;I)V

    goto :goto_2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lr0/q;->W()V

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lb0/x;

    const/16 v2, 0x10

    move-object/from16 v3, p0

    invoke-direct {v1, v6, v2, v3}, Lb0/x;-><init>(IILjava/lang/Object;)V

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_4
    return-void
.end method

.method public final b(ZLi9/e;Lr0/q;I)V
    .locals 18

    move/from16 v0, p1

    move-object/from16 v6, p3

    move/from16 v9, p4

    const v1, -0x2730152a

    invoke-virtual {v6, v1}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v6, v0}, Lr0/q;->h(Z)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v1, v9

    or-int/lit16 v1, v1, 0x1b0

    and-int/lit16 v3, v1, 0x93

    const/16 v4, 0x92

    const/4 v10, 0x0

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v10

    :goto_1
    and-int/lit8 v4, v1, 0x1

    invoke-virtual {v6, v4, v3}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v11, Lo0/x0;->a:Lz0/d;

    const v3, -0x546b3e47

    invoke-virtual {v6, v3}, Lr0/q;->b0(I)V

    sget-object v3, Lm/b0;->b:Lm/b0;

    sget-object v4, Lq0/q;->n:Lq0/q;

    invoke-static {v4, v6}, Lo0/z2;->l(Lq0/q;Lr0/q;)Ln/r0;

    move-result-object v4

    invoke-static {v4, v2}, Lm/v;->d(Ln/x;I)Lm/a0;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-static {v5, v4}, Lm1/v;->h(FF)J

    move-result-wide v4

    sget-object v7, Lq0/q;->m:Lq0/q;

    invoke-static {v7, v6}, Lo0/z2;->l(Lq0/q;Lr0/q;)Ln/r0;

    move-result-object v7

    new-instance v8, Lm/a0;

    new-instance v12, Lm/j0;

    new-instance v15, Lm/g0;

    invoke-direct {v15, v4, v5, v7}, Lm/g0;-><init>(JLn/r0;)V

    const/16 v16, 0x0

    const/16 v17, 0x77

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v12 .. v17}, Lm/j0;-><init>(Lm/c0;Lm/o;Lm/g0;Ljava/util/LinkedHashMap;I)V

    invoke-direct {v8, v12}, Lm/a0;-><init>(Lm/j0;)V

    invoke-virtual {v2, v8}, Lm/a0;->a(Lm/a0;)Lm/a0;

    move-result-object v2

    new-instance v4, Lo0/z3;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lo0/z3;-><init>(I)V

    const v5, 0x7ac2e083

    invoke-static {v5, v4, v6}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v5

    const/high16 v4, 0x30000

    and-int/lit8 v1, v1, 0xe

    or-int v7, v1, v4

    const/16 v8, 0x12

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v8}, Lm/l;->b(ZLf1/r;Lm/a0;Lm/b0;Ljava/lang/String;Lz0/d;Lr0/q;II)V

    invoke-virtual {v6, v10}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Lr0/q;->W()V

    move-object/from16 v11, p2

    :goto_2
    invoke-virtual {v6}, Lr0/q;->u()Lr0/n1;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Lo0/g3;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v0, v11, v9}, Lo0/g3;-><init>(Lo0/h3;ZLi9/e;I)V

    iput-object v2, v1, Lr0/n1;->d:Li9/e;

    :cond_3
    return-void
.end method
