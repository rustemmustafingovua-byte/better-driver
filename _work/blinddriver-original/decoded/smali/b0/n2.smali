.class public final Lb0/n2;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public final synthetic n:Ls/i;

.field public final synthetic o:Z

.field public p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lr0/u0;ZLs/i;Ly8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lb0/n2;->l:I

    .line 1
    iput-object p1, p0, Lb0/n2;->q:Ljava/lang/Object;

    iput-boolean p2, p0, Lb0/n2;->o:Z

    iput-object p3, p0, Lb0/n2;->n:Ls/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Ls/i;Ls/k;ZLp/g;Ly8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lb0/n2;->l:I

    .line 2
    iput-object p1, p0, Lb0/n2;->n:Ls/i;

    iput-object p2, p0, Lb0/n2;->p:Ljava/lang/Object;

    iput-boolean p3, p0, Lb0/n2;->o:Z

    iput-object p4, p0, Lb0/n2;->q:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 6

    iget p1, p0, Lb0/n2;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lb0/n2;

    iget-object p1, p0, Lb0/n2;->p:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ls/k;

    iget-object p1, p0, Lb0/n2;->q:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lp/g;

    iget-object v1, p0, Lb0/n2;->n:Ls/i;

    iget-boolean v3, p0, Lb0/n2;->o:Z

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lb0/n2;-><init>(Ls/i;Ls/k;ZLp/g;Ly8/c;)V

    return-object v0

    :pswitch_0
    move-object v5, p2

    new-instance p1, Lb0/n2;

    iget-object p2, p0, Lb0/n2;->q:Ljava/lang/Object;

    check-cast p2, Lr0/u0;

    iget-boolean v0, p0, Lb0/n2;->o:Z

    iget-object p0, p0, Lb0/n2;->n:Ls/i;

    invoke-direct {p1, p2, v0, p0, v5}, Lb0/n2;-><init>(Lr0/u0;ZLs/i;Ly8/c;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb0/n2;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lb0/n2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/n2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/n2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lb0/n2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/n2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/n2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v0, p0, Lb0/n2;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lb0/n2;->q:Ljava/lang/Object;

    check-cast v0, Lp/g;

    iget-object v1, p0, Lb0/n2;->p:Ljava/lang/Object;

    check-cast v1, Ls/k;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v3, p0, Lb0/n2;->m:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-wide v6, Lp/b0;->a:J

    iput v5, p0, Lb0/n2;->m:I

    invoke-static {v6, v7, p0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_3

    goto :goto_3

    :cond_3
    :goto_0
    iput v4, p0, Lb0/n2;->m:I

    iget-object p1, p0, Lb0/n2;->n:Ls/i;

    invoke-virtual {p1, v1, p0}, Ls/i;->a(Ls/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_4

    goto :goto_3

    :cond_4
    :goto_1
    iget-boolean p0, p0, Lb0/n2;->o:Z

    if-eqz p0, :cond_5

    iput-object v1, v0, Lp/g;->Q:Ls/k;

    goto :goto_2

    :cond_5
    iput-object v1, v0, Lp/g;->M:Ls/k;

    :goto_2
    sget-object v2, Lt8/z;->a:Lt8/z;

    :goto_3
    return-object v2

    :pswitch_0
    iget-object v0, p0, Lb0/n2;->q:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lb0/n2;->m:I

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    if-ne v2, v3, :cond_6

    iget-object p0, p0, Lb0/n2;->p:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lr0/u0;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls/k;

    if-eqz p1, :cond_a

    iget-boolean v2, p0, Lb0/n2;->o:Z

    if-eqz v2, :cond_8

    new-instance v2, Ls/l;

    invoke-direct {v2, p1}, Ls/l;-><init>(Ls/k;)V

    goto :goto_4

    :cond_8
    new-instance v2, Ls/j;

    invoke-direct {v2, p1}, Ls/j;-><init>(Ls/k;)V

    :goto_4
    iget-object p1, p0, Lb0/n2;->n:Ls/i;

    if-eqz p1, :cond_9

    iput-object v0, p0, Lb0/n2;->p:Ljava/lang/Object;

    iput v3, p0, Lb0/n2;->m:I

    invoke-virtual {p1, v2, p0}, Ls/i;->a(Ls/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    const/4 p0, 0x0

    invoke-interface {v0, p0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :cond_a
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_6
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
