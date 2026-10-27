.class public final Lr/t2;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public final synthetic n:Li9/f;

.field public final synthetic o:Lr/p1;

.field public final synthetic p:Ly1/u;


# direct methods
.method public synthetic constructor <init>(Li9/f;Lr/p1;Ly1/u;Ly8/c;I)V
    .locals 0

    iput p5, p0, Lr/t2;->l:I

    iput-object p1, p0, Lr/t2;->n:Li9/f;

    iput-object p2, p0, Lr/t2;->o:Lr/p1;

    iput-object p3, p0, Lr/t2;->p:Ly1/u;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 7

    iget p1, p0, Lr/t2;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lr/t2;

    iget-object v3, p0, Lr/t2;->p:Ly1/u;

    const/4 v5, 0x1

    iget-object v1, p0, Lr/t2;->n:Li9/f;

    iget-object v2, p0, Lr/t2;->o:Lr/p1;

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lr/t2;-><init>(Li9/f;Lr/p1;Ly1/u;Ly8/c;I)V

    return-object v0

    :pswitch_0
    move-object v4, p2

    new-instance v1, Lr/t2;

    move-object v5, v4

    iget-object v4, p0, Lr/t2;->p:Ly1/u;

    const/4 v6, 0x0

    iget-object v2, p0, Lr/t2;->n:Li9/f;

    iget-object v3, p0, Lr/t2;->o:Lr/p1;

    invoke-direct/range {v1 .. v6}, Lr/t2;-><init>(Li9/f;Lr/p1;Ly1/u;Ly8/c;I)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lr/t2;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lr/t2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/t2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/t2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lr/t2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/t2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/t2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lr/t2;->l:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lr/t2;->m:I

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

    iget-object p1, p0, Lr/t2;->p:Ly1/u;

    iget-wide v3, p1, Ly1/u;->c:J

    new-instance p1, Ll1/b;

    invoke-direct {p1, v3, v4}, Ll1/b;-><init>(J)V

    iput v2, p0, Lr/t2;->m:I

    iget-object v1, p0, Lr/t2;->n:Li9/f;

    iget-object v2, p0, Lr/t2;->o:Lr/p1;

    invoke-interface {v1, v2, p1, p0}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_1
    return-object v0

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lr/t2;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-ne v1, v2, :cond_3

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lr/t2;->p:Ly1/u;

    iget-wide v3, p1, Ly1/u;->c:J

    new-instance p1, Ll1/b;

    invoke-direct {p1, v3, v4}, Ll1/b;-><init>(J)V

    iput v2, p0, Lr/t2;->m:I

    iget-object v1, p0, Lr/t2;->n:Li9/f;

    iget-object v2, p0, Lr/t2;->o:Lr/p1;

    invoke-interface {v1, v2, p1, p0}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
