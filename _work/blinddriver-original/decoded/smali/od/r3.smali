.class public final synthetic Lod/r3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Z

.field public final synthetic m:Z

.field public final synthetic n:Li9/c;

.field public final synthetic o:Lad/a0;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Z

.field public final synthetic r:Li9/c;

.field public final synthetic s:Li9/a;

.field public final synthetic t:Li9/a;

.field public final synthetic u:Li9/a;

.field public final synthetic v:Z

.field public final synthetic w:Li9/a;


# direct methods
.method public synthetic constructor <init>(ZZLi9/c;Lad/a0;Ljava/lang/String;ZLi9/c;Li9/a;Li9/a;Li9/a;ZLi9/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lod/r3;->l:Z

    iput-boolean p2, p0, Lod/r3;->m:Z

    iput-object p3, p0, Lod/r3;->n:Li9/c;

    iput-object p4, p0, Lod/r3;->o:Lad/a0;

    iput-object p5, p0, Lod/r3;->p:Ljava/lang/String;

    iput-boolean p6, p0, Lod/r3;->q:Z

    iput-object p7, p0, Lod/r3;->r:Li9/c;

    iput-object p8, p0, Lod/r3;->s:Li9/a;

    iput-object p9, p0, Lod/r3;->t:Li9/a;

    iput-object p10, p0, Lod/r3;->u:Li9/a;

    iput-boolean p11, p0, Lod/r3;->v:Z

    iput-object p12, p0, Lod/r3;->w:Li9/a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 80

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    check-cast v5, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v10, "\u00a0\u00b7\u00a0"

    and-int/lit8 v2, v1, 0x3

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v2, v11

    goto :goto_0

    :cond_0
    move v2, v12

    :goto_0
    and-int/2addr v1, v11

    invoke-virtual {v5, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v13, 0xa

    int-to-float v1, v13

    const/16 v2, 0x8

    int-to-float v2, v2

    sget-object v14, Lf1/o;->a:Lf1/o;

    invoke-static {v14, v1, v2}, Lu/b;->q(Lf1/r;FF)Lf1/r;

    move-result-object v1

    sget-object v4, Lu/h;->c:Lu/c;

    sget-object v15, Lf1/c;->x:Lf1/h;

    invoke-static {v4, v15, v5, v12}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v6

    iget-wide v7, v5, Lr0/q;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v5}, Lr0/q;->m()Lr0/j1;

    move-result-object v8

    invoke-static {v1, v5}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v9, Le2/h;->b:Le2/g;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Le2/g;->b:Le2/f;

    invoke-virtual {v5}, Lr0/q;->e0()V

    iget-boolean v11, v5, Lr0/q;->S:Z

    if-eqz v11, :cond_1

    invoke-virtual {v5, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lr0/q;->o0()V

    :goto_1
    sget-object v11, Le2/g;->f:Le2/e;

    invoke-static {v11, v6, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v6, Le2/g;->e:Le2/e;

    invoke-static {v6, v8, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Le2/g;->g:Le2/e;

    invoke-static {v5, v7, v8}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v7, Le2/g;->h:Le2/d;

    invoke-static {v5, v7}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v13, Le2/g;->d:Le2/e;

    invoke-static {v13, v1, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-boolean v1, v0, Lod/r3;->l:Z

    const/4 v12, 0x4

    if-eqz v1, :cond_2

    int-to-float v3, v3

    goto :goto_2

    :cond_2
    int-to-float v3, v12

    :goto_2
    new-instance v12, Lu/s0;

    invoke-direct {v12, v3, v2, v3, v2}, Lu/s0;-><init>(FFFF)V

    const/4 v2, 0x6

    if-eqz v1, :cond_3

    move/from16 v17, v1

    const/4 v3, 0x4

    int-to-float v1, v3

    goto :goto_3

    :cond_3
    move/from16 v17, v1

    const/4 v3, 0x4

    int-to-float v1, v2

    :goto_3
    sget-object v2, Lf1/c;->v:Lf1/i;

    move-object/from16 v19, v12

    sget-object v12, Lu/h;->a:Lu/n;

    move-object/from16 v20, v10

    const/16 v10, 0x30

    invoke-static {v12, v2, v5, v10}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v2

    move-object/from16 v21, v4

    iget-wide v3, v5, Lr0/q;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v5}, Lr0/q;->m()Lr0/j1;

    move-result-object v4

    invoke-static {v14, v5}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v10

    invoke-virtual {v5}, Lr0/q;->e0()V

    move/from16 v24, v1

    iget-boolean v1, v5, Lr0/q;->S:Z

    if-eqz v1, :cond_4

    invoke-virtual {v5, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v5}, Lr0/q;->o0()V

    :goto_4
    invoke-static {v11, v2, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6, v4, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3, v5, v8, v5, v7}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v13, v10, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v10, Lu/z0;->a:Lu/z0;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v10, v14, v1}, Lu/z0;->a(Lf1/r;F)Lf1/r;

    move-result-object v2

    const-string v3, "info"

    const/16 v4, 0x30

    invoke-static {v2, v3, v5, v4}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v2

    move-object/from16 v3, v21

    const/4 v1, 0x0

    invoke-static {v3, v15, v5, v1}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v3

    move-object/from16 v23, v14

    move-object/from16 v25, v15

    iget-wide v14, v5, Lr0/q;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v5}, Lr0/q;->m()Lr0/j1;

    move-result-object v14

    invoke-static {v2, v5}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    invoke-virtual {v5}, Lr0/q;->e0()V

    iget-boolean v15, v5, Lr0/q;->S:Z

    if-eqz v15, :cond_5

    invoke-virtual {v5, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v5}, Lr0/q;->o0()V

    :goto_5
    invoke-static {v11, v3, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6, v14, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v1, v5, v8, v5, v7}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v13, v2, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v14, v0, Lod/r3;->o:Lad/a0;

    iget-boolean v15, v14, Lad/a0;->p:Z

    iget-boolean v1, v14, Lad/a0;->x:Z

    iget-wide v2, v14, Lad/a0;->k:D

    const/16 v26, 0xe

    if-nez v15, :cond_9

    const v4, -0x440f0614

    invoke-virtual {v5, v4}, Lr0/q;->b0(I)V

    iget-object v4, v0, Lod/r3;->p:Ljava/lang/String;

    if-nez v4, :cond_6

    iget-object v4, v14, Lad/a0;->z:Ljava/lang/String;

    :cond_6
    if-nez v4, :cond_7

    const v4, -0x3dd1bc6b

    invoke-virtual {v5, v4}, Lr0/q;->b0(I)V

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lr0/q;->q(Z)V

    move/from16 v28, v1

    move v1, v4

    move-object/from16 v36, v6

    move-object/from16 v38, v7

    move-object/from16 v37, v8

    move-object/from16 v35, v9

    move/from16 v41, v17

    move/from16 v39, v24

    const/16 v22, 0x4

    const/16 v27, 0x30

    move-wide/from16 v17, v2

    goto :goto_8

    :cond_7
    move/from16 v28, v1

    const v1, -0x3dd1bc6a

    invoke-virtual {v5, v1}, Lr0/q;->b0(I)V

    if-eqz v17, :cond_8

    invoke-static/range {v26 .. v26}, La/a;->k(I)J

    move-result-wide v29

    :goto_6
    move-object v1, v4

    goto :goto_7

    :cond_8
    const/16 v1, 0x10

    invoke-static {v1}, La/a;->k(I)J

    move-result-wide v29

    goto :goto_6

    :goto_7
    sget-object v4, Lt2/k;->p:Lt2/k;

    const/16 v31, 0x12

    invoke-static/range {v31 .. v31}, La/a;->k(I)J

    move-result-wide v31

    move-object/from16 v33, v7

    const/4 v7, 0x0

    move-object/from16 v34, v9

    const/16 v9, 0xd80

    move-object/from16 v36, v6

    move-object/from16 v37, v8

    move/from16 v41, v17

    move/from16 v39, v24

    move-object/from16 v38, v33

    move-object/from16 v35, v34

    const/16 v22, 0x4

    const/16 v27, 0x30

    move-wide/from16 v17, v2

    move-object v8, v5

    move-wide/from16 v2, v29

    move-wide/from16 v5, v31

    invoke-static/range {v1 .. v9}, Lod/e4;->h(Ljava/lang/String;JLt2/k;JLf1/r;Lr0/q;I)V

    move-object v5, v8

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lr0/q;->q(Z)V

    :goto_8
    invoke-virtual {v5, v1}, Lr0/q;->q(Z)V

    goto :goto_9

    :cond_9
    move/from16 v28, v1

    move/from16 v27, v4

    move-object/from16 v36, v6

    move-object/from16 v38, v7

    move-object/from16 v37, v8

    move-object/from16 v35, v9

    move/from16 v41, v17

    move/from16 v39, v24

    const/4 v1, 0x0

    const/16 v22, 0x4

    move-wide/from16 v17, v2

    const v2, -0x3dcf5887

    invoke-virtual {v5, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v5, v1}, Lr0/q;->q(Z)V

    :goto_9
    new-instance v2, Lp2/d;

    invoke-direct {v2}, Lp2/d;-><init>()V

    iget-object v3, v2, Lp2/d;->l:Ljava/lang/StringBuilder;

    new-instance v42, Lp2/e0;

    const/16 v4, 0x16

    invoke-static {v4}, La/a;->k(I)J

    move-result-wide v45

    sget-object v47, Lt2/k;->q:Lt2/k;

    const/16 v60, 0x0

    const v61, 0xfff9

    const-wide/16 v43, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const-wide/16 v52, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const-wide/16 v57, 0x0

    const/16 v59, 0x0

    invoke-direct/range {v42 .. v61}, Lp2/e0;-><init>(JJLt2/k;Lt2/i;Lt2/j;Lt2/p;Ljava/lang/String;JLa3/a;La3/p;Lw2/b;JLa3/l;Lm1/g0;I)V

    move-object/from16 v4, v42

    invoke-virtual {v2, v4}, Lp2/d;->d(Lp2/e0;)I

    move-result v4

    :try_start_0
    sget-object v6, Lod/b7;->a:Ljava/util/Locale;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/16 v8, 0x3e8

    int-to-double v8, v8

    mul-double v8, v8, v17

    double-to-long v8, v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Lod/b7;->c(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v2, v4}, Lp2/d;->c(I)V

    invoke-static/range {v26 .. v26}, La/a;->k(I)J

    move-result-wide v45

    iget-boolean v4, v0, Lod/r3;->q:Z

    if-eqz v4, :cond_a

    const-wide v6, 0xffe0e0e0L

    invoke-static {v6, v7}, Lm1/v;->d(J)J

    move-result-wide v6

    :goto_a
    move-wide/from16 v43, v6

    goto :goto_b

    :cond_a
    sget-wide v6, Lm1/p;->g:J

    goto :goto_a

    :goto_b
    new-instance v42, Lp2/e0;

    const/16 v60, 0x0

    const v61, 0xfffc

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const-wide/16 v52, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const-wide/16 v57, 0x0

    const/16 v59, 0x0

    invoke-direct/range {v42 .. v61}, Lp2/e0;-><init>(JJLt2/k;Lt2/i;Lt2/j;Lt2/p;Ljava/lang/String;JLa3/a;La3/p;Lw2/b;JLa3/l;Lm1/g0;I)V

    move-object/from16 v6, v42

    invoke-virtual {v2, v6}, Lp2/d;->d(Lp2/e0;)I

    move-result v6

    :try_start_1
    iget-wide v7, v14, Lad/a0;->j:D

    sget-object v9, Lcd/j;->a:Lcd/j;

    invoke-virtual {v9, v7, v8}, Lcd/j;->b(D)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa0

    const/16 v1, 0x20

    invoke-static {v7, v1, v8}, Lr9/r;->P(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v7

    move/from16 v21, v4

    invoke-static/range {v17 .. v18}, Lod/m;->I(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v8}, Lr9/r;->P(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v8, v20

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2, v6}, Lp2/d;->c(I)V

    invoke-virtual {v2}, Lp2/d;->e()Lp2/g;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, La/a;->k(I)J

    move-result-wide v2

    move v4, v15

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object v6, v10

    move-wide/from16 v78, v2

    move-object v3, v9

    move-wide/from16 v9, v78

    const/4 v2, 0x0

    move-object v8, v3

    move v7, v4

    const-wide/16 v3, 0x0

    move-object/from16 v20, v5

    move-object/from16 v18, v6

    const-wide/16 v5, 0x0

    move/from16 v24, v7

    move-object/from16 v26, v8

    const-wide/16 v7, 0x0

    move-object/from16 v29, v11

    const/4 v11, 0x0

    move-object/from16 v30, v12

    const/4 v12, 0x0

    move-object/from16 v31, v13

    const/4 v13, 0x1

    move-object/from16 v32, v14

    const/4 v14, 0x0

    move-object/from16 v69, v18

    move-object/from16 v16, v20

    move-object/from16 v68, v23

    move-object/from16 v62, v25

    move-object/from16 v63, v29

    move-object/from16 v65, v30

    move-object/from16 v64, v31

    move-object/from16 v0, v32

    move/from16 v25, v24

    move-object/from16 v24, v19

    invoke-static/range {v1 .. v17}, Lod/m;->t(Lp2/g;Lf1/r;JJJJIZIILp2/m0;Lr0/q;I)V

    move-object/from16 v5, v16

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, v0, Lad/a0;->l:F

    float-to-double v2, v2

    invoke-static {}, Lcd/a;->a()Z

    move-result v4

    if-eqz v4, :cond_b

    const-wide v6, 0x3ff9bfdf7e8038a0L    # 1.609344

    div-double/2addr v2, v6

    :cond_b
    invoke-static {v2, v3}, Ll9/a;->y(D)I

    move-result v2

    invoke-static {}, Lcd/a;->a()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "mph"

    goto :goto_c

    :cond_c
    invoke-static {}, Lcd/a;->b()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "km/h"

    goto :goto_c

    :cond_d
    const-string v3, "\u043a\u043c/\u0433"

    :goto_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lad/a0;->q:Ljava/lang/String;

    const-string v6, "source"

    invoke-static {v4, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v7, "DR"

    sparse-switch v6, :sswitch_data_0

    :goto_d
    const/4 v6, 0x0

    goto :goto_f

    :sswitch_0
    const-string v6, "DR+NET"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_d

    :cond_e
    const/4 v6, 0x0

    goto :goto_10

    :sswitch_1
    const-string v6, "NUDGE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_d

    :cond_f
    const-string v4, "\u270b"

    :goto_e
    const/4 v6, 0x0

    goto :goto_11

    :sswitch_2
    const-string v6, "DR+PF"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_d

    :sswitch_3
    const-string v6, "GPS?"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    goto :goto_d

    :cond_10
    move-object v4, v6

    goto :goto_e

    :sswitch_4
    const-string v6, "GPS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    goto :goto_d

    :sswitch_5
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_d

    :goto_f
    invoke-static {v4, v7, v6}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v4, "\u23f8"

    goto :goto_11

    :goto_10
    const-string v4, "\u2192"

    :cond_11
    :goto_11
    const-string v7, " \u00b7 "

    invoke-static {v3, v7, v4}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v28, :cond_12

    iget-wide v3, v0, Lad/a0;->w:D

    const/16 v8, 0xa

    int-to-double v9, v8

    div-double/2addr v3, v9

    double-to-int v3, v3

    mul-int/2addr v3, v8

    int-to-double v3, v3

    move-object/from16 v8, v26

    invoke-virtual {v8, v3, v4}, Lcd/j;->b(D)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v2, v4}, Lr9/r;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lad/a0;->v:I

    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v8, 0x1

    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v9, "%02d"

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " \u00b7 \u00b1"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u00b7 GPS \u2212"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_12
    const/4 v8, 0x1

    :goto_12
    iget-object v2, v0, Lad/a0;->D:Lua/nav/routing/GeoPoint;

    if-eqz v2, :cond_13

    sget-object v2, Lcd/d;->f0:Lcd/c;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    iget-boolean v2, v0, Lad/a0;->y:Z

    if-eqz v2, :cond_14

    const-string v2, " \u00b7 GPS\u21ba"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-boolean v2, v0, Lad/a0;->r:Z

    if-eqz v2, :cond_15

    const-string v2, " \u00b7 \u21bb\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v5, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->l:Lp2/m0;

    const/16 v4, 0xf

    invoke-static {v4}, La/a;->k(I)J

    move-result-wide v12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v7, 0x24

    if-le v4, v7, :cond_16

    const/16 v4, 0xb

    :goto_13
    invoke-static {v4}, La/a;->k(I)J

    move-result-wide v9

    goto :goto_14

    :cond_16
    const/16 v4, 0xd

    goto :goto_13

    :goto_14
    sget-object v7, Lt2/k;->o:Lt2/k;

    move-object v14, v2

    move-object/from16 v11, v68

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v11, v4}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v2

    if-eqz v28, :cond_18

    if-eqz v21, :cond_17

    const-wide v15, 0xffff5252L

    :goto_15
    invoke-static/range {v15 .. v16}, Lm1/v;->d(J)J

    move-result-wide v15

    goto :goto_16

    :cond_17
    const-wide v15, 0xffef6c00L

    goto :goto_15

    :cond_18
    if-eqz v21, :cond_19

    sget-wide v15, Lm1/p;->c:J

    goto :goto_16

    :cond_19
    sget-wide v15, Lm1/p;->g:J

    :goto_16
    const/16 v22, 0xdb6

    const v23, 0xc3d0

    move/from16 v66, v8

    const/4 v8, 0x0

    move-object/from16 v20, v5

    move/from16 v67, v6

    move-wide v5, v9

    const-wide/16 v9, 0x0

    move-object/from16 v68, v11

    const/4 v11, 0x0

    move-object/from16 v17, v14

    const/4 v14, 0x2

    move-object/from16 v19, v3

    move/from16 v21, v4

    move-wide v3, v15

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v18, v17

    const/16 v17, 0x0

    move-object/from16 v26, v18

    const/16 v18, 0x0

    move/from16 v40, v21

    const v21, 0x30030

    move-object/from16 v32, v0

    move/from16 v0, v66

    move-object/from16 v70, v68

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v5, v20

    invoke-virtual {v5, v0}, Lr0/q;->q(Z)V

    if-eqz v25, :cond_1a

    const v1, -0x5d0e3991

    invoke-virtual {v5, v1}, Lr0/q;->b0(I)V

    sget-object v1, Lcd/d;->U:Lcd/c;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide v3, 0xff2e7d32L

    invoke-static {v3, v4}, Lm1/v;->d(J)J

    move-result-wide v3

    move-object/from16 v14, v26

    invoke-virtual {v5, v14}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo0/h5;

    iget-object v6, v6, Lo0/h5;->h:Lp2/m0;

    const/16 v22, 0x0

    const v23, 0xfffa

    move/from16 v16, v2

    const/4 v2, 0x0

    move-object/from16 v20, v5

    move-object/from16 v19, v6

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v67, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x180

    move/from16 v0, v67

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v5, v20

    :goto_17
    invoke-virtual {v5, v0}, Lr0/q;->q(Z)V

    move-object/from16 v13, p0

    goto :goto_18

    :cond_1a
    const/4 v0, 0x0

    const v1, -0x44b79f31

    invoke-virtual {v5, v1}, Lr0/q;->b0(I)V

    goto :goto_17

    :goto_18
    iget-boolean v7, v13, Lod/r3;->m:Z

    if-nez v7, :cond_1c

    const v1, -0x44aeb54d

    invoke-virtual {v5, v1}, Lr0/q;->b0(I)V

    const/4 v8, 0x6

    int-to-float v1, v8

    move-object/from16 v14, v70

    invoke-static {v14, v1}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v5}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const-string v1, "nudge"

    const/16 v2, 0x36

    invoke-static {v14, v1, v5, v2}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v1

    const/4 v15, 0x4

    int-to-float v2, v15

    invoke-static {v2}, Lu/h;->g(F)Lu/f;

    move-result-object v2

    move-object/from16 v3, v62

    invoke-static {v2, v3, v5, v8}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v2

    iget-wide v3, v5, Lr0/q;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v5}, Lr0/q;->m()Lr0/j1;

    move-result-object v4

    invoke-static {v1, v5}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    invoke-virtual {v5}, Lr0/q;->e0()V

    iget-boolean v6, v5, Lr0/q;->S:Z

    if-eqz v6, :cond_1b

    move-object/from16 v9, v35

    invoke-virtual {v5, v9}, Lr0/q;->l(Li9/a;)V

    :goto_19
    move-object/from16 v10, v63

    goto :goto_1a

    :cond_1b
    move-object/from16 v9, v35

    invoke-virtual {v5}, Lr0/q;->o0()V

    goto :goto_19

    :goto_1a
    invoke-static {v10, v2, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v11, v36

    invoke-static {v11, v4, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v12, v37

    move-object/from16 v2, v38

    invoke-static {v3, v5, v12, v5, v2}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v3, v64

    invoke-static {v3, v1, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/16 v1, 0x4e

    int-to-float v1, v1

    move-object/from16 v31, v3

    invoke-static {v14, v1}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v3

    const/16 v4, 0x1e

    int-to-float v4, v4

    const/16 v6, 0x6c36

    move/from16 v16, v1

    const/4 v1, 0x1

    move-object/from16 v33, v2

    iget-object v2, v13, Lod/r3;->r:Li9/c;

    move/from16 v17, v7

    move/from16 v15, v16

    move-object/from16 v71, v31

    move-object/from16 v7, v33

    invoke-static/range {v1 .. v6}, Lod/e4;->m(ILi9/c;Lf1/r;FLr0/q;I)V

    invoke-static {v14, v15}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v3

    const/4 v1, -0x1

    invoke-static/range {v1 .. v6}, Lod/e4;->m(ILi9/c;Lf1/r;FLr0/q;I)V

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lr0/q;->q(Z)V

    invoke-virtual {v5, v0}, Lr0/q;->q(Z)V

    goto :goto_1b

    :cond_1c
    move/from16 v17, v7

    move-object/from16 v9, v35

    move-object/from16 v11, v36

    move-object/from16 v12, v37

    move-object/from16 v7, v38

    move-object/from16 v10, v63

    move-object/from16 v71, v64

    move-object/from16 v14, v70

    const/4 v1, 0x1

    const/4 v8, 0x6

    const v2, -0x44a922d1

    invoke-virtual {v5, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v5, v0}, Lr0/q;->q(Z)V

    :goto_1b
    invoke-virtual {v5, v1}, Lr0/q;->q(Z)V

    const/16 v15, 0x180

    iget-object v1, v13, Lod/r3;->n:Li9/c;

    if-eqz v17, :cond_1d

    if-eqz v1, :cond_1d

    if-nez v25, :cond_1d

    const v2, 0x29ced7bf

    invoke-virtual {v5, v2}, Lr0/q;->b0(I)V

    int-to-float v2, v8

    invoke-static {v14, v2}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v2

    invoke-static {v2, v5}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v14, v2}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v3

    const/16 v4, 0x28

    int-to-float v4, v4

    invoke-static {v3, v4}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v3

    move-object/from16 v4, v32

    invoke-static {v4, v1, v3, v5, v15}, Lod/e4;->i(Lad/a0;Li9/c;Lf1/r;Lr0/q;I)V

    invoke-virtual {v5, v0}, Lr0/q;->q(Z)V

    goto :goto_1c

    :cond_1d
    move-object/from16 v4, v32

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x29d10353

    invoke-virtual {v5, v3}, Lr0/q;->b0(I)V

    invoke-virtual {v5, v0}, Lr0/q;->q(Z)V

    :goto_1c
    if-nez v17, :cond_1e

    const v3, -0x40b71f34

    invoke-virtual {v5, v3}, Lr0/q;->b0(I)V

    const/4 v3, 0x4

    int-to-float v6, v3

    invoke-static {v14, v6}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v3

    invoke-static {v3, v5}, Lu/b;->e(Lf1/r;Lr0/q;)V

    :goto_1d
    invoke-virtual {v5, v0}, Lr0/q;->q(Z)V

    goto :goto_1e

    :cond_1e
    const v3, 0x29d3a593

    invoke-virtual {v5, v3}, Lr0/q;->b0(I)V

    goto :goto_1d

    :goto_1e
    if-nez v17, :cond_24

    const v3, -0x40b70ffe

    invoke-virtual {v5, v3}, Lr0/q;->b0(I)V

    invoke-static {v14, v2}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v3

    sget-object v6, Lf1/c;->u:Lf1/i;

    move-object/from16 v8, v65

    invoke-static {v8, v6, v5, v0}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v6

    move-object v8, v1

    iget-wide v0, v5, Lr0/q;->T:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    invoke-virtual {v5}, Lr0/q;->m()Lr0/j1;

    move-result-object v1

    invoke-static {v3, v5}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v3

    invoke-virtual {v5}, Lr0/q;->e0()V

    iget-boolean v15, v5, Lr0/q;->S:Z

    if-eqz v15, :cond_1f

    invoke-virtual {v5, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_1f

    :cond_1f
    invoke-virtual {v5}, Lr0/q;->o0()V

    :goto_1f
    invoke-static {v10, v6, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v11, v1, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v0, v5, v12, v5, v7}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v0, v71

    invoke-static {v0, v3, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const-wide v18, 0xffc62828L

    const/16 v15, 0x2b

    if-nez v17, :cond_21

    const v1, 0x1f4231f8

    invoke-virtual {v5, v1}, Lr0/q;->b0(I)V

    move-object/from16 v1, v69

    invoke-virtual {v1, v14, v2}, Lu/z0;->a(Lf1/r;F)Lf1/r;

    move-result-object v3

    int-to-float v6, v15

    invoke-static {v3, v6}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v3

    const-string v2, "reroute"

    const/16 v15, 0x30

    invoke-static {v3, v2, v5, v15}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v2

    sget-object v3, Lo0/q;->a:Lu/s0;

    iget-boolean v3, v4, Lad/a0;->n:Z

    if-eqz v3, :cond_20

    const v3, 0x4b54d3b7    # 1.3947831E7f

    invoke-virtual {v5, v3}, Lr0/q;->b0(I)V

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lr0/q;->q(Z)V

    invoke-static/range {v18 .. v19}, Lm1/v;->d(J)J

    move-result-wide v25

    move-object/from16 v69, v1

    move-object/from16 v20, v2

    move-wide/from16 v1, v25

    goto :goto_20

    :cond_20
    const/4 v3, 0x0

    const v15, 0x4b54d9cd    # 1.3949389E7f

    invoke-virtual {v5, v15}, Lr0/q;->b0(I)V

    sget-object v15, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v5, v15}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lo0/u0;

    move-object/from16 v69, v1

    move-object/from16 v20, v2

    iget-wide v1, v15, Lo0/u0;->a:J

    invoke-virtual {v5, v3}, Lr0/q;->q(Z)V

    :goto_20
    invoke-static {v1, v2, v5}, Lo0/q;->a(JLr0/q;)Lo0/p;

    move-result-object v1

    new-instance v2, Lnd/s;

    const/4 v3, 0x3

    move/from16 v15, v41

    invoke-direct {v2, v3, v15}, Lnd/s;-><init>(IZ)V

    const v3, 0x54ffb871

    invoke-static {v3, v2, v5}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v2

    move-object/from16 v36, v11

    const/high16 v11, 0x30000000

    move-object/from16 v37, v12

    const/16 v12, 0x16c

    move-object/from16 v29, v10

    move-object v10, v5

    move-object v5, v1

    iget-object v1, v13, Lod/r3;->s:Li9/a;

    const/4 v3, 0x0

    move-object/from16 v32, v4

    const/4 v4, 0x0

    move/from16 v25, v6

    const/4 v6, 0x0

    move-object/from16 v33, v7

    const/4 v7, 0x0

    move-object/from16 v31, v0

    move-object/from16 v76, v8

    move-object/from16 v34, v9

    move-object/from16 v8, v24

    move/from16 v0, v25

    move-object/from16 v72, v29

    move-object/from16 v77, v32

    move-object/from16 v75, v33

    move-object/from16 v73, v36

    move-object/from16 v74, v37

    move-object/from16 v15, v69

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v9, v2

    move-object/from16 v2, v20

    invoke-static/range {v1 .. v12}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object v5, v10

    move/from16 v1, v39

    invoke-static {v14, v1}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v2

    invoke-static {v2, v5}, Lu/b;->e(Lf1/r;Lr0/q;)V

    invoke-virtual {v15, v14, v13}, Lu/z0;->a(Lf1/r;F)Lf1/r;

    move-result-object v2

    invoke-static {v2, v0}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v0

    const-string v2, "center"

    const/16 v4, 0x30

    invoke-static {v0, v2, v5, v4}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v2

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v5, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    iget-wide v3, v0, Lo0/u0;->a:J

    invoke-static {v3, v4, v5}, Lo0/q;->a(JLr0/q;)Lo0/p;

    move-result-object v0

    new-instance v3, Lnd/s;

    move/from16 v4, v41

    const/4 v6, 0x4

    invoke-direct {v3, v6, v4}, Lnd/s;-><init>(IZ)V

    const v6, 0x65ea20a8

    invoke-static {v6, v3, v5}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v9

    move-object/from16 v3, p0

    iget-object v1, v3, Lod/r3;->t:Li9/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v13, v39

    move-object v5, v0

    move-object/from16 v0, p0

    invoke-static/range {v1 .. v12}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object v5, v10

    invoke-static {v14, v13}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v5}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lr0/q;->q(Z)V

    :goto_21
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_22

    :cond_21
    move-object/from16 v31, v0

    move-object/from16 v77, v4

    move-object/from16 v75, v7

    move-object/from16 v76, v8

    move-object/from16 v34, v9

    move-object/from16 v72, v10

    move-object/from16 v73, v11

    move-object/from16 v74, v12

    move-object v0, v13

    move-object/from16 v8, v24

    move/from16 v13, v39

    move-object/from16 v15, v69

    const/4 v1, 0x0

    const v2, 0x1f4f647c

    invoke-virtual {v5, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v5, v1}, Lr0/q;->q(Z)V

    goto :goto_21

    :goto_22
    invoke-virtual {v15, v14, v2}, Lu/z0;->a(Lf1/r;F)Lf1/r;

    move-result-object v3

    const/16 v2, 0x2b

    int-to-float v7, v2

    invoke-static {v3, v7}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v2

    const-string v3, "motion"

    const/16 v4, 0x30

    invoke-static {v2, v3, v5, v4}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v2

    sget-object v3, Lf1/c;->p:Lf1/j;

    invoke-static {v3, v1}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v3

    iget-wide v9, v5, Lr0/q;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v5}, Lr0/q;->m()Lr0/j1;

    move-result-object v4

    invoke-static {v2, v5}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    invoke-virtual {v5}, Lr0/q;->e0()V

    iget-boolean v6, v5, Lr0/q;->S:Z

    if-eqz v6, :cond_22

    move-object/from16 v9, v34

    invoke-virtual {v5, v9}, Lr0/q;->l(Li9/a;)V

    :goto_23
    move-object/from16 v10, v72

    goto :goto_24

    :cond_22
    invoke-virtual {v5}, Lr0/q;->o0()V

    goto :goto_23

    :goto_24
    invoke-static {v10, v3, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v11, v73

    invoke-static {v11, v4, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v12, v74

    move-object/from16 v3, v75

    invoke-static {v1, v5, v12, v5, v3}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    move-object/from16 v3, v31

    invoke-static {v3, v2, v5}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v1, v76

    if-eqz v1, :cond_23

    const v2, -0x5ddabe9d

    invoke-virtual {v5, v2}, Lr0/q;->b0(I)V

    sget-object v2, Lu/b1;->c:Lu/v;

    move-object/from16 v4, v77

    const/16 v3, 0x180

    invoke-static {v4, v1, v2, v5, v3}, Lod/e4;->i(Lad/a0;Li9/c;Lf1/r;Lr0/q;I)V

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lr0/q;->q(Z)V

    :goto_25
    const/4 v1, 0x1

    goto :goto_26

    :cond_23
    const/4 v9, 0x0

    const v1, -0x5ddab480

    invoke-virtual {v5, v1}, Lr0/q;->b0(I)V

    move-object/from16 v20, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v1, v0, Lod/r3;->v:Z

    iget-object v2, v0, Lod/r3;->w:Li9/a;

    move-object/from16 v4, v20

    move/from16 v3, v41

    invoke-static/range {v1 .. v6}, Lod/g3;->Q(ZLi9/a;ZLr0/q;II)V

    move-object v5, v4

    invoke-virtual {v5, v9}, Lr0/q;->q(Z)V

    goto :goto_25

    :goto_26
    invoke-virtual {v5, v1}, Lr0/q;->q(Z)V

    invoke-static {v14, v13}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v2

    invoke-static {v2, v5}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v15, v14, v2}, Lu/z0;->a(Lf1/r;F)Lf1/r;

    move-result-object v2

    invoke-static {v2, v7}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v2

    const-string v3, "stop"

    const/16 v4, 0x30

    invoke-static {v2, v3, v5, v4}, Lnd/k0;->a(Lf1/r;Ljava/lang/String;Lr0/q;I)Lf1/r;

    move-result-object v2

    sget-object v3, Lo0/q;->a:Lu/s0;

    invoke-static/range {v18 .. v19}, Lm1/v;->d(J)J

    move-result-wide v3

    invoke-static {v3, v4, v5}, Lo0/q;->a(JLr0/q;)Lo0/p;

    move-result-object v4

    move-object/from16 v19, v8

    sget-object v8, Lod/m;->F:Lz0/d;

    const/high16 v10, 0x30000000

    const/16 v11, 0x16c

    iget-object v0, v0, Lod/r3;->u:Li9/a;

    move/from16 v66, v1

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v20, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v13, v9

    move-object/from16 v7, v19

    move-object/from16 v9, v20

    move/from16 v12, v66

    invoke-static/range {v0 .. v11}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object v5, v9

    invoke-virtual {v5, v12}, Lr0/q;->q(Z)V

    invoke-virtual {v5, v13}, Lr0/q;->q(Z)V

    goto :goto_27

    :cond_24
    move v13, v0

    const/4 v12, 0x1

    const v0, 0x29f1f733

    invoke-virtual {v5, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v5, v13}, Lr0/q;->q(Z)V

    :goto_27
    invoke-virtual {v5, v12}, Lr0/q;->q(Z)V

    goto :goto_28

    :catchall_0
    move-exception v0

    invoke-virtual {v2, v6}, Lp2/d;->c(I)V

    throw v0

    :catchall_1
    move-exception v0

    invoke-virtual {v2, v4}, Lp2/d;->c(I)V

    throw v0

    :cond_25
    invoke-virtual {v5}, Lr0/q;->W()V

    :goto_28
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x88e -> :sswitch_5
        0x1148a -> :sswitch_4
        0x217cf5 -> :sswitch_3
        0x3e43013 -> :sswitch_2
        0x472d4fb -> :sswitch_1
        0x78a1cb00 -> :sswitch_0
    .end sparse-switch
.end method
