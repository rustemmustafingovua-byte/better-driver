.class public final Lb0/j1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lb0/j1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/KeyEvent;)Lb0/i1;
    .locals 5

    iget p0, p0, Lb0/j1;->a:I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {p0}, Lw1/c;->a(I)J

    move-result-wide v1

    sget-wide v3, Lw1/a;->f:J

    invoke-static {v1, v2, v3, v4}, Lw1/a;->a(JJ)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lb0/i1;->b0:Lb0/i1;

    goto :goto_0

    :cond_0
    sget-wide v3, Lw1/a;->g:J

    invoke-static {v1, v2, v3, v4}, Lw1/a;->a(JJ)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lb0/i1;->c0:Lb0/i1;

    goto :goto_0

    :cond_1
    sget-wide v3, Lw1/a;->d:J

    invoke-static {v1, v2, v3, v4}, Lw1/a;->a(JJ)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lb0/i1;->T:Lb0/i1;

    goto :goto_0

    :cond_2
    sget-wide v3, Lw1/a;->e:J

    invoke-static {v1, v2, v3, v4}, Lw1/a;->a(JJ)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lb0/i1;->U:Lb0/i1;

    goto :goto_0

    :cond_3
    move-object p0, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {p0}, Lw1/c;->a(I)J

    move-result-wide v1

    sget-wide v3, Lw1/a;->f:J

    invoke-static {v1, v2, v3, v4}, Lw1/a;->a(JJ)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lb0/i1;->u:Lb0/i1;

    goto :goto_0

    :cond_5
    sget-wide v3, Lw1/a;->g:J

    invoke-static {v1, v2, v3, v4}, Lw1/a;->a(JJ)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lb0/i1;->v:Lb0/i1;

    goto :goto_0

    :cond_6
    sget-wide v3, Lw1/a;->d:J

    invoke-static {v1, v2, v3, v4}, Lw1/a;->a(JJ)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lb0/i1;->B:Lb0/i1;

    goto :goto_0

    :cond_7
    sget-wide v3, Lw1/a;->e:J

    invoke-static {v1, v2, v3, v4}, Lw1/a;->a(JJ)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lb0/i1;->C:Lb0/i1;

    :goto_0
    if-nez p0, :cond_19

    sget-object p0, Lb0/m1;->a:Lb0/l1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Lw1/c;->a(I)J

    move-result-wide v1

    sget-wide v3, Lw1/a;->f:J

    invoke-static {v1, v2, v3, v4}, Lw1/a;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v0, Lb0/i1;->V:Lb0/i1;

    goto/16 :goto_1

    :cond_8
    sget-wide v3, Lw1/a;->g:J

    invoke-static {v1, v2, v3, v4}, Lw1/a;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v0, Lb0/i1;->W:Lb0/i1;

    goto/16 :goto_1

    :cond_9
    sget-wide v3, Lw1/a;->d:J

    invoke-static {v1, v2, v3, v4}, Lw1/a;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v0, Lb0/i1;->Y:Lb0/i1;

    goto/16 :goto_1

    :cond_a
    sget-wide v3, Lw1/a;->e:J

    invoke-static {v1, v2, v3, v4}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v0, Lb0/i1;->X:Lb0/i1;

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Lw1/c;->a(I)J

    move-result-wide v1

    sget-wide v3, Lw1/a;->f:J

    invoke-static {v1, v2, v3, v4}, Lw1/a;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v0, Lb0/i1;->p:Lb0/i1;

    goto/16 :goto_1

    :cond_c
    sget-wide v3, Lw1/a;->g:J

    invoke-static {v1, v2, v3, v4}, Lw1/a;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v0, Lb0/i1;->o:Lb0/i1;

    goto/16 :goto_1

    :cond_d
    sget-wide v3, Lw1/a;->d:J

    invoke-static {v1, v2, v3, v4}, Lw1/a;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v0, Lb0/i1;->r:Lb0/i1;

    goto/16 :goto_1

    :cond_e
    sget-wide v3, Lw1/a;->e:J

    invoke-static {v1, v2, v3, v4}, Lw1/a;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v0, Lb0/i1;->q:Lb0/i1;

    goto/16 :goto_1

    :cond_f
    sget-wide v3, Lw1/a;->k:J

    invoke-static {v1, v2, v3, v4}, Lw1/a;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v0, Lb0/i1;->G:Lb0/i1;

    goto/16 :goto_1

    :cond_10
    sget-wide v3, Lw1/a;->t:J

    invoke-static {v1, v2, v3, v4}, Lw1/a;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_11

    sget-object v0, Lb0/i1;->J:Lb0/i1;

    goto :goto_1

    :cond_11
    sget-wide v3, Lw1/a;->s:J

    invoke-static {v1, v2, v3, v4}, Lw1/a;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_12

    sget-object v0, Lb0/i1;->I:Lb0/i1;

    goto :goto_1

    :cond_12
    sget-wide v3, Lw1/a;->B:J

    invoke-static {v1, v2, v3, v4}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v0, Lb0/i1;->d0:Lb0/i1;

    goto :goto_1

    :cond_13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Lw1/c;->a(I)J

    move-result-wide v1

    sget-wide v3, Lw1/a;->v:J

    invoke-static {v1, v2, v3, v4}, Lw1/a;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_14

    sget-object v0, Lb0/i1;->Z:Lb0/i1;

    goto :goto_1

    :cond_14
    sget-wide v3, Lw1/a;->w:J

    invoke-static {v1, v2, v3, v4}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v0, Lb0/i1;->a0:Lb0/i1;

    goto :goto_1

    :cond_15
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Lw1/c;->a(I)J

    move-result-wide v1

    sget-wide v3, Lw1/a;->s:J

    invoke-static {v1, v2, v3, v4}, Lw1/a;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_16

    sget-object v0, Lb0/i1;->K:Lb0/i1;

    goto :goto_1

    :cond_16
    sget-wide v3, Lw1/a;->t:J

    invoke-static {v1, v2, v3, v4}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v0, Lb0/i1;->L:Lb0/i1;

    :cond_17
    :goto_1
    if-nez v0, :cond_18

    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Lb0/j1;

    invoke-virtual {p0, p1}, Lb0/j1;->a(Landroid/view/KeyEvent;)Lb0/i1;

    move-result-object p0

    goto :goto_2

    :cond_18
    move-object p0, v0

    :cond_19
    :goto_2
    return-object p0

    :pswitch_0
    sget p0, Lb0/k1;->s:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_1a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p0

    if-eqz p0, :cond_1a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {p0}, Lw1/c;->a(I)J

    move-result-wide p0

    sget-wide v1, Lw1/a;->o:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result p0

    if-eqz p0, :cond_3c

    sget-object v0, Lb0/i1;->h0:Lb0/i1;

    goto/16 :goto_5

    :cond_1a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_21

    invoke-static {p1}, Lw1/c;->b(Landroid/view/KeyEvent;)J

    move-result-wide p0

    sget-wide v1, Lw1/a;->j:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_20

    sget-wide v1, Lw1/a;->x:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_3

    :cond_1b
    sget-wide v1, Lw1/a;->l:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v0, Lb0/i1;->E:Lb0/i1;

    goto/16 :goto_5

    :cond_1c
    sget-wide v1, Lw1/a;->m:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v0, Lb0/i1;->F:Lb0/i1;

    goto/16 :goto_5

    :cond_1d
    sget-wide v1, Lw1/a;->i:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v0, Lb0/i1;->M:Lb0/i1;

    goto/16 :goto_5

    :cond_1e
    sget-wide v1, Lw1/a;->n:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v0, Lb0/i1;->h0:Lb0/i1;

    goto/16 :goto_5

    :cond_1f
    sget-wide v1, Lw1/a;->o:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result p0

    if-eqz p0, :cond_3c

    sget-object v0, Lb0/i1;->g0:Lb0/i1;

    goto/16 :goto_5

    :cond_20
    :goto_3
    sget-object v0, Lb0/i1;->D:Lb0/i1;

    goto/16 :goto_5

    :cond_21
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_22

    goto/16 :goto_5

    :cond_22
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p0

    if-eqz p0, :cond_2b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {p0}, Lw1/c;->a(I)J

    move-result-wide p0

    sget-wide v1, Lw1/a;->f:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v0, Lb0/i1;->N:Lb0/i1;

    goto/16 :goto_5

    :cond_23
    sget-wide v1, Lw1/a;->g:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_24

    sget-object v0, Lb0/i1;->O:Lb0/i1;

    goto/16 :goto_5

    :cond_24
    sget-wide v1, Lw1/a;->d:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_25

    sget-object v0, Lb0/i1;->P:Lb0/i1;

    goto/16 :goto_5

    :cond_25
    sget-wide v1, Lw1/a;->e:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_26

    sget-object v0, Lb0/i1;->Q:Lb0/i1;

    goto/16 :goto_5

    :cond_26
    sget-wide v1, Lw1/a;->C:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_27

    sget-object v0, Lb0/i1;->R:Lb0/i1;

    goto/16 :goto_5

    :cond_27
    sget-wide v1, Lw1/a;->D:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_28

    sget-object v0, Lb0/i1;->S:Lb0/i1;

    goto/16 :goto_5

    :cond_28
    sget-wide v1, Lw1/a;->v:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object v0, Lb0/i1;->Z:Lb0/i1;

    goto/16 :goto_5

    :cond_29
    sget-wide v1, Lw1/a;->w:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_2a

    sget-object v0, Lb0/i1;->a0:Lb0/i1;

    goto/16 :goto_5

    :cond_2a
    sget-wide v1, Lw1/a;->x:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result p0

    if-eqz p0, :cond_3c

    sget-object v0, Lb0/i1;->E:Lb0/i1;

    goto/16 :goto_5

    :cond_2b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    invoke-static {p0}, Lw1/c;->a(I)J

    move-result-wide p0

    sget-wide v1, Lw1/a;->f:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_2c

    sget-object v0, Lb0/i1;->m:Lb0/i1;

    goto/16 :goto_5

    :cond_2c
    sget-wide v1, Lw1/a;->g:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_2d

    sget-object v0, Lb0/i1;->n:Lb0/i1;

    goto/16 :goto_5

    :cond_2d
    sget-wide v1, Lw1/a;->d:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v0, Lb0/i1;->w:Lb0/i1;

    goto/16 :goto_5

    :cond_2e
    sget-wide v1, Lw1/a;->e:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_2f

    sget-object v0, Lb0/i1;->x:Lb0/i1;

    goto/16 :goto_5

    :cond_2f
    sget-wide v1, Lw1/a;->h:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_30

    sget-object v0, Lb0/i1;->y:Lb0/i1;

    goto/16 :goto_5

    :cond_30
    sget-wide v1, Lw1/a;->C:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_31

    sget-object v0, Lb0/i1;->z:Lb0/i1;

    goto/16 :goto_5

    :cond_31
    sget-wide v1, Lw1/a;->D:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_32

    sget-object v0, Lb0/i1;->A:Lb0/i1;

    goto/16 :goto_5

    :cond_32
    sget-wide v1, Lw1/a;->v:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_33

    sget-object v0, Lb0/i1;->s:Lb0/i1;

    goto :goto_5

    :cond_33
    sget-wide v1, Lw1/a;->w:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_34

    sget-object v0, Lb0/i1;->t:Lb0/i1;

    goto :goto_5

    :cond_34
    sget-wide v1, Lw1/a;->r:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_3b

    sget-wide v1, Lw1/a;->E:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_4

    :cond_35
    sget-wide v1, Lw1/a;->s:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_36

    sget-object v0, Lb0/i1;->G:Lb0/i1;

    goto :goto_5

    :cond_36
    sget-wide v1, Lw1/a;->t:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_37

    sget-object v0, Lb0/i1;->H:Lb0/i1;

    goto :goto_5

    :cond_37
    sget-wide v1, Lw1/a;->A:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_38

    sget-object v0, Lb0/i1;->E:Lb0/i1;

    goto :goto_5

    :cond_38
    sget-wide v1, Lw1/a;->y:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_39

    sget-object v0, Lb0/i1;->F:Lb0/i1;

    goto :goto_5

    :cond_39
    sget-wide v1, Lw1/a;->z:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_3a

    sget-object v0, Lb0/i1;->D:Lb0/i1;

    goto :goto_5

    :cond_3a
    sget-wide v1, Lw1/a;->p:J

    invoke-static {p0, p1, v1, v2}, Lw1/a;->a(JJ)Z

    move-result p0

    if-eqz p0, :cond_3c

    sget-object v0, Lb0/i1;->f0:Lb0/i1;

    goto :goto_5

    :cond_3b
    :goto_4
    sget-object v0, Lb0/i1;->e0:Lb0/i1;

    :cond_3c
    :goto_5
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
