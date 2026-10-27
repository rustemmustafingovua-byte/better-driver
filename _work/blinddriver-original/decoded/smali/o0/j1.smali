.class public abstract Lo0/j1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lq0/m;->a:F

    sput v0, Lo0/j1;->a:F

    return-void
.end method

.method public static a(JJLr0/q;)Lo0/n3;
    .locals 34

    sget-wide v0, Lm1/p;->g:J

    sget-object v2, Lo0/v0;->a:Lr0/s2;

    move-object/from16 v3, p4

    invoke-virtual {v3, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/u0;

    invoke-static {v2}, Lo0/j1;->b(Lo0/u0;)Lo0/n3;

    move-result-object v2

    const-wide/16 v3, 0x10

    cmp-long v5, p0, v3

    if-eqz v5, :cond_0

    move-wide/from16 v8, p0

    goto :goto_0

    :cond_0
    iget-wide v5, v2, Lo0/n3;->a:J

    move-wide v8, v5

    :goto_0
    cmp-long v5, p2, v3

    if-eqz v5, :cond_1

    move-wide/from16 v10, p2

    goto :goto_1

    :cond_1
    iget-wide v5, v2, Lo0/n3;->b:J

    move-wide v10, v5

    :goto_1
    cmp-long v5, v0, v3

    if-eqz v5, :cond_2

    move-wide v12, v0

    goto :goto_2

    :cond_2
    iget-wide v6, v2, Lo0/n3;->c:J

    move-wide v12, v6

    :goto_2
    if-eqz v5, :cond_3

    move-wide v14, v0

    goto :goto_3

    :cond_3
    iget-wide v5, v2, Lo0/n3;->d:J

    move-wide v14, v5

    :goto_3
    cmp-long v5, v0, v3

    if-eqz v5, :cond_4

    move-wide/from16 v16, v0

    goto :goto_4

    :cond_4
    iget-wide v5, v2, Lo0/n3;->e:J

    move-wide/from16 v16, v5

    :goto_4
    cmp-long v5, v0, v3

    if-eqz v5, :cond_5

    move-wide/from16 v18, v0

    goto :goto_5

    :cond_5
    iget-wide v5, v2, Lo0/n3;->f:J

    move-wide/from16 v18, v5

    :goto_5
    cmp-long v5, v0, v3

    if-eqz v5, :cond_6

    move-wide/from16 v20, v0

    goto :goto_6

    :cond_6
    iget-wide v5, v2, Lo0/n3;->g:J

    move-wide/from16 v20, v5

    :goto_6
    cmp-long v5, v0, v3

    if-eqz v5, :cond_7

    move-wide/from16 v22, v0

    goto :goto_7

    :cond_7
    iget-wide v5, v2, Lo0/n3;->h:J

    move-wide/from16 v22, v5

    :goto_7
    cmp-long v5, v0, v3

    if-eqz v5, :cond_8

    move-wide/from16 v24, v0

    goto :goto_8

    :cond_8
    iget-wide v5, v2, Lo0/n3;->i:J

    move-wide/from16 v24, v5

    :goto_8
    cmp-long v5, v0, v3

    if-eqz v5, :cond_9

    move-wide/from16 v26, v0

    goto :goto_9

    :cond_9
    iget-wide v5, v2, Lo0/n3;->j:J

    move-wide/from16 v26, v5

    :goto_9
    cmp-long v5, v0, v3

    if-eqz v5, :cond_a

    move-wide/from16 v28, v0

    goto :goto_a

    :cond_a
    iget-wide v5, v2, Lo0/n3;->k:J

    move-wide/from16 v28, v5

    :goto_a
    cmp-long v5, v0, v3

    if-eqz v5, :cond_b

    move-wide/from16 v30, v0

    goto :goto_b

    :cond_b
    iget-wide v5, v2, Lo0/n3;->l:J

    move-wide/from16 v30, v5

    :goto_b
    cmp-long v3, v0, v3

    if-eqz v3, :cond_c

    :goto_c
    move-wide/from16 v32, v0

    goto :goto_d

    :cond_c
    iget-wide v0, v2, Lo0/n3;->m:J

    goto :goto_c

    :goto_d
    new-instance v7, Lo0/n3;

    invoke-direct/range {v7 .. v33}, Lo0/n3;-><init>(JJJJJJJJJJJJJ)V

    return-object v7
.end method

.method public static b(Lo0/u0;)Lo0/n3;
    .locals 29

    move-object/from16 v0, p0

    iget-object v1, v0, Lo0/u0;->a0:Lo0/n3;

    if-nez v1, :cond_0

    new-instance v2, Lo0/n3;

    sget-wide v3, Lm1/p;->f:J

    sget-object v1, Lq0/m;->t:Lq0/g;

    invoke-static {v0, v1}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v5

    sget-object v1, Lq0/m;->x:Lq0/g;

    invoke-static {v0, v1}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v7

    sget-object v1, Lq0/m;->B:Lq0/g;

    invoke-static {v0, v1}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v9

    sget-object v1, Lq0/m;->c:Lq0/g;

    invoke-static {v0, v1}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v11

    sget v1, Lq0/m;->d:F

    invoke-static {v1, v11, v12}, Lm1/p;->b(FJ)J

    move-result-wide v13

    sget-object v1, Lq0/m;->u:Lq0/g;

    invoke-static {v0, v1}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v11

    sget v1, Lq0/m;->v:F

    invoke-static {v1, v11, v12}, Lm1/p;->b(FJ)J

    move-result-wide v15

    sget-object v1, Lq0/m;->y:Lq0/g;

    invoke-static {v0, v1}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v11

    sget v1, Lq0/m;->z:F

    invoke-static {v1, v11, v12}, Lm1/p;->b(FJ)J

    move-result-wide v17

    sget-object v1, Lq0/m;->k:Lq0/g;

    invoke-static {v0, v1}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v19

    sget-object v1, Lq0/m;->g:Lq0/g;

    invoke-static {v0, v1}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v11

    sget v1, Lq0/m;->h:F

    invoke-static {v1, v11, v12}, Lm1/p;->b(FJ)J

    move-result-wide v21

    sget-object v1, Lq0/m;->s:Lq0/g;

    invoke-static {v0, v1}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v23

    sget-object v1, Lq0/m;->w:Lq0/g;

    invoke-static {v0, v1}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v25

    sget-object v1, Lq0/m;->A:Lq0/g;

    invoke-static {v0, v1}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide v27

    move-wide v11, v3

    invoke-direct/range {v2 .. v28}, Lo0/n3;-><init>(JJJJJJJJJJJJJ)V

    iput-object v2, v0, Lo0/u0;->a0:Lo0/n3;

    return-object v2

    :cond_0
    return-object v1
.end method
