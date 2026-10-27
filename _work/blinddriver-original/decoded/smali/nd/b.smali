.class public final synthetic Lnd/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLi9/a;I)V
    .locals 0

    .line 1
    const/4 p5, 0x2

    iput p5, p0, Lnd/b;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd/b;->o:Ljava/lang/Object;

    iput-object p2, p0, Lnd/b;->p:Ljava/lang/Object;

    iput-boolean p3, p0, Lnd/b;->m:Z

    iput-object p4, p0, Lnd/b;->n:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lld/j;Ljava/lang/Double;Li9/a;Z)V
    .locals 1

    .line 2
    const/4 v0, 0x3

    iput v0, p0, Lnd/b;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd/b;->o:Ljava/lang/Object;

    iput-object p2, p0, Lnd/b;->p:Ljava/lang/Object;

    iput-object p3, p0, Lnd/b;->n:Ljava/lang/Object;

    iput-boolean p4, p0, Lnd/b;->m:Z

    return-void
.end method

.method public synthetic constructor <init>(Lqd/q;Lqd/n;Lqd/e;ZI)V
    .locals 0

    .line 3
    const/4 p5, 0x4

    iput p5, p0, Lnd/b;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd/b;->n:Ljava/lang/Object;

    iput-object p2, p0, Lnd/b;->o:Ljava/lang/Object;

    iput-object p3, p0, Lnd/b;->p:Ljava/lang/Object;

    iput-boolean p4, p0, Lnd/b;->m:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLi9/a;Li9/a;Li9/a;I)V
    .locals 0

    .line 4
    const/4 p5, 0x0

    iput p5, p0, Lnd/b;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lnd/b;->m:Z

    iput-object p2, p0, Lnd/b;->n:Ljava/lang/Object;

    iput-object p3, p0, Lnd/b;->o:Ljava/lang/Object;

    iput-object p4, p0, Lnd/b;->p:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLi9/c;Lr0/u0;Lr0/u0;)V
    .locals 1

    .line 5
    const/4 v0, 0x1

    iput v0, p0, Lnd/b;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lnd/b;->m:Z

    iput-object p2, p0, Lnd/b;->n:Ljava/lang/Object;

    iput-object p3, p0, Lnd/b;->o:Ljava/lang/Object;

    iput-object p4, p0, Lnd/b;->p:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lnd/b;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lnd/b;->n:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lqd/q;

    iget-object v0, p0, Lnd/b;->o:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lqd/n;

    iget-object v0, p0, Lnd/b;->p:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lqd/e;

    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0xc01

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v6

    iget-boolean v4, p0, Lnd/b;->m:Z

    invoke-static/range {v1 .. v6}, Lod/m;->A(Lqd/q;Lqd/n;Lqd/e;ZLr0/q;I)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lnd/b;->o:Ljava/lang/Object;

    check-cast v0, Lld/j;

    iget-object v1, p0, Lnd/b;->p:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    iget-object v2, p0, Lnd/b;->n:Ljava/lang/Object;

    check-cast v2, Li9/a;

    move-object v10, p1

    check-cast v10, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p2, v3, :cond_0

    move p2, v4

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_1
    and-int/2addr p1, v4

    invoke-virtual {v10, p1, p2}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v10, p1}, Lr0/q;->e(I)Z

    move-result p1

    invoke-virtual {v10, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p1, p2

    invoke-virtual {v10, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p1, p2

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p2

    if-nez p1, :cond_1

    sget-object p1, Lr0/m;->a:Lr0/e;

    if-ne p2, p1, :cond_2

    :cond_1
    new-instance p2, Lb0/c3;

    const/16 p1, 0xb

    invoke-direct {p2, v0, v1, v2, p1}, Lb0/c3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, p2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    move-object v3, p2

    check-cast v3, Li9/a;

    sget-object v9, Lod/m;->z1:Lz0/d;

    const/high16 v11, 0x30000000

    const/16 v12, 0x1fa

    const/4 v4, 0x0

    iget-boolean v5, p0, Lnd/b;->m:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v12}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_2

    :cond_3
    invoke-virtual {v10}, Lr0/q;->W()V

    :goto_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lnd/b;->o:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lnd/b;->p:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lnd/b;->n:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Li9/a;

    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v6

    iget-boolean v3, p0, Lnd/b;->m:Z

    invoke-static/range {v1 .. v6}, Lod/v6;->g(Ljava/lang/String;Ljava/lang/String;ZLi9/a;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lnd/b;->n:Ljava/lang/Object;

    check-cast v0, Li9/c;

    iget-object v1, p0, Lnd/b;->o:Ljava/lang/Object;

    check-cast v1, Lr0/u0;

    iget-object v2, p0, Lnd/b;->p:Ljava/lang/Object;

    check-cast v2, Lr0/u0;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    and-int/lit8 v3, p2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_4

    move v3, v6

    goto :goto_3

    :cond_4
    move v3, v5

    :goto_3
    and-int/2addr p2, v6

    invoke-virtual {p1, p2, v3}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldd/n;

    invoke-virtual {p1, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_5

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v3, v1, :cond_6

    :cond_5
    new-instance v3, Lod/w0;

    const/4 v1, 0x1

    invoke-direct {v3, v0, v2, v1}, Lod/w0;-><init>(Li9/c;Lr0/u0;I)V

    invoke-virtual {p1, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    check-cast v3, Li9/a;

    iget-boolean p0, p0, Lnd/b;->m:Z

    invoke-static {p0, p2, v3, p1, v5}, Lod/m;->v(ZLdd/n;Li9/a;Lr0/q;I)V

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_4
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_3
    iget-object v0, p0, Lnd/b;->n:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Li9/a;

    iget-object v0, p0, Lnd/b;->o:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Li9/a;

    iget-object v0, p0, Lnd/b;->p:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Li9/a;

    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0xd81

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v6

    iget-boolean v1, p0, Lnd/b;->m:Z

    invoke-static/range {v1 .. v6}, Lnd/a;->a(ZLi9/a;Li9/a;Li9/a;Lr0/q;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
