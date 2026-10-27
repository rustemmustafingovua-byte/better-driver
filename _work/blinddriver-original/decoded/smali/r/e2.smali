.class public final Lr/e2;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public final synthetic n:Lr/g2;

.field public synthetic o:J


# direct methods
.method public synthetic constructor <init>(Lr/g2;JLy8/c;I)V
    .locals 0

    .line 1
    iput p5, p0, Lr/e2;->l:I

    iput-object p1, p0, Lr/e2;->n:Lr/g2;

    iput-wide p2, p0, Lr/e2;->o:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Lr/g2;Ly8/c;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lr/e2;->l:I

    .line 2
    iput-object p1, p0, Lr/e2;->n:Lr/g2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 8

    iget v0, p0, Lr/e2;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lr/e2;

    iget-object p0, p0, Lr/e2;->n:Lr/g2;

    invoke-direct {v0, p0, p2}, Lr/e2;-><init>(Lr/g2;Ly8/c;)V

    check-cast p1, Ll1/b;

    iget-wide p0, p1, Ll1/b;->a:J

    iput-wide p0, v0, Lr/e2;->o:J

    return-object v0

    :pswitch_0
    new-instance v1, Lr/e2;

    iget-wide v3, p0, Lr/e2;->o:J

    const/4 v6, 0x1

    iget-object v2, p0, Lr/e2;->n:Lr/g2;

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lr/e2;-><init>(Lr/g2;JLy8/c;I)V

    return-object v1

    :pswitch_1
    move-object v5, p2

    new-instance v2, Lr/e2;

    move-object v6, v5

    iget-wide v4, p0, Lr/e2;->o:J

    const/4 v7, 0x0

    iget-object v3, p0, Lr/e2;->n:Lr/g2;

    invoke-direct/range {v2 .. v7}, Lr/e2;-><init>(Lr/g2;JLy8/c;I)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lr/e2;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ll1/b;

    iget-wide v0, p1, Ll1/b;->a:J

    check-cast p2, Ly8/c;

    new-instance p1, Lr/e2;

    iget-object p0, p0, Lr/e2;->n:Lr/g2;

    invoke-direct {p1, p0, p2}, Lr/e2;-><init>(Lr/g2;Ly8/c;)V

    iput-wide v0, p1, Lr/e2;->o:J

    sget-object p0, Lt8/z;->a:Lt8/z;

    invoke-virtual {p1, p0}, Lr/e2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lr/e2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/e2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/e2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lr/e2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/e2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/e2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lr/e2;->l:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lr/e2;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-wide v3, p0, Lr/e2;->o:J

    iget-object p1, p0, Lr/e2;->n:Lr/g2;

    iget-object p1, p1, Lr/g2;->Y:Lr/n2;

    iput v2, p0, Lr/e2;->m:I

    invoke-static {p1, v3, v4, p0}, Lr/z1;->a(Lr/n2;JLa9/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    move-object p1, v0

    :cond_2
    :goto_0
    return-object p1

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lr/e2;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-ne v1, v2, :cond_3

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lr/e2;->n:Lr/g2;

    iget-object p1, p1, Lr/g2;->Y:Lr/n2;

    iget-wide v3, p0, Lr/e2;->o:J

    iput v2, p0, Lr/e2;->m:I

    invoke-virtual {p1, v3, v4, v2, p0}, Lr/n2;->b(JZLa9/i;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_2
    return-object v0

    :pswitch_1
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lr/e2;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    if-ne v1, v2, :cond_6

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lr/e2;->n:Lr/g2;

    iget-object p1, p1, Lr/g2;->Y:Lr/n2;

    sget-object v1, Lp/n1;->m:Lp/n1;

    new-instance v3, Lr/d2;

    iget-wide v4, p0, Lr/e2;->o:J

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lr/d2;-><init>(JLy8/c;)V

    iput v2, p0, Lr/e2;->m:I

    invoke-virtual {p1, v1, v3, p0}, Lr/n2;->f(Lp/n1;Li9/e;La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
