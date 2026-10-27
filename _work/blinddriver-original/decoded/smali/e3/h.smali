.class public final Le3/h;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public final synthetic n:J

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/Object;Ly8/c;I)V
    .locals 0

    .line 1
    iput p5, p0, Le3/h;->l:I

    iput-wide p1, p0, Le3/h;->n:J

    iput-object p3, p0, Le3/h;->o:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;JLy8/c;I)V
    .locals 0

    .line 2
    iput p5, p0, Le3/h;->l:I

    iput-object p1, p0, Le3/h;->o:Ljava/lang/Object;

    iput-wide p2, p0, Le3/h;->n:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 7

    iget p1, p0, Le3/h;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance v0, Le3/h;

    iget-object p1, p0, Le3/h;->o:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Ly1/j0;

    const/4 v5, 0x3

    iget-wide v1, p0, Le3/h;->n:J

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Le3/h;-><init>(JLjava/lang/Object;Ly8/c;I)V

    return-object v0

    :pswitch_0
    move-object v5, p2

    new-instance v1, Le3/h;

    iget-object p1, p0, Le3/h;->o:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x2

    iget-wide v2, p0, Le3/h;->n:J

    invoke-direct/range {v1 .. v6}, Le3/h;-><init>(JLjava/lang/Object;Ly8/c;I)V

    return-object v1

    :pswitch_1
    move-object v5, p2

    new-instance v1, Le3/h;

    iget-object p1, p0, Le3/h;->o:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ln/c;

    iget-wide v3, p0, Le3/h;->n:J

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Le3/h;-><init>(Ljava/lang/Object;JLy8/c;I)V

    return-object v1

    :pswitch_2
    move-object v5, p2

    new-instance v1, Le3/h;

    iget-object p1, p0, Le3/h;->o:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Le3/k;

    iget-wide v3, p0, Le3/h;->n:J

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Le3/h;-><init>(Ljava/lang/Object;JLy8/c;I)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Le3/h;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Le3/h;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Le3/h;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Le3/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Le3/h;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Le3/h;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Le3/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Le3/h;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Le3/h;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Le3/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Le3/h;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Le3/h;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Le3/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Le3/h;->l:I

    sget-object v1, Lt8/z;->a:Lt8/z;

    iget-object v2, p0, Le3/h;->o:Ljava/lang/Object;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    const/4 v4, 0x1

    iget-wide v5, p0, Le3/h;->n:J

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v7, p0, Le3/h;->m:I

    const-wide/16 v8, 0x8

    const/4 v10, 0x2

    if-eqz v7, :cond_2

    if-eq v7, v4, :cond_1

    if-ne v7, v10, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sub-long v11, v5, v8

    iput v4, p0, Le3/h;->m:I

    invoke-static {v11, v12, p0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    iput v10, p0, Le3/h;->m:I

    invoke-static {v8, v9, p0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    move-object v1, v0

    goto :goto_3

    :cond_4
    :goto_2
    check-cast v2, Ly1/j0;

    iget-object p0, v2, Ly1/j0;->n:Lu9/g;

    if-eqz p0, :cond_5

    new-instance p1, Ly1/n;

    invoke-direct {p1, v5, v6}, Ly1/n;-><init>(J)V

    invoke-static {p1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    :cond_5
    :goto_3
    return-object v1

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v7, p0, Le3/h;->m:I

    if-eqz v7, :cond_7

    if-ne v7, v4, :cond_6

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->p()Lid/c1;

    move-result-object p1

    check-cast v2, Ljava/lang/String;

    iput v4, p0, Le3/h;->m:I

    invoke-virtual {p1, v5, v6, p0, v2}, Lid/c1;->h(JLa9/c;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_8

    move-object v1, v0

    :cond_8
    :goto_4
    return-object v1

    :pswitch_1
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v7, p0, Le3/h;->m:I

    if-eqz v7, :cond_a

    if-ne v7, v4, :cond_9

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    check-cast v2, Ln/c;

    move-wide v6, v5

    new-instance v5, Ll1/b;

    invoke-direct {v5, v6, v7}, Ll1/b;-><init>(J)V

    sget-object v6, Lm0/x0;->d:Ln/r0;

    iput v4, p0, Le3/h;->m:I

    const/4 v7, 0x0

    const/16 v9, 0xc

    move-object v8, p0

    move-object v4, v2

    invoke-static/range {v4 .. v9}, Ln/c;->c(Ln/c;Ljava/lang/Object;Ln/j;Li9/c;Ly8/c;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_b

    move-object v1, v0

    :cond_b
    :goto_5
    return-object v1

    :pswitch_2
    move-object v8, p0

    move-wide v6, v5

    sget-object p0, Lz8/a;->l:Lz8/a;

    iget v0, v8, Le3/h;->m:I

    if-eqz v0, :cond_d

    if-ne v0, v4, :cond_c

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_6

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    check-cast v2, Le3/k;

    iget-object p1, v2, Le3/k;->l:Lx1/d;

    iput v4, v8, Le3/h;->m:I

    invoke-virtual {p1, v6, v7, v8}, Lx1/d;->b(JLa9/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_e

    move-object v1, p0

    :cond_e
    :goto_6
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
