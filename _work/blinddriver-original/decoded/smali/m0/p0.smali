.class public final Lm0/p0;
.super La9/h;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic m:I

.field public n:J

.field public o:I

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JLj9/x;Ly8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lm0/p0;->m:I

    .line 1
    iput-wide p1, p0, Lm0/p0;->n:J

    iput-object p3, p0, Lm0/p0;->q:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/h;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Ly1/u;Ly8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lm0/p0;->m:I

    .line 2
    iput-object p1, p0, Lm0/p0;->q:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/h;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 3

    iget v0, p0, Lm0/p0;->m:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lm0/p0;

    iget-object p0, p0, Lm0/p0;->q:Ljava/lang/Object;

    check-cast p0, Ly1/u;

    invoke-direct {v0, p0, p2}, Lm0/p0;-><init>(Ly1/u;Ly8/c;)V

    iput-object p1, v0, Lm0/p0;->p:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance v0, Lm0/p0;

    iget-wide v1, p0, Lm0/p0;->n:J

    iget-object p0, p0, Lm0/p0;->q:Ljava/lang/Object;

    check-cast p0, Lj9/x;

    invoke-direct {v0, v1, v2, p0, p2}, Lm0/p0;-><init>(JLj9/x;Ly8/c;)V

    iput-object p1, v0, Lm0/p0;->p:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lm0/p0;->m:I

    check-cast p1, Ly1/j0;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lm0/p0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lm0/p0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lm0/p0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lm0/p0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lm0/p0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lm0/p0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v0, p0, Lm0/p0;->m:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lm0/p0;->o:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-wide v3, p0, Lm0/p0;->n:J

    iget-object v1, p0, Lm0/p0;->p:Ljava/lang/Object;

    check-cast v1, Ly1/j0;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lm0/p0;->p:Ljava/lang/Object;

    check-cast p1, Ly1/j0;

    iget-object v1, p0, Lm0/p0;->q:Ljava/lang/Object;

    check-cast v1, Ly1/u;

    iget-wide v3, v1, Ly1/u;->b:J

    invoke-virtual {p1}, Ly1/j0;->e()Lf2/p2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v5, 0x28

    add-long/2addr v5, v3

    move-object v1, p1

    move-wide v3, v5

    :cond_2
    iput-object v1, p0, Lm0/p0;->p:Ljava/lang/Object;

    iput-wide v3, p0, Lm0/p0;->n:J

    iput v2, p0, Lm0/p0;->o:I

    const/4 p1, 0x3

    invoke-static {v1, p0, p1}, Lr/x2;->c(Ly1/j0;La9/h;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Ly1/u;

    iget-wide v5, p1, Ly1/u;->b:J

    cmp-long v5, v5, v3

    if-ltz v5, :cond_2

    move-object v0, p1

    :goto_1
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lm0/p0;->q:Ljava/lang/Object;

    check-cast v0, Lj9/x;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lm0/p0;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    if-ne v2, v3, :cond_4

    iget-object p0, p0, Lm0/p0;->p:Ljava/lang/Object;

    check-cast p0, Ly1/j0;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lm0/p0;->p:Ljava/lang/Object;

    check-cast p1, Ly1/j0;

    iget-wide v4, p0, Lm0/p0;->n:J

    new-instance v2, Lb0/x;

    const/16 v6, 0xa

    invoke-direct {v2, v6, v0}, Lb0/x;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lm0/p0;->p:Ljava/lang/Object;

    iput v3, p0, Lm0/p0;->o:I

    invoke-static {p1, v4, v5, v2, p0}, Lr/i0;->e(Ly1/j0;JLb0/x;La9/a;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    :goto_2
    check-cast p1, Ly1/u;

    if-eqz p1, :cond_7

    iget-wide v0, v0, Lj9/x;->l:J

    const-wide v2, 0x7fffffff7fffffffL

    and-long/2addr v0, v2

    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long p1, v0, v2

    if-eqz p1, :cond_7

    sget-object v1, Lm0/m;->m:Lm0/m;

    goto :goto_3

    :cond_7
    iget-object p0, p0, Ly1/j0;->q:Ly1/k0;

    iget-object p0, p0, Ly1/k0;->D:Ly1/l;

    iget-object p0, p0, Ly1/l;->a:Ljava/lang/Object;

    invoke-static {p0}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly1/u;

    invoke-static {p0}, Ly1/t;->d(Ly1/u;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Ly1/u;->a()V

    sget-object v1, Lm0/m;->l:Lm0/m;

    goto :goto_3

    :cond_8
    sget-object v1, Lm0/m;->o:Lm0/m;

    :goto_3
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
