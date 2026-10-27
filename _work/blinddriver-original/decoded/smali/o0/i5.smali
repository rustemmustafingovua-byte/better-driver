.class public abstract Lo0/i5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/s2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln/k1;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ln/k1;-><init>(I)V

    new-instance v1, Lr0/s2;

    invoke-direct {v1, v0}, Lr0/m1;-><init>(Li9/a;)V

    sput-object v1, Lo0/i5;->a:Lr0/s2;

    return-void
.end method

.method public static final a(Lq0/g0;Lr0/q;)Lp2/m0;
    .locals 1

    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {p1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo0/h5;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_0
    iget-object p0, p1, Lo0/h5;->x:Lp2/m0;

    return-object p0

    :pswitch_1
    iget-object p0, p1, Lo0/h5;->w:Lp2/m0;

    return-object p0

    :pswitch_2
    iget-object p0, p1, Lo0/h5;->v:Lp2/m0;

    return-object p0

    :pswitch_3
    iget-object p0, p1, Lo0/h5;->D:Lp2/m0;

    return-object p0

    :pswitch_4
    iget-object p0, p1, Lo0/h5;->C:Lp2/m0;

    return-object p0

    :pswitch_5
    iget-object p0, p1, Lo0/h5;->B:Lp2/m0;

    return-object p0

    :pswitch_6
    iget-object p0, p1, Lo0/h5;->u:Lp2/m0;

    return-object p0

    :pswitch_7
    iget-object p0, p1, Lo0/h5;->t:Lp2/m0;

    return-object p0

    :pswitch_8
    iget-object p0, p1, Lo0/h5;->s:Lp2/m0;

    return-object p0

    :pswitch_9
    iget-object p0, p1, Lo0/h5;->r:Lp2/m0;

    return-object p0

    :pswitch_a
    iget-object p0, p1, Lo0/h5;->q:Lp2/m0;

    return-object p0

    :pswitch_b
    iget-object p0, p1, Lo0/h5;->p:Lp2/m0;

    return-object p0

    :pswitch_c
    iget-object p0, p1, Lo0/h5;->A:Lp2/m0;

    return-object p0

    :pswitch_d
    iget-object p0, p1, Lo0/h5;->z:Lp2/m0;

    return-object p0

    :pswitch_e
    iget-object p0, p1, Lo0/h5;->y:Lp2/m0;

    return-object p0

    :pswitch_f
    iget-object p0, p1, Lo0/h5;->i:Lp2/m0;

    return-object p0

    :pswitch_10
    iget-object p0, p1, Lo0/h5;->h:Lp2/m0;

    return-object p0

    :pswitch_11
    iget-object p0, p1, Lo0/h5;->g:Lp2/m0;

    return-object p0

    :pswitch_12
    iget-object p0, p1, Lo0/h5;->o:Lp2/m0;

    return-object p0

    :pswitch_13
    iget-object p0, p1, Lo0/h5;->n:Lp2/m0;

    return-object p0

    :pswitch_14
    iget-object p0, p1, Lo0/h5;->m:Lp2/m0;

    return-object p0

    :pswitch_15
    iget-object p0, p1, Lo0/h5;->f:Lp2/m0;

    return-object p0

    :pswitch_16
    iget-object p0, p1, Lo0/h5;->e:Lp2/m0;

    return-object p0

    :pswitch_17
    iget-object p0, p1, Lo0/h5;->d:Lp2/m0;

    return-object p0

    :pswitch_18
    iget-object p0, p1, Lo0/h5;->c:Lp2/m0;

    return-object p0

    :pswitch_19
    iget-object p0, p1, Lo0/h5;->b:Lp2/m0;

    return-object p0

    :pswitch_1a
    iget-object p0, p1, Lo0/h5;->a:Lp2/m0;

    return-object p0

    :pswitch_1b
    iget-object p0, p1, Lo0/h5;->l:Lp2/m0;

    return-object p0

    :pswitch_1c
    iget-object p0, p1, Lo0/h5;->k:Lp2/m0;

    return-object p0

    :pswitch_1d
    iget-object p0, p1, Lo0/h5;->j:Lp2/m0;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
