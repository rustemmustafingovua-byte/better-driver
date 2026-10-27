.class public final synthetic Le3/v;
.super Lj9/l;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    iput p8, p0, Le3/v;->s:I

    invoke-direct/range {p0 .. p7}, Lj9/l;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Le3/v;->s:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lk1/y;

    check-cast p2, Lk1/y;

    iget-object p0, p0, Lj9/d;->m:Ljava/lang/Object;

    check-cast p0, Lp/p0;

    iget-boolean v0, p0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    check-cast p2, Lk1/z;

    invoke-virtual {p2}, Lk1/z;->b()Z

    move-result p2

    check-cast p1, Lk1/z;

    invoke-virtual {p1}, Lk1/z;->b()Z

    move-result p1

    if-ne p2, p1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lp/p0;->C:Li9/c;

    if-eqz p1, :cond_2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 p1, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v0

    new-instance v1, Lad/w;

    const/16 v2, 0xf

    invoke-direct {v1, p0, p1, v2}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    const/4 v2, 0x3

    invoke-static {v0, p1, p1, v1, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    new-instance v0, Lj9/y;

    invoke-direct {v0}, Lj9/y;-><init>()V

    new-instance v1, Lb0/n;

    const/16 v2, 0x1c

    invoke-direct {v1, v2, v0, p0}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v1}, Le2/l;->r(Lf1/q;Li9/a;)V

    iget-object v0, v0, Lj9/y;->m:Ljava/lang/Object;

    check-cast v0, Lx/a0;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lx/a0;->a()Lx/a0;

    goto :goto_0

    :cond_3
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lp/p0;->E:Lx/a0;

    iget-object v0, p0, Lp/p0;->F:Le2/h1;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Le2/h1;->U0()Lf1/q;

    move-result-object v0

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lp/p0;->Q0()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lp/p0;->E:Lx/a0;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lx/a0;->b()V

    :cond_5
    iput-object p1, p0, Lp/p0;->E:Lx/a0;

    invoke-virtual {p0}, Lp/p0;->Q0()V

    :cond_6
    :goto_1
    invoke-static {p0}, Le2/l;->m(Le2/z1;)V

    iget-object v0, p0, Lp/p0;->B:Ls/i;

    if-eqz v0, :cond_9

    if-eqz p2, :cond_8

    iget-object p2, p0, Lp/p0;->D:Ls/d;

    if-eqz p2, :cond_7

    new-instance v1, Ls/e;

    invoke-direct {v1, p2}, Ls/e;-><init>(Ls/d;)V

    invoke-virtual {p0, v0, v1}, Lp/p0;->P0(Ls/i;Ls/h;)V

    iput-object p1, p0, Lp/p0;->D:Ls/d;

    :cond_7
    new-instance p1, Ls/d;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0, p1}, Lp/p0;->P0(Ls/i;Ls/h;)V

    iput-object p1, p0, Lp/p0;->D:Ls/d;

    goto :goto_2

    :cond_8
    iget-object p2, p0, Lp/p0;->D:Ls/d;

    if-eqz p2, :cond_9

    new-instance v1, Ls/e;

    invoke-direct {v1, p2}, Ls/e;-><init>(Ls/d;)V

    invoke-virtual {p0, v0, v1}, Lp/p0;->P0(Ls/i;Ls/h;)V

    iput-object p1, p0, Lp/p0;->D:Ls/d;

    :cond_9
    :goto_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Lkotlinx/serialization/descriptors/SerialDescriptor;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const-string v0, "p0"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lj9/d;->m:Ljava/lang/Object;

    check-cast p0, Lja/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->k(I)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->j(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->c()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_3

    :cond_a
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Lja/i;->b:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lk1/y;

    check-cast p2, Lk1/y;

    iget-object p0, p0, Lj9/d;->m:Ljava/lang/Object;

    check-cast p0, Le3/w;

    iget-boolean v0, p0, Lf1/q;->y:Z

    if-nez v0, :cond_b

    goto :goto_4

    :cond_b
    check-cast p2, Lk1/z;

    invoke-virtual {p2}, Lk1/z;->b()Z

    move-result p2

    check-cast p1, Lk1/z;

    invoke-virtual {p1}, Lk1/z;->b()Z

    move-result p1

    if-ne p2, p1, :cond_c

    goto :goto_4

    :cond_c
    const/4 p1, 0x0

    if-eqz p2, :cond_e

    new-instance p2, Lj9/y;

    invoke-direct {p2}, Lj9/y;-><init>()V

    new-instance v0, Ld5/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p2, p0}, Ld5/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Le2/l;->r(Lf1/q;Li9/a;)V

    iget-object p2, p2, Lj9/y;->m:Ljava/lang/Object;

    check-cast p2, Lx/a0;

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lx/a0;->a()Lx/a0;

    move-object p1, p2

    :cond_d
    iput-object p1, p0, Le3/w;->C:Lx/a0;

    goto :goto_4

    :cond_e
    iget-object p2, p0, Le3/w;->C:Lx/a0;

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Lx/a0;->b()V

    :cond_f
    iput-object p1, p0, Le3/w;->C:Lx/a0;

    :goto_4
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
