.class public final Lf2/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly8/f;


# instance fields
.field public final synthetic l:I

.field public final m:Ljava/lang/Object;

.field public final n:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;Lf2/v0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lf2/x0;->l:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf2/x0;->m:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lf2/x0;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf2/x0;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lf2/x0;->l:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/x0;->m:Ljava/lang/Object;

    .line 5
    new-instance p1, Lk4/h;

    invoke-direct {p1}, Lk4/h;-><init>()V

    iput-object p1, p0, Lf2/x0;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lr0/p1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lf2/x0;->l:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/x0;->m:Ljava/lang/Object;

    .line 7
    new-instance p1, Landroidx/lifecycle/a1;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroidx/lifecycle/a1;-><init>(I)V

    iput-object p1, p0, Lf2/x0;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Li9/c;Ly8/c;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lf2/x0;->l:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, Lr0/f1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lr0/f1;

    iget v3, v0, Lr0/f1;->o:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v0, Lr0/f1;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lr0/f1;

    invoke-direct {v0, p0, p2}, Lr0/f1;-><init>(Lf2/x0;Ly8/c;)V

    :goto_0
    iget-object p2, v0, Lr0/f1;->m:Ljava/lang/Object;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, v0, Lr0/f1;->o:I

    if-eqz v4, :cond_3

    if-eq v4, v2, :cond_2

    if-ne v4, v1, :cond_1

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, v0, Lr0/f1;->l:Li9/c;

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    iget-object p2, p0, Lf2/x0;->n:Ljava/lang/Object;

    check-cast p2, Lk4/h;

    iput-object p1, v0, Lr0/f1;->l:Li9/c;

    iput v2, v0, Lr0/f1;->o:I

    iget-object v4, p2, Lk4/h;->b:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v5, p2, Lk4/h;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v4

    if-eqz v5, :cond_4

    sget-object p2, Lt8/z;->a:Lt8/z;

    goto :goto_1

    :cond_4
    new-instance v4, Lu9/g;

    invoke-static {v0}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lu9/g;-><init>(ILy8/c;)V

    invoke-virtual {v4}, Lu9/g;->r()V

    iget-object v2, p2, Lk4/h;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v5, p2, Lk4/h;->c:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    new-instance v2, Lb0/b1;

    const/4 v5, 0x6

    invoke-direct {v2, v5, p2, v4}, Lb0/b1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Lu9/g;->t(Li9/c;)V

    invoke-virtual {v4}, Lu9/g;->q()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v3, :cond_5

    goto :goto_1

    :cond_5
    sget-object p2, Lt8/z;->a:Lt8/z;

    :goto_1
    if-ne p2, v3, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    iget-object p0, p0, Lf2/x0;->m:Ljava/lang/Object;

    check-cast p0, Lf2/x0;

    const/4 p2, 0x0

    iput-object p2, v0, Lr0/f1;->l:Li9/c;

    iput v1, v0, Lr0/f1;->o:I

    invoke-virtual {p0, p1, v0}, Lf2/x0;->a(Li9/c;Ly8/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v3, :cond_7

    :goto_3
    move-object p2, v3

    :cond_7
    :goto_4
    return-object p2

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v4

    throw p0

    :pswitch_0
    new-instance v0, Lu9/g;

    invoke-static {p2}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object p2

    invoke-direct {v0, v2, p2}, Lu9/g;-><init>(ILy8/c;)V

    invoke-virtual {v0}, Lu9/g;->r()V

    iget-object p2, p0, Lf2/x0;->n:Ljava/lang/Object;

    check-cast p2, Landroidx/lifecycle/a1;

    new-instance v2, Lr0/d;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v0, v2, Lr0/d;->a:Lu9/g;

    iput-object p1, v2, Lr0/d;->b:Li9/c;

    iget-object p0, p0, Lf2/x0;->m:Ljava/lang/Object;

    check-cast p0, Lr0/p1;

    invoke-virtual {p2, v2, p0}, Landroidx/lifecycle/a1;->g(Lz0/b;Li9/a;)Lr0/f;

    move-result-object p0

    new-instance p1, Lb0/g2;

    invoke-direct {p1, v1, p0}, Lb0/g2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Lu9/g;->t(Li9/c;)V

    invoke-virtual {v0}, Lu9/g;->q()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lf2/x0;->n:Ljava/lang/Object;

    check-cast v0, Lf2/v0;

    new-instance v1, Lu9/g;

    invoke-static {p2}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lu9/g;-><init>(ILy8/c;)V

    invoke-virtual {v1}, Lu9/g;->r()V

    new-instance p2, Lf2/w0;

    invoke-direct {p2, v1, p0, p1}, Lf2/w0;-><init>(Lu9/g;Lf2/x0;Li9/c;)V

    iget-object p1, v0, Lf2/v0;->n:Landroid/view/Choreographer;

    iget-object v3, p0, Lf2/x0;->m:Ljava/lang/Object;

    check-cast v3, Landroid/view/Choreographer;

    invoke-static {p1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, v0, Lf2/v0;->p:Ljava/lang/Object;

    monitor-enter p0

    :try_start_2
    iget-object p1, v0, Lf2/v0;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, v0, Lf2/v0;->u:Z

    if-nez p1, :cond_8

    iput-boolean v2, v0, Lf2/v0;->u:Z

    iget-object p1, v0, Lf2/v0;->n:Landroid/view/Choreographer;

    iget-object v2, v0, Lf2/v0;->v:Lf2/u0;

    invoke-virtual {p1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p1

    goto :goto_6

    :cond_8
    :goto_5
    monitor-exit p0

    new-instance p0, Lc5/f;

    const/4 p1, 0x7

    invoke-direct {p0, p1, v0, p2}, Lc5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Lu9/g;->t(Li9/c;)V

    goto :goto_7

    :goto_6
    monitor-exit p0

    throw p1

    :cond_9
    iget-object p1, p0, Lf2/x0;->m:Ljava/lang/Object;

    check-cast p1, Landroid/view/Choreographer;

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    new-instance p1, Lc5/f;

    const/16 v0, 0x8

    invoke-direct {p1, v0, p0, p2}, Lc5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lu9/g;->t(Li9/c;)V

    :goto_7
    invoke-virtual {v1}, Lu9/g;->q()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Li9/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lf2/x0;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-interface {p1, p2, p0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-interface {p1, p2, p0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-interface {p1, p2, p0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getKey()Ly8/g;
    .locals 0

    sget-object p0, Lr0/e;->n:Lr0/e;

    return-object p0
.end method

.method public final k(Ly8/g;)Ly8/h;
    .locals 1

    iget v0, p0, Lf2/x0;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lc6/o;->V(Ly8/f;Ly8/g;)Ly8/h;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, p1}, Lc6/o;->V(Ly8/f;Ly8/g;)Ly8/h;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0, p1}, Lc6/o;->V(Ly8/f;Ly8/g;)Ly8/h;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n(Ly8/g;)Ly8/f;
    .locals 1

    iget v0, p0, Lf2/x0;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lc6/o;->O(Ly8/f;Ly8/g;)Ly8/f;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, p1}, Lc6/o;->O(Ly8/f;Ly8/g;)Ly8/f;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0, p1}, Lc6/o;->O(Ly8/f;Ly8/g;)Ly8/f;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final y(Ly8/h;)Ly8/h;
    .locals 1

    iget v0, p0, Lf2/x0;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lc6/o;->X(Ly8/f;Ly8/h;)Ly8/h;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, p1}, Lc6/o;->X(Ly8/f;Ly8/h;)Ly8/h;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0, p1}, Lc6/o;->X(Ly8/f;Ly8/h;)Ly8/h;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
