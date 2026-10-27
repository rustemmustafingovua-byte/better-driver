.class public final Lod/y3;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILr0/u0;Ly8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lod/y3;->l:I

    .line 1
    iput p1, p0, Lod/y3;->n:I

    iput-object p2, p0, Lod/y3;->o:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Lx/l0;ILy8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lod/y3;->l:I

    .line 2
    iput-object p1, p0, Lod/y3;->o:Ljava/lang/Object;

    iput p2, p0, Lod/y3;->n:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 1

    iget p1, p0, Lod/y3;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lod/y3;

    iget-object v0, p0, Lod/y3;->o:Ljava/lang/Object;

    check-cast v0, Lx/l0;

    iget p0, p0, Lod/y3;->n:I

    invoke-direct {p1, v0, p0, p2}, Lod/y3;-><init>(Lx/l0;ILy8/c;)V

    return-object p1

    :pswitch_0
    new-instance p1, Lod/y3;

    iget-object v0, p0, Lod/y3;->o:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    iget p0, p0, Lod/y3;->n:I

    invoke-direct {p1, p0, v0, p2}, Lod/y3;-><init>(ILr0/u0;Ly8/c;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lod/y3;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lod/y3;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/y3;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/y3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lod/y3;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/y3;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/y3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lod/y3;->l:I

    iget v1, p0, Lod/y3;->n:I

    iget-object v2, p0, Lod/y3;->o:Ljava/lang/Object;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    const/4 v4, 0x1

    sget-object v5, Lt8/z;->a:Lt8/z;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v6, p0, Lod/y3;->m:I

    if-eqz v6, :cond_1

    if-ne v6, v4, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    check-cast v2, Lx/l0;

    iget-object p1, v2, Lx/l0;->A:Lw/c;

    iput v4, p0, Lod/y3;->m:I

    iget-object p1, p1, Lw/c;->b:Lw/p;

    sget-object v2, Lw/p;->x:Lg5/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lad/w;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1, v3}, Lad/w;-><init>(Lw/p;ILy8/c;)V

    sget-object v1, Lp/n1;->l:Lp/n1;

    invoke-virtual {p1, v1, v2, p0}, Lw/p;->b(Lp/n1;Li9/e;La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v5

    :goto_0
    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, v5

    :goto_1
    if-ne p0, v0, :cond_4

    move-object v5, v0

    :cond_4
    :goto_2
    return-object v5

    :pswitch_0
    check-cast v2, Lr0/u0;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v6, p0, Lod/y3;->m:I

    if-eqz v6, :cond_6

    if-ne v6, v4, :cond_5

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget p1, Lod/e4;->c:I

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :goto_3
    if-nez v1, :cond_8

    iput v4, p0, Lod/y3;->m:I

    const-wide/16 v6, 0x384

    invoke-static {v6, v7, p0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    move-object v5, v0

    goto :goto_5

    :cond_7
    :goto_4
    sget p1, Lod/e4;->c:I

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v2, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    :goto_5
    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
