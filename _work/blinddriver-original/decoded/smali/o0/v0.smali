.class public abstract Lo0/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/s2;

.field public static final b:Lr0/s2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln/k1;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ln/k1;-><init>(I)V

    new-instance v1, Lr0/s2;

    invoke-direct {v1, v0}, Lr0/m1;-><init>(Li9/a;)V

    sput-object v1, Lo0/v0;->a:Lr0/s2;

    new-instance v0, Ln/k1;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ln/k1;-><init>(I)V

    new-instance v1, Lr0/s2;

    invoke-direct {v1, v0}, Lr0/m1;-><init>(Li9/a;)V

    sput-object v1, Lo0/v0;->b:Lr0/s2;

    return-void
.end method

.method public static final a(Lo0/u0;J)J
    .locals 10

    iget-wide v0, p0, Lo0/u0;->a:J

    iget-wide v2, p0, Lo0/u0;->U:J

    iget-wide v4, p0, Lo0/u0;->Q:J

    iget-wide v6, p0, Lo0/u0;->M:J

    iget-wide v8, p0, Lo0/u0;->q:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide p0, p0, Lo0/u0;->b:J

    return-wide p0

    :cond_0
    iget-wide v0, p0, Lo0/u0;->f:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide p0, p0, Lo0/u0;->g:J

    return-wide p0

    :cond_1
    iget-wide v0, p0, Lo0/u0;->j:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide p0, p0, Lo0/u0;->k:J

    return-wide p0

    :cond_2
    iget-wide v0, p0, Lo0/u0;->n:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide p0, p0, Lo0/u0;->o:J

    return-wide p0

    :cond_3
    iget-wide v0, p0, Lo0/u0;->w:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide p0, p0, Lo0/u0;->x:J

    return-wide p0

    :cond_4
    iget-wide v0, p0, Lo0/u0;->c:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide p0, p0, Lo0/u0;->d:J

    return-wide p0

    :cond_5
    iget-wide v0, p0, Lo0/u0;->h:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide p0, p0, Lo0/u0;->i:J

    return-wide p0

    :cond_6
    iget-wide v0, p0, Lo0/u0;->l:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide p0, p0, Lo0/u0;->m:J

    return-wide p0

    :cond_7
    iget-wide v0, p0, Lo0/u0;->y:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-wide p0, p0, Lo0/u0;->z:J

    return-wide p0

    :cond_8
    iget-wide v0, p0, Lo0/u0;->u:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide p0, p0, Lo0/u0;->v:J

    return-wide p0

    :cond_9
    iget-wide v0, p0, Lo0/u0;->p:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_a

    return-wide v8

    :cond_a
    iget-wide v0, p0, Lo0/u0;->r:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide p0, p0, Lo0/u0;->s:J

    return-wide p0

    :cond_b
    iget-wide v0, p0, Lo0/u0;->D:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_c

    return-wide v8

    :cond_c
    iget-wide v0, p0, Lo0/u0;->F:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_d

    return-wide v8

    :cond_d
    iget-wide v0, p0, Lo0/u0;->G:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_e

    return-wide v8

    :cond_e
    iget-wide v0, p0, Lo0/u0;->H:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_f

    return-wide v8

    :cond_f
    iget-wide v0, p0, Lo0/u0;->I:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_10

    return-wide v8

    :cond_10
    iget-wide v0, p0, Lo0/u0;->J:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_11

    return-wide v8

    :cond_11
    iget-wide v0, p0, Lo0/u0;->E:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_12

    return-wide v8

    :cond_12
    iget-wide v0, p0, Lo0/u0;->K:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_13

    return-wide v6

    :cond_13
    iget-wide v0, p0, Lo0/u0;->L:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_14

    return-wide v6

    :cond_14
    iget-wide v0, p0, Lo0/u0;->O:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_15

    return-wide v4

    :cond_15
    iget-wide v0, p0, Lo0/u0;->P:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_16

    return-wide v4

    :cond_16
    iget-wide v0, p0, Lo0/u0;->S:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_17

    return-wide v2

    :cond_17
    iget-wide v0, p0, Lo0/u0;->T:J

    invoke-static {p1, p2, v0, v1}, Lm1/p;->c(JJ)Z

    move-result p0

    if-eqz p0, :cond_18

    return-wide v2

    :cond_18
    sget p0, Lm1/p;->h:I

    sget-wide p0, Lm1/p;->g:J

    return-wide p0
.end method

.method public static final b(JLr0/q;)J
    .locals 2

    const v0, 0x553c0da

    invoke-virtual {p2, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {p2, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    invoke-static {v0, p0, p1}, Lo0/v0;->a(Lo0/u0;J)J

    move-result-wide p0

    const-wide/16 v0, 0x10

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lo0/z0;->a:Lr0/a0;

    invoke-virtual {p2, p0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm1/p;

    iget-wide p0, p0, Lm1/p;->a:J

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lr0/q;->q(Z)V

    return-wide p0
.end method

.method public static final c(Lo0/u0;Lq0/g;)J
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_0
    iget-wide p0, p0, Lo0/u0;->T:J

    return-wide p0

    :pswitch_1
    iget-wide p0, p0, Lo0/u0;->S:J

    return-wide p0

    :pswitch_2
    iget-wide p0, p0, Lo0/u0;->l:J

    return-wide p0

    :pswitch_3
    iget-wide p0, p0, Lo0/u0;->j:J

    return-wide p0

    :pswitch_4
    iget-wide p0, p0, Lo0/u0;->r:J

    return-wide p0

    :pswitch_5
    iget-wide p0, p0, Lo0/u0;->t:J

    return-wide p0

    :pswitch_6
    iget-wide p0, p0, Lo0/u0;->E:J

    return-wide p0

    :pswitch_7
    iget-wide p0, p0, Lo0/u0;->J:J

    return-wide p0

    :pswitch_8
    iget-wide p0, p0, Lo0/u0;->I:J

    return-wide p0

    :pswitch_9
    iget-wide p0, p0, Lo0/u0;->H:J

    return-wide p0

    :pswitch_a
    iget-wide p0, p0, Lo0/u0;->G:J

    return-wide p0

    :pswitch_b
    iget-wide p0, p0, Lo0/u0;->F:J

    return-wide p0

    :pswitch_c
    iget-wide p0, p0, Lo0/u0;->D:J

    return-wide p0

    :pswitch_d
    iget-wide p0, p0, Lo0/u0;->p:J

    return-wide p0

    :pswitch_e
    iget-wide p0, p0, Lo0/u0;->P:J

    return-wide p0

    :pswitch_f
    iget-wide p0, p0, Lo0/u0;->O:J

    return-wide p0

    :pswitch_10
    iget-wide p0, p0, Lo0/u0;->h:J

    return-wide p0

    :pswitch_11
    iget-wide p0, p0, Lo0/u0;->f:J

    return-wide p0

    :pswitch_12
    iget-wide p0, p0, Lo0/u0;->C:J

    return-wide p0

    :pswitch_13
    iget-wide p0, p0, Lo0/u0;->L:J

    return-wide p0

    :pswitch_14
    iget-wide p0, p0, Lo0/u0;->K:J

    return-wide p0

    :pswitch_15
    iget-wide p0, p0, Lo0/u0;->c:J

    return-wide p0

    :pswitch_16
    iget-wide p0, p0, Lo0/u0;->a:J

    return-wide p0

    :pswitch_17
    iget-wide p0, p0, Lo0/u0;->B:J

    return-wide p0

    :pswitch_18
    iget-wide p0, p0, Lo0/u0;->A:J

    return-wide p0

    :pswitch_19
    iget-wide p0, p0, Lo0/u0;->V:J

    return-wide p0

    :pswitch_1a
    iget-wide p0, p0, Lo0/u0;->U:J

    return-wide p0

    :pswitch_1b
    iget-wide p0, p0, Lo0/u0;->m:J

    return-wide p0

    :pswitch_1c
    iget-wide p0, p0, Lo0/u0;->k:J

    return-wide p0

    :pswitch_1d
    iget-wide p0, p0, Lo0/u0;->s:J

    return-wide p0

    :pswitch_1e
    iget-wide p0, p0, Lo0/u0;->q:J

    return-wide p0

    :pswitch_1f
    iget-wide p0, p0, Lo0/u0;->R:J

    return-wide p0

    :pswitch_20
    iget-wide p0, p0, Lo0/u0;->Q:J

    return-wide p0

    :pswitch_21
    iget-wide p0, p0, Lo0/u0;->i:J

    return-wide p0

    :pswitch_22
    iget-wide p0, p0, Lo0/u0;->g:J

    return-wide p0

    :pswitch_23
    iget-wide p0, p0, Lo0/u0;->N:J

    return-wide p0

    :pswitch_24
    iget-wide p0, p0, Lo0/u0;->M:J

    return-wide p0

    :pswitch_25
    iget-wide p0, p0, Lo0/u0;->d:J

    return-wide p0

    :pswitch_26
    iget-wide p0, p0, Lo0/u0;->b:J

    return-wide p0

    :pswitch_27
    iget-wide p0, p0, Lo0/u0;->z:J

    return-wide p0

    :pswitch_28
    iget-wide p0, p0, Lo0/u0;->x:J

    return-wide p0

    :pswitch_29
    iget-wide p0, p0, Lo0/u0;->o:J

    return-wide p0

    :pswitch_2a
    iget-wide p0, p0, Lo0/u0;->u:J

    return-wide p0

    :pswitch_2b
    iget-wide p0, p0, Lo0/u0;->e:J

    return-wide p0

    :pswitch_2c
    iget-wide p0, p0, Lo0/u0;->v:J

    return-wide p0

    :pswitch_2d
    iget-wide p0, p0, Lo0/u0;->y:J

    return-wide p0

    :pswitch_2e
    iget-wide p0, p0, Lo0/u0;->w:J

    return-wide p0

    :pswitch_2f
    iget-wide p0, p0, Lo0/u0;->n:J

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final d(Lq0/g;Lr0/q;)J
    .locals 1

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {p1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo0/u0;

    invoke-static {p1, p0}, Lo0/v0;->c(Lo0/u0;Lq0/g;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static e()Lo0/u0;
    .locals 97

    sget-wide v1, Lq0/f;->z:J

    sget-wide v3, Lq0/f;->j:J

    sget-wide v5, Lq0/f;->A:J

    sget-wide v7, Lq0/f;->k:J

    sget-wide v9, Lq0/f;->e:J

    sget-wide v11, Lq0/f;->E:J

    sget-wide v13, Lq0/f;->n:J

    sget-wide v15, Lq0/f;->F:J

    sget-wide v17, Lq0/f;->o:J

    sget-wide v19, Lq0/f;->R:J

    sget-wide v21, Lq0/f;->t:J

    sget-wide v23, Lq0/f;->S:J

    sget-wide v25, Lq0/f;->u:J

    sget-wide v27, Lq0/f;->a:J

    sget-wide v29, Lq0/f;->g:J

    sget-wide v31, Lq0/f;->I:J

    sget-wide v33, Lq0/f;->r:J

    sget-wide v35, Lq0/f;->Q:J

    sget-wide v37, Lq0/f;->s:J

    sget-wide v41, Lq0/f;->f:J

    sget-wide v43, Lq0/f;->d:J

    sget-wide v45, Lq0/f;->b:J

    sget-wide v47, Lq0/f;->h:J

    sget-wide v49, Lq0/f;->c:J

    sget-wide v51, Lq0/f;->i:J

    sget-wide v53, Lq0/f;->x:J

    sget-wide v55, Lq0/f;->y:J

    sget-wide v57, Lq0/f;->D:J

    sget-wide v59, Lq0/f;->J:J

    sget-wide v63, Lq0/f;->K:J

    sget-wide v65, Lq0/f;->L:J

    sget-wide v67, Lq0/f;->M:J

    sget-wide v69, Lq0/f;->N:J

    sget-wide v71, Lq0/f;->O:J

    sget-wide v61, Lq0/f;->P:J

    sget-wide v73, Lq0/f;->B:J

    sget-wide v75, Lq0/f;->C:J

    sget-wide v77, Lq0/f;->l:J

    sget-wide v79, Lq0/f;->m:J

    sget-wide v81, Lq0/f;->G:J

    sget-wide v83, Lq0/f;->H:J

    sget-wide v85, Lq0/f;->p:J

    sget-wide v87, Lq0/f;->q:J

    sget-wide v89, Lq0/f;->T:J

    sget-wide v91, Lq0/f;->U:J

    sget-wide v93, Lq0/f;->v:J

    sget-wide v95, Lq0/f;->w:J

    new-instance v0, Lo0/u0;

    move-wide/from16 v39, v1

    invoke-direct/range {v0 .. v96}, Lo0/u0;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    return-object v0
.end method
