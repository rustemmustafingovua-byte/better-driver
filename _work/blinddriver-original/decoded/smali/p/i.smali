.class public final Lp/i;
.super La9/h;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic m:I

.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    iput p3, p0, Lp/i;->m:I

    iput-object p1, p0, Lp/i;->p:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/h;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget v0, p0, Lp/i;->m:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lp/i;

    iget-object p0, p0, Lp/i;->p:Ljava/lang/Object;

    check-cast p0, Lp8/g;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lp/i;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v0, Lp/i;->o:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance v0, Lp/i;

    iget-object p0, p0, Lp/i;->p:Ljava/lang/Object;

    check-cast p0, Lp/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lp/i;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v0, Lp/i;->o:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lp/i;->m:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lq9/i;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lp/i;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/i;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ly1/j0;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lp/i;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/i;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lp/i;->m:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lp/i;->p:Ljava/lang/Object;

    check-cast v0, Lp8/g;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lp/i;->n:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v2, p0, Lp/i;->o:Ljava/lang/Object;

    check-cast v2, Lq9/i;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lp/i;->o:Ljava/lang/Object;

    check-cast v2, Lq9/i;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lp/i;->o:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lq9/i;

    iget-object p1, v0, Lp8/g;->a:Lq3/k;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lq3/k;->l()Lq9/h;

    move-result-object p1

    iput-object v2, p0, Lp/i;->o:Ljava/lang/Object;

    iput v5, p0, Lp/i;->n:I

    invoke-virtual {v2, p1, p0}, Lq9/i;->c(Lq9/h;La9/h;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_0
    iget-object p1, v0, Lp8/g;->b:Lq3/k;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lq3/k;->l()Lq9/h;

    move-result-object p1

    iput-object v2, p0, Lp/i;->o:Ljava/lang/Object;

    iput v4, p0, Lp/i;->n:I

    invoke-virtual {v2, p1, p0}, Lq9/i;->c(Lq9/h;La9/h;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    iget-object p1, v0, Lp8/g;->c:Lq3/k;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lq3/k;->l()Lq9/h;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p0, Lp/i;->o:Ljava/lang/Object;

    iput v3, p0, Lp/i;->n:I

    invoke-virtual {v2, p1, p0}, Lq9/i;->c(Lq9/h;La9/h;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_3
    return-object v1

    :pswitch_0
    iget-object v0, p0, Lp/i;->p:Ljava/lang/Object;

    check-cast v0, Lp/j;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lp/i;->n:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_9

    if-eq v2, v4, :cond_8

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lp/i;->o:Ljava/lang/Object;

    check-cast v2, Ly1/j0;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    iget-object v2, p0, Lp/i;->o:Ljava/lang/Object;

    check-cast v2, Ly1/j0;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lp/i;->o:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ly1/j0;

    iput-object v2, p0, Lp/i;->o:Ljava/lang/Object;

    iput v4, p0, Lp/i;->n:I

    invoke-static {v2, p0, v3}, Lr/x2;->c(Ly1/j0;La9/h;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    goto/16 :goto_9

    :cond_a
    :goto_4
    check-cast p1, Ly1/u;

    iget-wide v4, p1, Ly1/u;->a:J

    iput-wide v4, v0, Lp/j;->h:J

    iget-wide v4, p1, Ly1/u;->c:J

    iput-wide v4, v0, Lp/j;->b:J

    :cond_b
    iput-object v2, p0, Lp/i;->o:Ljava/lang/Object;

    iput v3, p0, Lp/i;->n:I

    sget-object p1, Ly1/m;->m:Ly1/m;

    invoke-virtual {v2, p1, p0}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    goto :goto_9

    :cond_c
    :goto_5
    check-cast p1, Ly1/l;

    iget-object p1, p1, Ly1/l;->a:Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_6
    if-ge v7, v5, :cond_e

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ly1/u;

    iget-boolean v9, v9, Ly1/u;->d:Z

    if-eqz v9, :cond_d

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_7
    if-ge v6, p1, :cond_10

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ly1/u;

    iget-wide v7, v7, Ly1/u;->a:J

    iget-wide v9, v0, Lp/j;->h:J

    invoke-static {v7, v8, v9, v10}, Ly1/t;->e(JJ)Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_8

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_10
    const/4 v5, 0x0

    :goto_8
    check-cast v5, Ly1/u;

    if-nez v5, :cond_11

    invoke-static {v4}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ly1/u;

    :cond_11
    if-eqz v5, :cond_12

    iget-wide v6, v5, Ly1/u;->a:J

    iput-wide v6, v0, Lp/j;->h:J

    iget-wide v5, v5, Ly1/u;->c:J

    iput-wide v5, v0, Lp/j;->b:J

    :cond_12
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    const-wide/16 p0, -0x1

    iput-wide p0, v0, Lp/j;->h:J

    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_9
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
