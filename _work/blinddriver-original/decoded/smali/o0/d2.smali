.class public final Lo0/d2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo0/d2;

.field public static final b:F

.field public static final c:F

.field public static final d:F

.field public static final e:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo0/d2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo0/d2;->a:Lo0/d2;

    const/16 v0, 0x38

    int-to-float v0, v0

    sput v0, Lo0/d2;->b:F

    const/16 v0, 0x118

    int-to-float v0, v0

    sput v0, Lo0/d2;->c:F

    const/4 v0, 0x1

    int-to-float v0, v0

    sput v0, Lo0/d2;->d:F

    const/4 v0, 0x2

    int-to-float v0, v0

    sput v0, Lo0/d2;->e:F

    return-void
.end method

.method public static c(Lo0/u0;Lr0/q;)Lo0/x4;
    .locals 104

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lo0/u0;->h0:Lo0/x4;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const v2, 0x1745d472

    invoke-virtual {v1, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v1, v3}, Lr0/q;->q(Z)V

    const/4 v2, 0x0

    move v15, v3

    goto/16 :goto_1

    :cond_0
    const v4, 0x1745d473

    invoke-virtual {v1, v4}, Lr0/q;->b0(I)V

    sget-object v4, Lm0/b2;->a:Lr0/a0;

    invoke-virtual {v1, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm0/a2;

    iget-object v5, v2, Lo0/x4;->k:Lm0/a2;

    invoke-static {v5, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v15, v3

    goto/16 :goto_0

    :cond_1
    move v5, v3

    move-object/from16 v23, v4

    iget-wide v3, v2, Lo0/x4;->a:J

    move v7, v5

    iget-wide v5, v2, Lo0/x4;->b:J

    move v9, v7

    iget-wide v7, v2, Lo0/x4;->c:J

    move v11, v9

    iget-wide v9, v2, Lo0/x4;->d:J

    move v13, v11

    iget-wide v11, v2, Lo0/x4;->e:J

    move v15, v13

    iget-wide v13, v2, Lo0/x4;->f:J

    move-wide/from16 v16, v3

    iget-wide v3, v2, Lo0/x4;->g:J

    move-wide/from16 v18, v3

    iget-wide v3, v2, Lo0/x4;->h:J

    move-wide/from16 v20, v3

    iget-wide v3, v2, Lo0/x4;->i:J

    move-wide/from16 v24, v3

    iget-wide v3, v2, Lo0/x4;->j:J

    move-wide/from16 v26, v3

    iget-wide v3, v2, Lo0/x4;->l:J

    move-wide/from16 v28, v3

    iget-wide v3, v2, Lo0/x4;->m:J

    move-wide/from16 v30, v3

    iget-wide v3, v2, Lo0/x4;->n:J

    move-wide/from16 v32, v3

    iget-wide v3, v2, Lo0/x4;->o:J

    move-wide/from16 v34, v3

    iget-wide v3, v2, Lo0/x4;->p:J

    move-wide/from16 v36, v3

    iget-wide v3, v2, Lo0/x4;->q:J

    move-wide/from16 v38, v3

    iget-wide v3, v2, Lo0/x4;->r:J

    move-wide/from16 v40, v3

    iget-wide v3, v2, Lo0/x4;->s:J

    move-wide/from16 v42, v3

    iget-wide v3, v2, Lo0/x4;->t:J

    move-wide/from16 v44, v3

    iget-wide v3, v2, Lo0/x4;->u:J

    move-wide/from16 v46, v3

    iget-wide v3, v2, Lo0/x4;->v:J

    move-wide/from16 v48, v3

    iget-wide v3, v2, Lo0/x4;->w:J

    move-wide/from16 v50, v3

    iget-wide v3, v2, Lo0/x4;->x:J

    move-wide/from16 v52, v3

    iget-wide v3, v2, Lo0/x4;->y:J

    move-wide/from16 v54, v3

    iget-wide v3, v2, Lo0/x4;->z:J

    move-wide/from16 v56, v3

    iget-wide v3, v2, Lo0/x4;->A:J

    move-wide/from16 v58, v3

    iget-wide v3, v2, Lo0/x4;->B:J

    move-wide/from16 v60, v3

    iget-wide v3, v2, Lo0/x4;->C:J

    move-wide/from16 v62, v3

    iget-wide v3, v2, Lo0/x4;->D:J

    move-wide/from16 v64, v3

    iget-wide v3, v2, Lo0/x4;->E:J

    move-wide/from16 v66, v3

    iget-wide v3, v2, Lo0/x4;->F:J

    move-wide/from16 v68, v3

    iget-wide v3, v2, Lo0/x4;->G:J

    move-wide/from16 v70, v3

    iget-wide v3, v2, Lo0/x4;->H:J

    move-wide/from16 v72, v3

    iget-wide v3, v2, Lo0/x4;->I:J

    move-wide/from16 v74, v3

    iget-wide v3, v2, Lo0/x4;->J:J

    move-wide/from16 v76, v3

    iget-wide v3, v2, Lo0/x4;->K:J

    move-wide/from16 v78, v3

    iget-wide v3, v2, Lo0/x4;->L:J

    move-wide/from16 v80, v3

    iget-wide v3, v2, Lo0/x4;->M:J

    move-wide/from16 v82, v3

    iget-wide v3, v2, Lo0/x4;->N:J

    move-wide/from16 v84, v3

    iget-wide v3, v2, Lo0/x4;->O:J

    move-wide/from16 v86, v3

    iget-wide v3, v2, Lo0/x4;->P:J

    move-wide/from16 v88, v3

    iget-wide v3, v2, Lo0/x4;->Q:J

    move-wide/from16 v102, v86

    move-wide/from16 v86, v3

    move-wide/from16 v3, v16

    move-wide/from16 v15, v18

    move-wide/from16 v17, v20

    move-wide/from16 v19, v24

    move-wide/from16 v21, v26

    move-wide/from16 v24, v28

    move-wide/from16 v26, v30

    move-wide/from16 v28, v32

    move-wide/from16 v30, v34

    move-wide/from16 v32, v36

    move-wide/from16 v34, v38

    move-wide/from16 v36, v40

    move-wide/from16 v38, v42

    move-wide/from16 v40, v44

    move-wide/from16 v42, v46

    move-wide/from16 v44, v48

    move-wide/from16 v46, v50

    move-wide/from16 v48, v52

    move-wide/from16 v50, v54

    move-wide/from16 v52, v56

    move-wide/from16 v54, v58

    move-wide/from16 v56, v60

    move-wide/from16 v58, v62

    move-wide/from16 v60, v64

    move-wide/from16 v62, v66

    move-wide/from16 v64, v68

    move-wide/from16 v66, v70

    move-wide/from16 v68, v72

    move-wide/from16 v70, v74

    move-wide/from16 v72, v76

    move-wide/from16 v74, v78

    move-wide/from16 v76, v80

    move-wide/from16 v78, v82

    move-wide/from16 v80, v84

    move-wide/from16 v82, v102

    move-wide/from16 v84, v88

    invoke-virtual/range {v2 .. v87}, Lo0/x4;->a(JJJJJJJJJJLm0/a2;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)Lo0/x4;

    move-result-object v2

    iput-object v2, v0, Lo0/u0;->h0:Lo0/x4;

    const/4 v15, 0x0

    :goto_0
    invoke-virtual {v1, v15}, Lr0/q;->q(Z)V

    :goto_1
    if-nez v2, :cond_2

    const v2, -0x6a979da7

    invoke-virtual {v1, v2}, Lr0/q;->b0(I)V

    new-instance v16, Lo0/x4;

    sget-object v2, Lq0/u;->p:Lq0/g;

    invoke-static {v0, v2}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v17

    sget-object v2, Lq0/u;->v:Lq0/g;

    invoke-static {v0, v2}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v19

    sget-object v2, Lq0/u;->c:Lq0/g;

    invoke-static {v0, v2}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v3

    const v5, 0x3ec28f5c    # 0.38f

    invoke-static {v5, v3, v4}, Lm1/p;->b(FJ)J

    move-result-wide v21

    sget-object v3, Lq0/u;->j:Lq0/g;

    invoke-static {v0, v3}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v23

    sget-wide v25, Lm1/p;->f:J

    sget-object v3, Lq0/u;->a:Lq0/g;

    invoke-static {v0, v3}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v33

    sget-object v3, Lq0/u;->i:Lq0/g;

    invoke-static {v0, v3}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v35

    sget-object v3, Lm0/b2;->a:Lr0/a0;

    invoke-virtual {v1, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v37, v3

    check-cast v37, Lm0/a2;

    sget-object v3, Lq0/u;->s:Lq0/g;

    invoke-static {v0, v3}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v38

    sget-object v3, Lq0/u;->B:Lq0/g;

    invoke-static {v0, v3}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v40

    sget-object v3, Lq0/u;->f:Lq0/g;

    invoke-static {v0, v3}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v3

    const v6, 0x3df5c28f    # 0.12f

    invoke-static {v6, v3, v4}, Lm1/p;->b(FJ)J

    move-result-wide v42

    sget-object v3, Lq0/u;->m:Lq0/g;

    invoke-static {v0, v3}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v44

    sget-object v3, Lq0/u;->r:Lq0/g;

    invoke-static {v0, v3}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v46

    sget-object v3, Lq0/u;->A:Lq0/g;

    invoke-static {v0, v3}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v48

    sget-object v3, Lq0/u;->e:Lq0/g;

    invoke-static {v0, v3}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lm1/p;->b(FJ)J

    move-result-wide v50

    sget-object v3, Lq0/u;->l:Lq0/g;

    invoke-static {v0, v3}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v52

    sget-object v3, Lq0/u;->u:Lq0/g;

    invoke-static {v0, v3}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v54

    sget-object v3, Lq0/u;->D:Lq0/g;

    invoke-static {v0, v3}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v56

    sget-object v3, Lq0/u;->h:Lq0/g;

    invoke-static {v0, v3}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lm1/p;->b(FJ)J

    move-result-wide v58

    sget-object v3, Lq0/u;->o:Lq0/g;

    invoke-static {v0, v3}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v60

    sget-object v3, Lq0/u;->q:Lq0/g;

    invoke-static {v0, v3}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v62

    sget-object v3, Lq0/u;->z:Lq0/g;

    invoke-static {v0, v3}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v64

    sget-object v3, Lq0/u;->d:Lq0/g;

    invoke-static {v0, v3}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lm1/p;->b(FJ)J

    move-result-wide v66

    sget-object v3, Lq0/u;->k:Lq0/g;

    invoke-static {v0, v3}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v68

    sget-object v3, Lq0/u;->w:Lq0/g;

    invoke-static {v0, v3}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v70

    invoke-static {v0, v3}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v72

    invoke-static {v0, v2}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lm1/p;->b(FJ)J

    move-result-wide v74

    invoke-static {v0, v3}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v76

    sget-object v2, Lq0/u;->t:Lq0/g;

    invoke-static {v0, v2}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v78

    sget-object v2, Lq0/u;->C:Lq0/g;

    invoke-static {v0, v2}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v80

    sget-object v2, Lq0/u;->g:Lq0/g;

    invoke-static {v0, v2}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v2

    invoke-static {v5, v2, v3}, Lm1/p;->b(FJ)J

    move-result-wide v82

    sget-object v2, Lq0/u;->n:Lq0/g;

    invoke-static {v0, v2}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v84

    sget-object v2, Lq0/u;->x:Lq0/g;

    invoke-static {v0, v2}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v86

    invoke-static {v0, v2}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v88

    invoke-static {v0, v2}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lm1/p;->b(FJ)J

    move-result-wide v90

    invoke-static {v0, v2}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v92

    sget-object v2, Lq0/u;->y:Lq0/g;

    invoke-static {v0, v2}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v94

    invoke-static {v0, v2}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v96

    invoke-static {v0, v2}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lm1/p;->b(FJ)J

    move-result-wide v98

    invoke-static {v0, v2}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v100

    move-wide/from16 v27, v25

    move-wide/from16 v29, v25

    move-wide/from16 v31, v25

    invoke-direct/range {v16 .. v101}, Lo0/x4;-><init>(JJJJJJJJJJLm0/a2;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    move-object/from16 v2, v16

    iput-object v2, v0, Lo0/u0;->h0:Lo0/x4;

    invoke-virtual {v1, v15}, Lr0/q;->q(Z)V

    return-object v2

    :cond_2
    const v0, -0x6a9a946d

    invoke-virtual {v1, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v1, v15}, Lr0/q;->q(Z)V

    return-object v2
.end method


# virtual methods
.method public final a(ZZLs/i;Lf1/r;Lo0/x4;Lm1/h0;FFLr0/q;II)V
    .locals 24

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v0, p9

    move/from16 v10, p10

    move/from16 v11, p11

    const v1, 0x3db82288

    invoke-virtual {v0, v1}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v0, v2}, Lr0/q;->h(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v10

    invoke-virtual {v0, v3}, Lr0/q;->h(Z)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x20

    goto :goto_1

    :cond_1
    const/16 v8, 0x10

    :goto_1
    or-int/2addr v1, v8

    invoke-virtual {v0, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x100

    goto :goto_2

    :cond_2
    const/16 v8, 0x80

    :goto_2
    or-int/2addr v1, v8

    and-int/lit8 v8, v11, 0x8

    if-eqz v8, :cond_4

    or-int/lit16 v1, v1, 0xc00

    :cond_3
    move-object/from16 v9, p4

    goto :goto_4

    :cond_4
    and-int/lit16 v9, v10, 0xc00

    if-nez v9, :cond_3

    move-object/from16 v9, p4

    invoke-virtual {v0, v9}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/16 v12, 0x800

    goto :goto_3

    :cond_5
    const/16 v12, 0x400

    :goto_3
    or-int/2addr v1, v12

    :goto_4
    invoke-virtual {v0, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/16 v12, 0x4000

    goto :goto_5

    :cond_6
    const/16 v12, 0x2000

    :goto_5
    or-int/2addr v1, v12

    invoke-virtual {v0, v7}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/high16 v12, 0x20000

    goto :goto_6

    :cond_7
    const/high16 v12, 0x10000

    :goto_6
    or-int/2addr v1, v12

    const/high16 v12, 0x180000

    and-int/2addr v12, v10

    if-nez v12, :cond_a

    and-int/lit8 v12, v11, 0x40

    if-nez v12, :cond_8

    move/from16 v12, p7

    invoke-virtual {v0, v12}, Lr0/q;->d(F)Z

    move-result v13

    if-eqz v13, :cond_9

    const/high16 v13, 0x100000

    goto :goto_7

    :cond_8
    move/from16 v12, p7

    :cond_9
    const/high16 v13, 0x80000

    :goto_7
    or-int/2addr v1, v13

    goto :goto_8

    :cond_a
    move/from16 v12, p7

    :goto_8
    const/high16 v13, 0xc00000

    and-int/2addr v13, v10

    if-nez v13, :cond_d

    and-int/lit16 v13, v11, 0x80

    if-nez v13, :cond_b

    move/from16 v13, p8

    invoke-virtual {v0, v13}, Lr0/q;->d(F)Z

    move-result v14

    if-eqz v14, :cond_c

    const/high16 v14, 0x800000

    goto :goto_9

    :cond_b
    move/from16 v13, p8

    :cond_c
    const/high16 v14, 0x400000

    :goto_9
    or-int/2addr v1, v14

    goto :goto_a

    :cond_d
    move/from16 v13, p8

    :goto_a
    const v14, 0x2492493

    and-int/2addr v14, v1

    const v15, 0x2492492

    if-eq v14, v15, :cond_e

    const/4 v14, 0x1

    goto :goto_b

    :cond_e
    const/4 v14, 0x0

    :goto_b
    and-int/lit8 v15, v1, 0x1

    invoke-virtual {v0, v15, v14}, Lr0/q;->T(IZ)Z

    move-result v14

    if-eqz v14, :cond_1f

    invoke-virtual {v0}, Lr0/q;->Y()V

    and-int/lit8 v14, v10, 0x1

    const v15, -0x1c00001

    const v16, -0x380001

    if-eqz v14, :cond_12

    invoke-virtual {v0}, Lr0/q;->C()Z

    move-result v14

    if-eqz v14, :cond_f

    goto :goto_c

    :cond_f
    invoke-virtual {v0}, Lr0/q;->W()V

    and-int/lit8 v8, v11, 0x40

    if-eqz v8, :cond_10

    and-int v1, v1, v16

    :cond_10
    and-int/lit16 v8, v11, 0x80

    if-eqz v8, :cond_11

    and-int/2addr v1, v15

    :cond_11
    move-object v8, v9

    move v9, v12

    goto :goto_f

    :cond_12
    :goto_c
    if-eqz v8, :cond_13

    sget-object v8, Lf1/o;->a:Lf1/o;

    goto :goto_d

    :cond_13
    move-object v8, v9

    :goto_d
    and-int/lit8 v9, v11, 0x40

    if-eqz v9, :cond_14

    and-int v1, v1, v16

    sget v9, Lo0/d2;->e:F

    goto :goto_e

    :cond_14
    move v9, v12

    :goto_e
    and-int/lit16 v12, v11, 0x80

    if-eqz v12, :cond_15

    and-int/2addr v1, v15

    sget v12, Lo0/d2;->d:F

    move v13, v12

    :cond_15
    :goto_f
    invoke-virtual {v0}, Lr0/q;->r()V

    shr-int/lit8 v1, v1, 0x6

    and-int/lit8 v1, v1, 0xe

    invoke-static {v4, v0, v1}, Lc6/o;->K(Ls/i;Lr0/q;I)Lr0/u0;

    move-result-object v1

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v12, Lp0/y;->a:F

    if-nez v2, :cond_16

    iget-wide v14, v6, Lo0/x4;->n:J

    goto :goto_10

    :cond_16
    if-eqz v3, :cond_17

    iget-wide v14, v6, Lo0/x4;->o:J

    goto :goto_10

    :cond_17
    if-eqz v1, :cond_18

    iget-wide v14, v6, Lo0/x4;->l:J

    goto :goto_10

    :cond_18
    iget-wide v14, v6, Lo0/x4;->m:J

    :goto_10
    sget-object v12, Lq0/q;->o:Lq0/q;

    invoke-static {v12, v0}, Lo0/z2;->l(Lq0/q;Lr0/q;)Ln/r0;

    move-result-object v5

    if-eqz v2, :cond_19

    move/from16 p4, v1

    const v1, -0x63cef6df

    invoke-virtual {v0, v1}, Lr0/q;->b0(I)V

    invoke-static {v14, v15, v5, v0}, Lm/h0;->a(JLn/r0;Lr0/q;)Lr0/r2;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lr0/q;->q(Z)V

    goto :goto_11

    :cond_19
    move/from16 p4, v1

    const/4 v5, 0x0

    const v1, -0x63cdbb6c

    invoke-virtual {v0, v1}, Lr0/q;->b0(I)V

    new-instance v1, Lm1/p;

    invoke-direct {v1, v14, v15}, Lm1/p;-><init>(J)V

    invoke-static {v1, v0}, Lr0/r;->C(Ljava/lang/Object;Lr0/q;)Lr0/u0;

    move-result-object v1

    invoke-virtual {v0, v5}, Lr0/q;->q(Z)V

    :goto_11
    sget-object v14, Lq0/q;->m:Lq0/q;

    invoke-static {v14, v0}, Lo0/z2;->l(Lq0/q;Lr0/q;)Ln/r0;

    move-result-object v14

    if-eqz v2, :cond_1b

    const v15, -0x63caf6c8

    invoke-virtual {v0, v15}, Lr0/q;->b0(I)V

    if-eqz p4, :cond_1a

    move v15, v9

    goto :goto_12

    :cond_1a
    move v15, v13

    :goto_12
    invoke-static {v15, v14, v0}, Ln/e;->a(FLn/r0;Lr0/q;)Lr0/r2;

    move-result-object v14

    invoke-virtual {v0, v5}, Lr0/q;->q(Z)V

    goto :goto_13

    :cond_1b
    const v14, -0x63c82f99

    invoke-virtual {v0, v14}, Lr0/q;->b0(I)V

    new-instance v14, Lb3/f;

    invoke-direct {v14, v13}, Lb3/f;-><init>(F)V

    invoke-static {v14, v0}, Lr0/r;->C(Ljava/lang/Object;Lr0/q;)Lr0/u0;

    move-result-object v14

    invoke-virtual {v0, v5}, Lr0/q;->q(Z)V

    :goto_13
    invoke-interface {v14}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb3/f;

    iget v5, v5, Lb3/f;->l:F

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm1/p;

    iget-wide v14, v1, Lm1/p;->a:J

    invoke-static {v5, v14, v15}, Lp/o;->a(FJ)Lp/x;

    move-result-object v1

    invoke-static {v1, v0}, Lr0/r;->C(Ljava/lang/Object;Lr0/q;)Lr0/u0;

    move-result-object v1

    if-nez v2, :cond_1c

    iget-wide v14, v6, Lo0/x4;->g:J

    goto :goto_14

    :cond_1c
    if-eqz v3, :cond_1d

    iget-wide v14, v6, Lo0/x4;->h:J

    goto :goto_14

    :cond_1d
    if-eqz p4, :cond_1e

    iget-wide v14, v6, Lo0/x4;->e:J

    goto :goto_14

    :cond_1e
    iget-wide v14, v6, Lo0/x4;->f:J

    :goto_14
    invoke-static {v12, v0}, Lo0/z2;->l(Lq0/q;Lr0/q;)Ln/r0;

    move-result-object v5

    invoke-static {v14, v15, v5, v0}, Lm/h0;->a(JLn/r0;Lr0/q;)Lr0/r2;

    move-result-object v21

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/x;

    iget v5, v1, Lp/x;->a:F

    iget-object v1, v1, Lp/x;->b:Lm1/j0;

    new-instance v12, Lp/w;

    invoke-direct {v12, v5, v1, v7}, Lp/w;-><init>(FLm1/j0;Lm1/h0;)V

    invoke-interface {v8, v12}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v1

    new-instance v17, Lo0/c2;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-class v20, Lr0/r2;

    const-string v22, "value"

    const-string v23, "getValue()Ljava/lang/Object;"

    invoke-direct/range {v17 .. v23}, Lo0/c2;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v17

    new-instance v12, Lo0/y4;

    invoke-direct {v12, v5}, Lo0/y4;-><init>(Lo0/c2;)V

    new-instance v5, Lp/o0;

    const/4 v14, 0x2

    invoke-direct {v5, v14, v7, v12}, Lp/o0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v5}, Lj1/g;->e(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v1, v0, v5}, Lu/l;->a(Lf1/r;Lr0/q;I)V

    move-object v5, v8

    move v8, v9

    :goto_15
    move v9, v13

    goto :goto_16

    :cond_1f
    invoke-virtual {v0}, Lr0/q;->W()V

    move-object v5, v9

    move v8, v12

    goto :goto_15

    :goto_16
    invoke-virtual {v0}, Lr0/q;->u()Lr0/n1;

    move-result-object v12

    if-eqz v12, :cond_20

    new-instance v0, Lo0/a2;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v11}, Lo0/a2;-><init>(Lo0/d2;ZZLs/i;Lf1/r;Lo0/x4;Lm1/h0;FFII)V

    iput-object v0, v12, Lr0/n1;->d:Li9/e;

    :cond_20
    return-void
.end method

.method public final b(Ljava/lang/String;Li9/e;ZZLu2/d0;Ls/i;ZLi9/e;Li9/e;Li9/e;Li9/e;Lo0/x4;Lu/s0;Lz0/d;Lr0/q;I)V
    .locals 28

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move-object/from16 v9, p8

    move-object/from16 v0, p15

    move/from16 v1, p16

    const v3, -0x67408512

    invoke-virtual {v0, v3}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v3, v1, 0x6

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    and-int/lit8 v7, v1, 0x30

    move-object/from16 v11, p2

    if-nez v7, :cond_3

    invoke-virtual {v0, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v3, v7

    :cond_3
    and-int/lit16 v7, v1, 0x180

    if-nez v7, :cond_5

    move/from16 v7, p3

    invoke-virtual {v0, v7}, Lr0/q;->h(Z)Z

    move-result v14

    if-eqz v14, :cond_4

    const/16 v14, 0x100

    goto :goto_3

    :cond_4
    const/16 v14, 0x80

    :goto_3
    or-int/2addr v3, v14

    goto :goto_4

    :cond_5
    move/from16 v7, p3

    :goto_4
    and-int/lit16 v14, v1, 0xc00

    const/16 v15, 0x400

    const/16 v16, 0x800

    if-nez v14, :cond_7

    move/from16 v14, p4

    invoke-virtual {v0, v14}, Lr0/q;->h(Z)Z

    move-result v17

    if-eqz v17, :cond_6

    move/from16 v17, v16

    goto :goto_5

    :cond_6
    move/from16 v17, v15

    :goto_5
    or-int v3, v3, v17

    goto :goto_6

    :cond_7
    move/from16 v14, p4

    :goto_6
    and-int/lit16 v4, v1, 0x6000

    const/16 v18, 0x2000

    if-nez v4, :cond_9

    invoke-virtual {v0, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x4000

    goto :goto_7

    :cond_8
    move/from16 v4, v18

    :goto_7
    or-int/2addr v3, v4

    :cond_9
    const/high16 v4, 0x30000

    and-int/2addr v4, v1

    const/high16 v20, 0x10000

    if-nez v4, :cond_b

    move-object/from16 v4, p6

    invoke-virtual {v0, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    const/high16 v21, 0x20000

    goto :goto_8

    :cond_a
    move/from16 v21, v20

    :goto_8
    or-int v3, v3, v21

    goto :goto_9

    :cond_b
    move-object/from16 v4, p6

    :goto_9
    const/high16 v21, 0x180000

    and-int v21, v1, v21

    move/from16 v10, p7

    if-nez v21, :cond_d

    invoke-virtual {v0, v10}, Lr0/q;->h(Z)Z

    move-result v22

    if-eqz v22, :cond_c

    const/high16 v22, 0x100000

    goto :goto_a

    :cond_c
    const/high16 v22, 0x80000

    :goto_a
    or-int v3, v3, v22

    :cond_d
    const/high16 v22, 0xc00000

    and-int v23, v1, v22

    if-nez v23, :cond_f

    invoke-virtual {v0, v9}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    const/high16 v23, 0x800000

    goto :goto_b

    :cond_e
    const/high16 v23, 0x400000

    :goto_b
    or-int v3, v3, v23

    :cond_f
    const/high16 v23, 0x6000000

    and-int v23, v1, v23

    move-object/from16 v12, p9

    if-nez v23, :cond_11

    invoke-virtual {v0, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_10

    const/high16 v24, 0x4000000

    goto :goto_c

    :cond_10
    const/high16 v24, 0x2000000

    :goto_c
    or-int v3, v3, v24

    :cond_11
    const/high16 v24, 0x30000000

    and-int v24, v1, v24

    const/4 v13, 0x0

    if-nez v24, :cond_13

    invoke-virtual {v0, v13}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_12

    const/high16 v24, 0x20000000

    goto :goto_d

    :cond_12
    const/high16 v24, 0x10000000

    :goto_d
    or-int v3, v3, v24

    :cond_13
    move/from16 v24, v15

    move-object/from16 v15, p10

    invoke-virtual {v0, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_14

    const/16 v17, 0x4

    goto :goto_e

    :cond_14
    const/16 v17, 0x2

    :goto_e
    const/high16 v26, 0xd80000

    or-int v17, v26, v17

    invoke-virtual {v0, v13}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_15

    const/16 v19, 0x20

    goto :goto_f

    :cond_15
    const/16 v19, 0x10

    :goto_f
    or-int v17, v17, v19

    invoke-virtual {v0, v13}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    const/16 v23, 0x100

    goto :goto_10

    :cond_16
    const/16 v23, 0x80

    :goto_10
    or-int v17, v17, v23

    move-object/from16 v13, p11

    invoke-virtual {v0, v13}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    goto :goto_11

    :cond_17
    move/from16 v16, v24

    :goto_11
    or-int v16, v17, v16

    move-object/from16 v8, p12

    invoke-virtual {v0, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_18

    const/16 v18, 0x4000

    :cond_18
    or-int v16, v16, v18

    or-int v16, v16, v20

    const v18, 0x12492493

    and-int v5, v3, v18

    const v1, 0x12492492

    const/16 v18, 0x1

    if-ne v5, v1, :cond_1a

    const v1, 0x492493

    and-int v1, v16, v1

    const v5, 0x492492

    if-eq v1, v5, :cond_19

    goto :goto_12

    :cond_19
    const/4 v1, 0x0

    goto :goto_13

    :cond_1a
    :goto_12
    move/from16 v1, v18

    :goto_13
    and-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Lr0/q;->Y()V

    and-int/lit8 v1, p16, 0x1

    const v5, -0x70001

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Lr0/q;->C()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_14

    :cond_1b
    invoke-virtual {v0}, Lr0/q;->W()V

    and-int v1, v16, v5

    move-object/from16 v21, p13

    goto :goto_15

    :cond_1c
    :goto_14
    sget v1, Lp0/y;->a:F

    move/from16 v21, v5

    new-instance v5, Lu/s0;

    invoke-direct {v5, v1, v1, v1, v1}, Lu/s0;-><init>(FFFF)V

    and-int v1, v16, v21

    move-object/from16 v21, v5

    :goto_15
    invoke-virtual {v0}, Lr0/q;->r()V

    and-int/lit8 v5, v3, 0xe

    const/4 v4, 0x4

    if-ne v5, v4, :cond_1d

    move/from16 v4, v18

    goto :goto_16

    :cond_1d
    const/4 v4, 0x0

    :goto_16
    const p13, 0xe000

    and-int v5, v3, p13

    move/from16 v20, v1

    const/16 v1, 0x4000

    if-ne v5, v1, :cond_1e

    goto :goto_17

    :cond_1e
    const/16 v18, 0x0

    :goto_17
    or-int v1, v4, v18

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_1f

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v4, v1, :cond_20

    :cond_1f
    new-instance v1, Lp2/g;

    invoke-direct {v1, v2}, Lp2/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v1}, Lu2/d0;->a(Lp2/g;)Lu2/b0;

    move-result-object v4

    invoke-virtual {v0, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_20
    check-cast v4, Lu2/b0;

    iget-object v1, v4, Lu2/b0;->a:Lp2/g;

    iget-object v1, v1, Lp2/g;->m:Ljava/lang/String;

    sget-object v4, Lp0/z;->l:[Lp0/z;

    new-instance v12, Lo0/a5;

    invoke-direct {v12}, Lo0/a5;-><init>()V

    const/4 v4, 0x3

    if-nez v9, :cond_21

    const v5, 0x72dc957c

    invoke-virtual {v0, v5}, Lr0/q;->b0(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lr0/q;->q(Z)V

    move/from16 v17, v4

    const/16 v19, 0x0

    goto :goto_18

    :cond_21
    const v5, 0x72dc957d

    invoke-virtual {v0, v5}, Lr0/q;->b0(I)V

    new-instance v5, Lg0/l;

    invoke-direct {v5, v4, v9}, Lg0/l;-><init>(ILjava/lang/Object;)V

    move/from16 v17, v4

    const v4, -0x570185d2

    invoke-static {v4, v5, v0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lr0/q;->q(Z)V

    move-object/from16 v19, v4

    :goto_18
    shl-int/lit8 v4, v3, 0x3

    and-int/lit16 v4, v4, 0x380

    or-int/lit8 v4, v4, 0x6

    shr-int/lit8 v5, v3, 0x9

    const/high16 v16, 0x70000

    and-int v16, v5, v16

    or-int v4, v4, v16

    const/high16 v16, 0x380000

    and-int v18, v5, v16

    or-int v4, v4, v18

    shl-int/lit8 v18, v20, 0x15

    const/high16 v23, 0x1c00000

    and-int v23, v18, v23

    or-int v4, v4, v23

    const/high16 v23, 0xe000000

    and-int v23, v18, v23

    or-int v4, v4, v23

    const/high16 v23, 0x70000000

    and-int v18, v18, v23

    or-int v25, v4, v18

    shr-int/lit8 v4, v20, 0x9

    and-int/lit8 v4, v4, 0xe

    shr-int/lit8 v18, v3, 0x6

    and-int/lit8 v18, v18, 0x70

    or-int v4, v4, v18

    and-int/lit16 v0, v3, 0x380

    or-int/2addr v0, v4

    and-int/lit16 v4, v5, 0x1c00

    or-int/2addr v0, v4

    shr-int/lit8 v3, v3, 0x3

    and-int v3, v3, p13

    or-int/2addr v0, v3

    shl-int/lit8 v3, v20, 0x6

    and-int v3, v3, v16

    or-int/2addr v0, v3

    or-int v26, v0, v22

    move-object/from16 v20, p6

    move-object/from16 v23, p14

    move-object/from16 v24, p15

    move/from16 v18, v7

    move-object/from16 v22, v8

    move-object/from16 v16, v13

    move/from16 v17, v14

    move-object/from16 v13, v19

    move-object/from16 v14, p9

    move/from16 v19, v10

    move-object v10, v1

    invoke-static/range {v10 .. v26}, Lp0/y;->a(Ljava/lang/CharSequence;Li9/e;Lo0/a5;Li9/f;Li9/e;Li9/e;Li9/e;ZZZLs/i;Lu/s0;Lo0/x4;Lz0/d;Lr0/q;II)V

    move-object/from16 v14, v21

    goto :goto_19

    :cond_22
    invoke-virtual/range {p15 .. p15}, Lr0/q;->W()V

    move-object/from16 v14, p13

    :goto_19
    invoke-virtual/range {p15 .. p15}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_23

    move-object v1, v0

    new-instance v0, Lo0/b2;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v15, p14

    move/from16 v16, p16

    move-object/from16 v27, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v16}, Lo0/b2;-><init>(Lo0/d2;Ljava/lang/String;Li9/e;ZZLu2/d0;Ls/i;ZLi9/e;Li9/e;Li9/e;Li9/e;Lo0/x4;Lu/s0;Lz0/d;I)V

    move-object/from16 v1, v27

    iput-object v0, v1, Lr0/n1;->d:Li9/e;

    :cond_23
    return-void
.end method
