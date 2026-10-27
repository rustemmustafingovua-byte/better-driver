.class public final Lf0/b;
.super La9/h;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic m:I

.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Li9/c;


# direct methods
.method public synthetic constructor <init>(Li9/c;Ly8/c;I)V
    .locals 0

    iput p3, p0, Lf0/b;->m:I

    iput-object p1, p0, Lf0/b;->p:Li9/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/h;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget v0, p0, Lf0/b;->m:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lf0/b;

    iget-object p0, p0, Lf0/b;->p:Li9/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lf0/b;-><init>(Li9/c;Ly8/c;I)V

    iput-object p1, v0, Lf0/b;->o:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance v0, Lf0/b;

    iget-object p0, p0, Lf0/b;->p:Li9/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lf0/b;-><init>(Li9/c;Ly8/c;I)V

    iput-object p1, v0, Lf0/b;->o:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lf0/b;->m:I

    check-cast p1, Ly1/j0;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lf0/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lf0/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lf0/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lf0/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lf0/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lf0/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lf0/b;->m:I

    iget-object v1, p0, Lf0/b;->p:Li9/c;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v4, p0, Lf0/b;->n:I

    if-eqz v4, :cond_1

    if-ne v4, v3, :cond_0

    iget-object v2, p0, Lf0/b;->o:Ljava/lang/Object;

    check-cast v2, Ly1/j0;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lf0/b;->o:Ljava/lang/Object;

    check-cast p1, Ly1/j0;

    move-object v2, p1

    :goto_0
    sget-object p1, Ly1/m;->l:Ly1/m;

    iput-object v2, p0, Lf0/b;->o:Ljava/lang/Object;

    iput v3, p0, Lf0/b;->n:I

    invoke-virtual {v2, p1, p0}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_1
    check-cast p1, Ly1/l;

    invoke-static {p1}, Lm0/d1;->v(Ly1/l;)Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v4, p0, Lf0/b;->n:I

    const/4 v5, 0x2

    if-eqz v4, :cond_5

    if-eq v4, v3, :cond_4

    if-ne v4, v5, :cond_3

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object v2, p0, Lf0/b;->o:Ljava/lang/Object;

    check-cast v2, Ly1/j0;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lf0/b;->o:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ly1/j0;

    iput-object v2, p0, Lf0/b;->o:Ljava/lang/Object;

    iput v3, p0, Lf0/b;->n:I

    invoke-static {v2, p0}, Lc6/o;->E(Ly1/j0;La9/a;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    goto :goto_4

    :cond_6
    :goto_2
    check-cast p1, Ly1/u;

    invoke-virtual {p1}, Ly1/u;->a()V

    iget-wide v3, p1, Ly1/u;->c:J

    new-instance p1, Ll1/b;

    invoke-direct {p1, v3, v4}, Ll1/b;-><init>(J)V

    invoke-interface {v1, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lf0/b;->o:Ljava/lang/Object;

    iput v5, p0, Lf0/b;->n:I

    sget-object p1, Lr/x2;->a:Lr/q0;

    sget-object p1, Ly1/m;->m:Ly1/m;

    invoke-static {v2, p1, p0}, Lr/x2;->i(Ly1/j0;Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    check-cast p1, Ly1/u;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ly1/u;->a()V

    :cond_8
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
