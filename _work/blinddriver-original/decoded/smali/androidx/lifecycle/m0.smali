.class public final Landroidx/lifecycle/m0;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public n:Ljava/lang/Object;

.field public o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/q;Lb4/b;Ly8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/m0;->l:I

    sget-object v0, Landroidx/lifecycle/p;->l:Landroidx/lifecycle/p;

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/q;Lx9/g;Ly8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/lifecycle/m0;->l:I

    sget-object v0, Landroidx/lifecycle/p;->l:Landroidx/lifecycle/p;

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Li9/e;Lg3/i;Ly8/c;)V
    .locals 1

    const/16 v0, 0x1a

    iput v0, p0, Landroidx/lifecycle/m0;->l:I

    .line 3
    check-cast p1, La9/i;

    iput-object p1, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Li9/f;Lr/p1;Ly1/u;Ly8/c;)V
    .locals 1

    const/16 v0, 0x14

    iput v0, p0, Landroidx/lifecycle/m0;->l:I

    .line 4
    check-cast p1, La9/i;

    iput-object p1, p0, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    .line 5
    iput p5, p0, Landroidx/lifecycle/m0;->l:I

    iput-object p1, p0, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    .line 6
    iput p4, p0, Landroidx/lifecycle/m0;->l:I

    iput-object p1, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    .line 7
    iput p3, p0, Landroidx/lifecycle/m0;->l:I

    iput-object p1, p0, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Lu9/v0;Li9/e;Ly8/c;)V
    .locals 1

    const/16 v0, 0x15

    iput v0, p0, Landroidx/lifecycle/m0;->l:I

    .line 8
    iput-object p1, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast p2, La9/i;

    iput-object p2, p0, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method private final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v0, Ly/g;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, p0, Landroidx/lifecycle/m0;->m:I

    sget-object v3, Lt8/z;->a:Lt8/z;

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    return-object v3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v5, v0, Ly/g;->z:Lr/i;

    new-instance p1, Ly/f;

    iget-object v2, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v2, Le2/h1;

    iget-object v6, p0, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v6, Ld5/a;

    invoke-direct {p1, v0, v2, v6}, Ly/f;-><init>(Ly/g;Le2/h1;Ld5/a;)V

    iput v4, p0, Landroidx/lifecycle/m0;->m:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ly/f;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ll1/c;

    if-eqz v6, :cond_8

    const-wide/16 v9, 0x0

    const/4 v11, 0x3

    const-wide/16 v7, 0x0

    invoke-static/range {v5 .. v11}, Lr/i;->N0(Lr/i;Ll1/c;JJI)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lu9/g;

    invoke-static {p0}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object p0

    invoke-direct {v0, v4, p0}, Lu9/g;-><init>(ILy8/c;)V

    invoke-virtual {v0}, Lu9/g;->r()V

    new-instance p0, Lr/g;

    invoke-direct {p0, p1, v0}, Lr/g;-><init>(Ly/f;Lu9/g;)V

    iget-object v2, v5, Lr/i;->D:Lr/a;

    iget-object v6, v2, Lr/a;->a:Lt0/b;

    invoke-virtual {p1}, Ly/f;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll1/c;

    if-nez p1, :cond_2

    invoke-virtual {v0, v3}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    goto :goto_4

    :cond_2
    new-instance v7, Lp/o0;

    const/4 v8, 0x4

    invoke-direct {v7, v8, v2, p0}, Lp/o0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Lu9/g;->t(Li9/c;)V

    iget v2, v6, Lt0/b;->n:I

    const/4 v7, 0x0

    invoke-static {v7, v2}, Lg6/c1;->G(II)Lo9/d;

    move-result-object v2

    iget v8, v2, Lo9/b;->l:I

    iget v2, v2, Lo9/b;->m:I

    if-gt v8, v2, :cond_6

    :goto_0
    iget-object v9, v6, Lt0/b;->l:[Ljava/lang/Object;

    aget-object v9, v9, v2

    check-cast v9, Lr/g;

    iget-object v9, v9, Lr/g;->a:Ly/f;

    invoke-virtual {v9}, Ly/f;->invoke()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ll1/c;

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v9}, Ll1/c;->f(Ll1/c;)Ll1/c;

    move-result-object v10

    invoke-virtual {v10, p1}, Ll1/c;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    add-int/2addr v2, v4

    invoke-virtual {v6, v2, p0}, Lt0/b;->a(ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v10, v9}, Ll1/c;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    new-instance v9, Ljava/util/concurrent/CancellationException;

    const-string v10, "bringIntoView call interrupted by a newer, non-overlapping call"

    invoke-direct {v9, v10}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    iget v10, v6, Lt0/b;->n:I

    sub-int/2addr v10, v4

    if-gt v10, v2, :cond_5

    :goto_1
    iget-object v11, v6, Lt0/b;->l:[Ljava/lang/Object;

    aget-object v11, v11, v2

    check-cast v11, Lr/g;

    iget-object v11, v11, Lr/g;->b:Lu9/g;

    invoke-virtual {v11, v9}, Lu9/g;->j(Ljava/lang/Throwable;)Z

    if-eq v10, v2, :cond_5

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-eq v2, v8, :cond_6

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v6, v7, p0}, Lt0/b;->a(ILjava/lang/Object;)V

    :goto_3
    iget-boolean p0, v5, Lr/i;->G:Z

    if-nez p0, :cond_7

    const-wide/16 p0, 0x0

    invoke-virtual {v5, p0, p1}, Lr/i;->O0(J)V

    :cond_7
    :goto_4
    invoke-virtual {v0}, Lu9/g;->q()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_8

    goto :goto_5

    :cond_8
    move-object p0, v3

    :goto_5
    if-ne p0, v1, :cond_9

    return-object v1

    :cond_9
    return-object v3
.end method

.method private final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lx4/s;

    iget-object v0, p0, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v0, Ly4/c0;

    iget-object v3, v0, Ly4/c0;->a:Lg5/o;

    sget-object v8, Lz8/a;->l:Lz8/a;

    iget v1, p0, Landroidx/lifecycle/m0;->m:I

    const/4 v9, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v9, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v5, v0, Ly4/c0;->b:Landroid/content/Context;

    iget-object p1, p0, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast p1, Lh5/n;

    iget-object v0, v0, Ly4/c0;->d:Li5/a;

    iput v4, p0, Landroidx/lifecycle/m0;->m:I

    sget-object v1, Lh5/l;->a:Ljava/lang/String;

    iget-boolean v1, v3, Lg5/o;->q:Z

    sget-object v10, Lt8/z;->a:Lt8/z;

    if-eqz v1, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v1, v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, v0, Li5/a;->d:Lf7/l;

    const-string v1, "taskExecutor.mainThreadExecutor"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lu9/v;->k(Ljava/util/concurrent/Executor;)Lu9/p;

    move-result-object v0

    new-instance v1, Landroidx/lifecycle/j0;

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v0, v1, p0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v8, :cond_4

    move-object v10, p1

    :cond_4
    :goto_0
    if-ne v10, v8, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    sget-object p1, Ly4/d0;->a:Ljava/lang/String;

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Starting work for "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lg5/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lx4/s;->b()Lg3/l;

    move-result-object p1

    iput v9, p0, Landroidx/lifecycle/m0;->m:I

    invoke-static {p1, v2, p0}, Ly4/d0;->a(Lv7/a;Lx4/s;La9/i;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v8, :cond_6

    :goto_2
    return-object v8

    :cond_6
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 10

    iget v0, p0, Landroidx/lifecycle/m0;->l:I

    iget-object v1, p0, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroidx/lifecycle/m0;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast p0, Lx9/h;

    check-cast v1, Ly9/e;

    const/16 v2, 0x1d

    invoke-direct {v0, p0, v1, p2, v2}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v0, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance v3, Landroidx/lifecycle/m0;

    iget-object p1, p0, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Ly4/c0;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lx4/s;

    move-object v6, v1

    check-cast v6, Lh5/n;

    const/16 v8, 0x1c

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v3

    :pswitch_1
    move-object v8, p2

    new-instance v4, Landroidx/lifecycle/m0;

    iget-object p1, p0, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ly/g;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Le2/h1;

    move-object v7, v1

    check-cast v7, Ld5/a;

    const/16 v9, 0x1b

    invoke-direct/range {v4 .. v9}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v4

    :pswitch_2
    move-object v8, p2

    new-instance p2, Landroidx/lifecycle/m0;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast p0, La9/i;

    check-cast v1, Lg3/i;

    invoke-direct {p2, p0, v1, v8}, Landroidx/lifecycle/m0;-><init>(Li9/e;Lg3/i;Ly8/c;)V

    iput-object p1, p2, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    return-object p2

    :pswitch_3
    move-object v8, p2

    new-instance p2, Landroidx/lifecycle/m0;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast p0, Lx9/g;

    check-cast v1, Ltc/e;

    const/16 v0, 0x19

    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, p2, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    return-object p2

    :pswitch_4
    move-object v8, p2

    new-instance p1, Landroidx/lifecycle/m0;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast p0, Lid/d0;

    check-cast v1, Landroid/app/Application;

    const/16 p2, 0x18

    invoke-direct {p1, p0, v1, v8, p2}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_5
    move-object v8, p2

    new-instance p2, Landroidx/lifecycle/m0;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast p0, Ly8/h;

    check-cast v1, Lx9/g;

    const/16 v0, 0x17

    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, p2, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    return-object p2

    :pswitch_6
    move-object v8, p2

    new-instance p2, Landroidx/lifecycle/m0;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast p0, Lr0/t1;

    check-cast v1, Lf2/x0;

    const/16 v0, 0x16

    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, p2, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    return-object p2

    :pswitch_7
    move-object v8, p2

    new-instance p2, Landroidx/lifecycle/m0;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast p0, Lu9/v0;

    check-cast v1, La9/i;

    invoke-direct {p2, p0, v1, v8}, Landroidx/lifecycle/m0;-><init>(Lu9/v0;Li9/e;Ly8/c;)V

    iput-object p1, p2, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    return-object p2

    :pswitch_8
    move-object v8, p2

    new-instance p1, Landroidx/lifecycle/m0;

    iget-object p2, p0, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast p2, La9/i;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast p0, Lr/p1;

    check-cast v1, Ly1/u;

    invoke-direct {p1, p2, p0, v1, v8}, Landroidx/lifecycle/m0;-><init>(Li9/f;Lr/p1;Ly1/u;Ly8/c;)V

    return-object p1

    :pswitch_9
    move-object v8, p2

    new-instance p2, Landroidx/lifecycle/m0;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast p0, Lr/n2;

    check-cast v1, Li9/e;

    const/16 v0, 0x13

    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, p2, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    return-object p2

    :pswitch_a
    move-object v8, p2

    new-instance p2, Landroidx/lifecycle/m0;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast p0, Lr/n0;

    check-cast v1, Lr/n2;

    const/16 v0, 0x12

    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, p2, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    return-object p2

    :pswitch_b
    move-object v8, p2

    new-instance p2, Landroidx/lifecycle/m0;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast p0, Lr/s0;

    check-cast v1, Lr/v;

    const/16 v0, 0x11

    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, p2, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    return-object p2

    :pswitch_c
    move-object v8, p2

    new-instance p2, Landroidx/lifecycle/m0;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast p0, Lr/n0;

    check-cast v1, Lr/s0;

    const/16 v0, 0x10

    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, p2, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    return-object p2

    :pswitch_d
    move-object v8, p2

    new-instance v4, Landroidx/lifecycle/m0;

    iget-object p1, p0, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lr/m;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lp/n1;

    move-object v7, v1

    check-cast v7, Li9/e;

    const/16 v9, 0xf

    invoke-direct/range {v4 .. v9}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v4

    :pswitch_e
    move-object v8, p2

    new-instance p2, Landroidx/lifecycle/m0;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast p0, Lr/m;

    check-cast v1, Li9/e;

    const/16 v0, 0xe

    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, p2, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    return-object p2

    :pswitch_f
    move-object v8, p2

    new-instance p0, Landroidx/lifecycle/m0;

    check-cast v1, Lp/m1;

    const/16 p2, 0xd

    invoke-direct {p0, v1, v8, p2}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, p0, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    return-object p0

    :pswitch_10
    move-object v8, p2

    new-instance v4, Landroidx/lifecycle/m0;

    iget-object p1, p0, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ls/i;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Ls/h;

    move-object v7, v1

    check-cast v7, Lu9/g0;

    const/16 v9, 0xc

    invoke-direct/range {v4 .. v9}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v4

    :pswitch_11
    move-object v8, p2

    new-instance v4, Landroidx/lifecycle/m0;

    iget-object p1, p0, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ls/i;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Ls/j;

    move-object v7, v1

    check-cast v7, Lu9/g0;

    const/16 v9, 0xb

    invoke-direct/range {v4 .. v9}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v4

    :pswitch_12
    move-object v8, p2

    new-instance p1, Landroidx/lifecycle/m0;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast p0, Lr0/u0;

    check-cast v1, Lr0/u0;

    const/16 p2, 0xa

    invoke-direct {p1, p0, v1, v8, p2}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_13
    move-object v8, p2

    new-instance v4, Landroidx/lifecycle/m0;

    iget-object p1, p0, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lod/c0;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lr0/u0;

    move-object v7, v1

    check-cast v7, Lr0/u0;

    const/16 v9, 0x9

    invoke-direct/range {v4 .. v9}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v4

    :pswitch_14
    move-object v8, p2

    new-instance p2, Landroidx/lifecycle/m0;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast p0, Lr0/r2;

    check-cast v1, Ln/c;

    const/16 v0, 0x8

    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, p2, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    return-object p2

    :pswitch_15
    move-object v8, p2

    new-instance p2, Landroidx/lifecycle/m0;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast p0, Ln/h1;

    check-cast v1, Lr0/u0;

    const/4 v0, 0x7

    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, p2, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    return-object p2

    :pswitch_16
    move-object v8, p2

    new-instance p2, Landroidx/lifecycle/m0;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast p0, Lua/nav/geo/c;

    check-cast v1, Lua/nav/routing/PackDownloadService;

    const/4 v0, 0x6

    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, p2, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    return-object p2

    :pswitch_17
    move-object v8, p2

    new-instance p1, Landroidx/lifecycle/m0;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast p0, Lh0/j;

    check-cast v1, Li0/f;

    const/4 p2, 0x5

    invoke-direct {p1, p0, v1, v8, p2}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_18
    move-object v8, p2

    new-instance p0, Landroidx/lifecycle/m0;

    check-cast v1, Lw9/e;

    const/4 p1, 0x4

    invoke-direct {p0, v1, v8, p1}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object p0

    :pswitch_19
    move-object v8, p2

    new-instance v4, Landroidx/lifecycle/m0;

    iget-object p1, p0, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lc5/o;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lg5/o;

    move-object v7, v1

    check-cast v7, Lc5/i;

    const/4 v9, 0x3

    invoke-direct/range {v4 .. v9}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v4

    :pswitch_1a
    move-object v8, p2

    new-instance p2, Landroidx/lifecycle/m0;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast p0, Lx4/d;

    check-cast v1, Lc5/g;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v1, v8, v0}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, p2, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    return-object p2

    :pswitch_1b
    move-object v8, p2

    new-instance p2, Landroidx/lifecycle/m0;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/q;

    sget-object v0, Landroidx/lifecycle/p;->l:Landroidx/lifecycle/p;

    check-cast v1, Lx9/g;

    invoke-direct {p2, p0, v1, v8}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/q;Lx9/g;Ly8/c;)V

    iput-object p1, p2, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    return-object p2

    :pswitch_1c
    move-object v8, p2

    new-instance p2, Landroidx/lifecycle/m0;

    iget-object p0, p0, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/q;

    sget-object v0, Landroidx/lifecycle/p;->l:Landroidx/lifecycle/p;

    check-cast v1, Lb4/b;

    invoke-direct {p2, p0, v1, v8}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/q;Lb4/b;Ly8/c;)V

    iput-object p1, p2, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/lifecycle/m0;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0

    :pswitch_5
    check-cast p1, Lr0/l1;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lr/s1;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Lr/l2;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Lo0/n4;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p1, Lr/s1;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Ljava/lang/Float;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p1, Lr0/l1;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p1, Lw9/r;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p1, Lr0/l1;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/m0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/m0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/m0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v4, p0

    iget v0, v4, Landroidx/lifecycle/m0;->l:I

    const/16 v1, 0xa

    const/16 v2, 0xe

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lt8/z;->a:Lt8/z;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v3, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v3, :cond_1

    if-ne v3, v9, :cond_0

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v3, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v3, Lu9/t;

    iget-object v5, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v5, Lx9/h;

    iget-object v7, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v7, Ly9/e;

    iget-object v10, v7, Ly9/e;->l:Ly8/h;

    iget v11, v7, Ly9/e;->m:I

    const/4 v12, -0x3

    if-ne v11, v12, :cond_2

    const/4 v11, -0x2

    :cond_2
    iget-object v12, v7, Ly9/e;->n:Lw9/a;

    sget-object v13, Lu9/u;->n:Lu9/u;

    new-instance v14, Lp/b;

    invoke-direct {v14, v7, v8, v2}, Lp/b;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v11, v6, v12}, Lpc/h;->a(IILw9/a;)Lw9/e;

    move-result-object v2

    invoke-interface {v3}, Lu9/t;->C()Ly8/h;

    move-result-object v3

    invoke-static {v3, v10, v9}, Lu9/v;->j(Ly8/h;Ly8/h;Z)Ly8/h;

    move-result-object v3

    sget-object v6, Lu9/e0;->a:Lba/e;

    if-eq v3, v6, :cond_3

    sget-object v7, Ly8/d;->l:Ly8/d;

    invoke-interface {v3, v7}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-interface {v3, v6}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object v3

    :cond_3
    new-instance v6, Lw9/q;

    invoke-direct {v6, v3, v2}, Lw9/q;-><init>(Ly8/h;Lw9/e;)V

    invoke-virtual {v6, v13, v6, v14}, Lu9/a;->e0(Lu9/u;Lu9/a;Li9/e;)V

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-static {v5, v6, v9, v4}, Lx9/c0;->i(Lx9/h;Lw9/i;ZLa9/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_0

    :cond_4
    move-object v2, v0

    :goto_0
    if-ne v2, v1, :cond_5

    move-object v0, v1

    :cond_5
    :goto_1
    return-object v0

    :pswitch_0
    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/m0;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/m0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lg3/i;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v2, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v2, :cond_7

    if-ne v2, v9, :cond_6

    :try_start_0
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v2, p1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v2, Lu9/t;

    :try_start_1
    iget-object v3, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v3, La9/i;

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-interface {v3, v2, v4}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_8

    goto :goto_5

    :cond_8
    :goto_2
    invoke-virtual {v1, v2}, Lg3/i;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    invoke-virtual {v1, v0}, Lg3/i;->b(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_0
    iput-boolean v9, v1, Lg3/i;->d:Z

    iget-object v0, v1, Lg3/i;->b:Lg3/l;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lg3/l;->m:Lg3/k;

    invoke-virtual {v0, v9}, Lg3/h;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-object v8, v1, Lg3/i;->a:Ljava/lang/Object;

    iput-object v8, v1, Lg3/i;->b:Lg3/l;

    iput-object v8, v1, Lg3/i;->c:Lg3/n;

    :cond_9
    :goto_4
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_5
    return-object v0

    :pswitch_3
    iget-object v0, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v2, :cond_b

    if-ne v2, v9, :cond_a

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v2, Lx9/g;

    new-instance v3, Ltc/d;

    iget-object v5, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v5, Ltc/e;

    invoke-direct {v3, v5, v0, v8}, Ltc/d;-><init>(Ltc/e;Lu9/t;Ly8/c;)V

    iput-object v8, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-static {v2, v3, v4}, Lx9/c0;->f(Lx9/g;Li9/e;La9/i;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_c

    goto :goto_7

    :cond_c
    :goto_6
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_7
    return-object v1

    :pswitch_4
    iget-object v0, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v0, Lid/d0;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v2, :cond_e

    if-ne v2, v9, :cond_d

    iget-object v2, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_9

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_f
    :goto_8
    iput-object v2, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    const-wide/16 v5, 0x1388

    invoke-static {v5, v6, v4}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_10

    return-object v1

    :cond_10
    :goto_9
    sget-object v3, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v3

    iget-object v3, v3, Ldd/k0;->j:Ldd/m;

    iget-object v3, v3, Ldd/m;->h:Lx9/l0;

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldd/n;

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v5

    iget-boolean v5, v5, Ldd/k0;->m:Z

    if-eqz v5, :cond_f

    iget-object v3, v3, Ldd/n;->h:Ldd/t;

    sget-object v5, Ldd/t;->l:Ldd/t;

    if-eq v3, v5, :cond_f

    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object v3

    iget-object v3, v3, Lad/j0;->k:Lx9/l0;

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lad/a0;

    iget-boolean v3, v3, Lad/a0;->a:Z

    if-nez v3, :cond_11

    invoke-static {}, Lsc/i0;->i()Lad/x;

    move-result-object v3

    iget-object v3, v3, Lad/x;->k:Lx9/l0;

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lad/s;

    iget-object v3, v3, Lad/s;->a:Lua/nav/routing/GeoPoint;

    if-nez v3, :cond_11

    goto :goto_8

    :cond_11
    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v3

    iget-object v3, v3, Luc/f;->h:Lx9/l0;

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luc/c;

    iget-object v3, v3, Luc/c;->a:Luc/a;

    sget-object v5, Luc/a;->n:Luc/a;

    if-eq v3, v5, :cond_16

    invoke-static {}, Lsc/i0;->k()Lid/e;

    move-result-object v3

    invoke-virtual {v3}, Lid/e;->b()Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "no_graph"

    const-string v5, "\u041d\u043e\u0432\u0435 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0431\u0435\u0437 GPS \u043d\u0435 \u043f\u0440\u0430\u0446\u044e\u0454: \u043d\u0435 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043e \u043e\u0444\u043b\u0430\u0439\u043d-\u0433\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433 (\u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041e\u0444\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438)"

    new-instance v6, Lt8/j;

    invoke-direct {v6, v3, v5}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    :cond_12
    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object v3

    iget-object v3, v3, Lua/nav/a;->g:Lx9/l0;

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "off"

    const-string v5, "\u041d\u043e\u0432\u0435 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0431\u0435\u0437 GPS \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e (\u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u0412\u0435\u0434\u0435\u043d\u043d\u044f \u0439 \u0433\u043e\u043b\u043e\u0441), \u043c\u043e\u0436\u043b\u0438\u0432\u043e, \u0441\u0430\u043c\u043e\u0441\u0442\u0456\u0439\u043d\u043e \u0447\u0435\u0440\u0435\u0437 \u043f\u043e\u0432\u0456\u043b\u044c\u043d\u0438\u0439 \u043f\u0440\u0438\u0441\u0442\u0440\u0456\u0439"

    new-instance v6, Lt8/j;

    invoke-direct {v6, v3, v5}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    :cond_13
    invoke-virtual {v0}, Lid/d0;->a()Lad/q1;

    move-result-object v3

    if-nez v3, :cond_14

    iget-object v3, v0, Lid/d0;->h:Lid/l0;

    if-eqz v3, :cond_14

    const-string v3, "no_estimate"

    const-string v5, "\u0424\u0456\u043b\u044c\u0442\u0440 \u0447\u0430\u0441\u0442\u0438\u043d\u043e\u043a \u043f\u0440\u0430\u0446\u044e\u0454, \u0430\u043b\u0435 \u0449\u0435 \u043d\u0435 \u043c\u0430\u0454 \u043f\u043e\u0437\u0438\u0446\u0456\u0457 (\u043f\u043e\u0442\u0440\u0456\u0431\u043d\u0430 \u043c\u0435\u0440\u0435\u0436\u0430 \u0430\u0431\u043e GPS-\u0444\u0456\u043a\u0441 \u043f\u043e\u0431\u043b\u0438\u0437\u0443)"

    new-instance v6, Lt8/j;

    invoke-direct {v6, v3, v5}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    :cond_14
    iget-object v3, v0, Lid/d0;->h:Lid/l0;

    if-eqz v3, :cond_15

    move-object v6, v8

    goto :goto_a

    :cond_15
    const-string v3, "not_started"

    const-string v5, "\u0424\u0456\u043b\u044c\u0442\u0440 \u0447\u0430\u0441\u0442\u0438\u043d\u043e\u043a \u0449\u0435 \u043d\u0435 \u0437\u0430\u043f\u0443\u0449\u0435\u043d\u043e: \u0433\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433 \u0432\u0456\u0434\u043a\u0440\u0438\u0432\u0430\u0454\u0442\u044c\u0441\u044f"

    new-instance v6, Lt8/j;

    invoke-direct {v6, v3, v5}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    :cond_16
    const-string v3, "plan"

    const-string v5, "\u041d\u043e\u0432\u0435 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0431\u0435\u0437 GPS \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0435 \u043d\u0430 \u0446\u044c\u043e\u043c\u0443 \u0442\u0430\u0440\u0438\u0444\u0456"

    new-instance v6, Lt8/j;

    invoke-direct {v6, v3, v5}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_a
    if-nez v6, :cond_17

    goto/16 :goto_8

    :cond_17
    iget-object v3, v6, Lt8/j;->l:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto :goto_b

    :cond_18
    const-wide/32 v12, -0x927c0

    :goto_b
    sub-long v12, v10, v12

    const-wide/32 v14, 0x927c0

    cmp-long v5, v12, v14

    if-ltz v5, :cond_f

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v10, v11}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "pf_unavailable reason="

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ldd/k0;->n(Ljava/lang/String;)V

    iget-object v3, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v3, Landroid/app/Application;

    iget-object v5, v6, Lt8/j;->m:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v3, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    :pswitch_5
    iget-object v0, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v0, Lx9/g;

    iget-object v1, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v1, Ly8/h;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v3, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v3, :cond_1b

    if-eq v3, v9, :cond_1a

    if-ne v3, v5, :cond_19

    goto :goto_c

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_c
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_d

    :cond_1b
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v3, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v3, Lr0/l1;

    sget-object v6, Ly8/i;->l:Ly8/i;

    invoke-static {v1, v6}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    new-instance v1, Lb4/a;

    invoke-direct {v1, v3, v5}, Lb4/a;-><init>(Lr0/l1;I)V

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-interface {v0, v1, v4}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_1d

    goto :goto_e

    :cond_1c
    new-instance v6, Lb4/b;

    invoke-direct {v6, v0, v3, v8, v5}, Lb4/b;-><init>(Lx9/g;Lr0/l1;Ly8/c;I)V

    iput v5, v4, Landroidx/lifecycle/m0;->m:I

    invoke-static {v1, v6, v4}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_1d

    goto :goto_e

    :cond_1d
    :goto_d
    sget-object v2, Lt8/z;->a:Lt8/z;

    :goto_e
    return-object v2

    :pswitch_6
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v1, :cond_1f

    if-ne v1, v9, :cond_1e

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    goto :goto_f

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    iget-object v2, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v2, Lr0/t1;

    iget-object v3, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v3, Lf2/x0;

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-virtual {v2, v1, v3, v4}, Lr0/t1;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    return-object v0

    :pswitch_7
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v1, :cond_22

    if-eq v1, v9, :cond_21

    if-ne v1, v5, :cond_20

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_11

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iget-object v1, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_10

    :cond_22
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    iget-object v2, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v2, Lu9/v0;

    iput-object v1, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-interface {v2, v4}, Lu9/v0;->e(La9/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_23

    goto :goto_12

    :cond_23
    :goto_10
    iget-object v2, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v2, La9/i;

    iput-object v8, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    iput v5, v4, Landroidx/lifecycle/m0;->m:I

    invoke-interface {v2, v1, v4}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_24

    goto :goto_12

    :cond_24
    :goto_11
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_12
    return-object v0

    :pswitch_8
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v1, :cond_26

    if-ne v1, v9, :cond_25

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_13

    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v1, La9/i;

    iget-object v2, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v2, Lr/p1;

    iget-object v3, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v3, Ly1/u;

    iget-wide v5, v3, Ly1/u;->c:J

    new-instance v3, Ll1/b;

    invoke-direct {v3, v5, v6}, Ll1/b;-><init>(J)V

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-interface {v1, v2, v3, v4}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_27

    goto :goto_14

    :cond_27
    :goto_13
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_14
    return-object v0

    :pswitch_9
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v1, :cond_29

    if-ne v1, v9, :cond_28

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_15

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v1, Lr/s1;

    iget-object v2, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v2, Lr/n2;

    iput-object v1, v2, Lr/n2;->k:Lr/s1;

    iget-object v1, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v1, Li9/e;

    iget-object v2, v2, Lr/n2;->l:Lr/l2;

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-interface {v1, v2, v4}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2a

    goto :goto_16

    :cond_2a
    :goto_15
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_16
    return-object v0

    :pswitch_a
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v1, :cond_2c

    if-ne v1, v9, :cond_2b

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_17

    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v1, Lr/l2;

    iget-object v2, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v2, Lr/n0;

    iget-object v3, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v3, Lr/n2;

    new-instance v5, Lp/o0;

    const/4 v6, 0x6

    invoke-direct {v5, v6, v1, v3}, Lp/o0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-virtual {v2, v5, v4}, Lr/n0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2d

    goto :goto_18

    :cond_2d
    :goto_17
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_18
    return-object v0

    :pswitch_b
    iget-object v0, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v0, Lr/s0;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v2, :cond_2f

    if-ne v2, v9, :cond_2e

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1c

    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v2, Lu9/t;

    iget-object v3, v0, Lr/s0;->X:Li9/f;

    iget-object v5, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v5, Lr/v;

    iget-wide v5, v5, Lr/v;->a:J

    iget-boolean v7, v0, Lr/s0;->Y:Z

    if-eqz v7, :cond_30

    const/high16 v7, -0x40800000    # -1.0f

    :goto_19
    invoke-static {v7, v5, v6}, Lb3/q;->f(FJ)J

    move-result-wide v5

    goto :goto_1a

    :cond_30
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_19

    :goto_1a
    iget-object v0, v0, Lr/s0;->U:Lr/m1;

    sget-object v7, Lr/r0;->a:Lr/q0;

    sget-object v7, Lr/m1;->l:Lr/m1;

    if-ne v0, v7, :cond_31

    invoke-static {v5, v6}, Lb3/q;->c(J)F

    move-result v0

    goto :goto_1b

    :cond_31
    invoke-static {v5, v6}, Lb3/q;->b(J)F

    move-result v0

    :goto_1b
    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, v0}, Ljava/lang/Float;-><init>(F)V

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-interface {v3, v2, v5, v4}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_32

    goto :goto_1d

    :cond_32
    :goto_1c
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_1d
    return-object v1

    :pswitch_c
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v1, :cond_34

    if-ne v1, v9, :cond_33

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1e

    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v1, Lo0/n4;

    iget-object v2, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v2, Lr/n0;

    iget-object v3, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v3, Lr/s0;

    new-instance v5, Lp/o0;

    const/4 v6, 0x5

    invoke-direct {v5, v6, v1, v3}, Lp/o0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-virtual {v2, v5, v4}, Lr/n0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_35

    goto :goto_1f

    :cond_35
    :goto_1e
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_1f
    return-object v0

    :pswitch_d
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v1, :cond_37

    if-ne v1, v9, :cond_36

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_20

    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v1, Lr/m;

    iget-object v12, v1, Lr/m;->c:Lp/r1;

    iget-object v14, v1, Lr/m;->b:Lr/l;

    iget-object v3, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    move-object v11, v3

    check-cast v11, Lp/n1;

    new-instance v13, Landroidx/lifecycle/m0;

    iget-object v3, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v3, Li9/e;

    invoke-direct {v13, v1, v3, v8, v2}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lp/q1;

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v15}, Lp/q1;-><init>(Lp/n1;Lp/r1;Li9/e;Ljava/lang/Object;Ly8/c;)V

    invoke-static {v10, v4}, Lu9/v;->g(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_38

    goto :goto_21

    :cond_38
    :goto_20
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_21
    return-object v0

    :pswitch_e
    iget-object v0, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v0, Lr/m;

    iget-object v1, v0, Lr/m;->d:Lr0/e1;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v2, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v2, :cond_3a

    if-ne v2, v9, :cond_39

    :try_start_2
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_22

    :catchall_1
    move-exception v0

    goto :goto_24

    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v2, Lr/s1;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :try_start_3
    iget-object v3, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v3, Li9/e;

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-interface {v3, v2, v4}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v2, v0, :cond_3b

    goto :goto_23

    :cond_3b
    :goto_22
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_23
    return-object v0

    :goto_24
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    throw v0

    :pswitch_f
    sget-object v10, Lt8/z;->a:Lt8/z;

    iget-object v0, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v0, Lp/m1;

    iget-object v11, v0, Lp/m1;->I:Ln/c;

    sget-object v12, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/m0;->m:I

    const/4 v13, 0x0

    if-eqz v1, :cond_41

    if-eq v1, v9, :cond_3f

    if-eq v1, v5, :cond_3e

    if-eq v1, v7, :cond_3d

    if-eq v1, v6, :cond_3c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    iget-object v0, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_2a

    :cond_3d
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_29

    :cond_3e
    :try_start_4
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v0, p1

    goto/16 :goto_26

    :catchall_2
    move-exception v0

    goto/16 :goto_27

    :cond_3f
    iget-object v1, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v1, Ln/j;

    iget-object v2, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    :cond_40
    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    goto :goto_25

    :cond_41
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/Float;

    if-nez v2, :cond_42

    goto/16 :goto_29

    :cond_42
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v3, v0, Lp/m1;->z:I

    iget v14, v0, Lp/m1;->A:F

    invoke-static {v0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v15

    iget-object v15, v15, Le2/g0;->K:Lb3/c;

    invoke-interface {v15, v14}, Lb3/c;->V(F)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x447a0000    # 1000.0f

    div-float/2addr v14, v15

    div-float/2addr v1, v14

    float-to-double v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-float v1, v14

    float-to-int v1, v1

    sget-object v14, Ln/w;->b:Lc2/c0;

    new-instance v15, Ln/n1;

    const/16 v6, 0x4b0

    invoke-direct {v15, v1, v6, v14}, Ln/n1;-><init>(IILn/v;)V

    const/16 v1, -0x4b0

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, -0x1

    int-to-long v7, v1

    invoke-static {v15, v7, v8, v5}, Ln/d;->k(Ln/u;JI)Ln/b0;

    move-result-object v1

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, v13}, Ljava/lang/Float;-><init>(F)V

    iput-object v2, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    iput-object v1, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-virtual {v11, v3, v4}, Ln/c;->e(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v12, :cond_40

    goto :goto_28

    :goto_25
    :try_start_5
    iget-object v0, v0, Lp/m1;->I:Ln/c;

    const/4 v6, 0x0

    iput-object v6, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    iput-object v6, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    iput v5, v4, Landroidx/lifecycle/m0;->m:I

    const/4 v3, 0x0

    const/16 v5, 0xc

    invoke-static/range {v0 .. v5}, Ln/c;->c(Ln/c;Ljava/lang/Object;Ln/j;Li9/c;Ly8/c;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_43

    goto :goto_28

    :cond_43
    :goto_26
    check-cast v0, Ln/h;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v13}, Ljava/lang/Float;-><init>(F)V

    const/4 v14, 0x3

    iput v14, v4, Landroidx/lifecycle/m0;->m:I

    invoke-virtual {v11, v0, v4}, Ln/c;->e(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_44

    goto :goto_28

    :goto_27
    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v13}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, v4, Landroidx/lifecycle/m0;->m:I

    invoke-virtual {v11, v1, v4}, Ln/c;->e(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v12, :cond_45

    :goto_28
    move-object v10, v12

    :cond_44
    :goto_29
    return-object v10

    :cond_45
    :goto_2a
    throw v0

    :pswitch_10
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v1, :cond_47

    if-ne v1, v9, :cond_46

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2b

    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v1, Ls/i;

    iget-object v2, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v2, Ls/h;

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-virtual {v1, v2, v4}, Ls/i;->a(Ls/h;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_48

    goto :goto_2c

    :cond_48
    :goto_2b
    iget-object v0, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v0, Lu9/g0;

    if-eqz v0, :cond_49

    invoke-interface {v0}, Lu9/g0;->a()V

    :cond_49
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_2c
    return-object v0

    :pswitch_11
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v1, :cond_4b

    if-ne v1, v9, :cond_4a

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2d

    :cond_4a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v1, Ls/i;

    iget-object v2, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v2, Ls/j;

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-virtual {v1, v2, v4}, Ls/i;->a(Ls/h;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4c

    goto :goto_2e

    :cond_4c
    :goto_2d
    iget-object v0, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v0, Lu9/g0;

    if-eqz v0, :cond_4d

    invoke-interface {v0}, Lu9/g0;->a()V

    :cond_4d
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_2e
    return-object v0

    :pswitch_12
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v1, :cond_4f

    if-ne v1, v9, :cond_4e

    iget-object v0, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_2f

    :cond_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v1, Lr0/u0;

    sget-object v2, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->c()Lgd/d;

    move-result-object v2

    iput-object v1, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    sget-object v3, Lu9/e0;->a:Lba/e;

    sget-object v3, Lba/d;->n:Lba/d;

    new-instance v5, Lua/nav/net/f;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lua/nav/net/f;-><init>(Lgd/d;Ly8/c;)V

    invoke-static {v3, v5, v4}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_50

    goto :goto_30

    :cond_50
    move-object v0, v1

    :goto_2f
    check-cast v2, Lua/nav/net/PricesDto;

    invoke-interface {v0, v2}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-object v0, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_30
    return-object v0

    :pswitch_13
    sget-object v0, Lt8/z;->a:Lt8/z;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v2, :cond_52

    if-ne v2, v9, :cond_51

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_31

    :cond_51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v2, Lr0/u0;

    sget-object v3, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_53

    goto :goto_33

    :cond_53
    iget-object v2, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v2, Lod/c0;

    if-eqz v2, :cond_55

    sget-object v3, Lu9/e0;->a:Lba/e;

    new-instance v7, Lgd/c;

    const/4 v6, 0x0

    invoke-direct {v7, v2, v6, v5}, Lgd/c;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-static {v3, v7, v4}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_54

    move-object v0, v1

    goto :goto_33

    :cond_54
    :goto_31
    check-cast v2, Lorg/maplibre/geojson/FeatureCollection;

    goto :goto_32

    :cond_55
    sget-object v1, Lu8/r;->l:Lu8/r;

    invoke-static {v1}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v2

    :goto_32
    iget-object v1, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v1, Lr0/u0;

    sget-object v3, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v1, :cond_56

    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object v1

    if-eqz v1, :cond_56

    const-string v3, "route-done-src"

    invoke-virtual {v1, v3}, Lorg/maplibre/android/maps/Style;->getSourceAs(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/style/sources/GeoJsonSource;

    if-eqz v1, :cond_56

    invoke-virtual {v1, v2}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/FeatureCollection;)V

    :cond_56
    :goto_33
    return-object v0

    :pswitch_14
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v1, :cond_58

    if-ne v1, v9, :cond_57

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_34

    :cond_57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    iget-object v2, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v2, Lr0/r2;

    new-instance v3, Lm0/w0;

    invoke-direct {v3, v2, v9}, Lm0/w0;-><init>(Lr0/r2;I)V

    invoke-static {v3}, Lr0/r;->F(Li9/a;)Lc5/n;

    move-result-object v2

    new-instance v3, Lb0/s1;

    iget-object v6, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v6, Ln/c;

    invoke-direct {v3, v5, v6, v1}, Lb0/s1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-virtual {v2, v3, v4}, Lc5/n;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_59

    goto :goto_35

    :cond_59
    :goto_34
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_35
    return-object v0

    :pswitch_15
    iget-object v0, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v0, Ln/h1;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v2, :cond_5b

    if-ne v2, v9, :cond_5a

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_36

    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v2, Lr0/l1;

    new-instance v5, Lc2/l0;

    const/16 v6, 0xd

    invoke-direct {v5, v6, v0}, Lc2/l0;-><init>(ILjava/lang/Object;)V

    invoke-static {v5}, Lr0/r;->F(Li9/a;)Lc5/n;

    move-result-object v5

    new-instance v6, Lm/f;

    iget-object v7, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v7, Lr0/u0;

    invoke-direct {v6, v2, v0, v7, v3}, Lm/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-virtual {v5, v6, v4}, Lc5/n;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5c

    goto :goto_37

    :cond_5c
    :goto_36
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_37
    return-object v1

    :pswitch_16
    iget-object v0, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v0, Lua/nav/routing/PackDownloadService;

    iget-object v2, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v2, Lua/nav/geo/c;

    iget-object v3, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v3, Lu9/t;

    sget-object v5, Lz8/a;->l:Lz8/a;

    iget v7, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v7, :cond_5e

    if-ne v7, v9, :cond_5d

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_38

    :cond_5d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance v7, Landroidx/lifecycle/i0;

    const/4 v6, 0x0

    invoke-direct {v7, v2, v0, v6, v1}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 v14, 0x3

    invoke-static {v3, v6, v6, v7, v14}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    iput-object v6, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-virtual {v2, v4}, Lua/nav/geo/c;->g(La9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_5f

    goto :goto_39

    :cond_5f
    :goto_38
    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    sget-object v5, Lt8/z;->a:Lt8/z;

    :goto_39
    return-object v5

    :pswitch_17
    iget-object v0, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lh0/j;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v0, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v0, :cond_64

    if-eq v0, v9, :cond_63

    if-eq v0, v5, :cond_62

    const/4 v14, 0x3

    if-eq v0, v14, :cond_61

    const/4 v2, 0x4

    if-eq v0, v2, :cond_60

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    iget-object v0, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_3f

    :cond_61
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_3c

    :cond_62
    :try_start_6
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_3b

    :catchall_3
    move-exception v0

    goto :goto_3d

    :cond_63
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3a

    :cond_64
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    :try_start_7
    iget-object v0, v1, Lh0/j;->C:La9/i;

    if-eqz v0, :cond_65

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-interface {v0, v4}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_65

    goto :goto_3e

    :cond_65
    :goto_3a
    iget-object v0, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v0, Li0/f;

    iput v5, v4, Landroidx/lifecycle/m0;->m:I

    invoke-interface {v0, v1, v4}, Li0/f;->a(Li0/e;La9/i;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-ne v0, v2, :cond_66

    goto :goto_3e

    :cond_66
    :goto_3b
    iget-object v0, v1, Lh0/j;->D:Li9/c;

    if-eqz v0, :cond_67

    const/4 v14, 0x3

    iput v14, v4, Landroidx/lifecycle/m0;->m:I

    invoke-interface {v0, v4}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_67

    goto :goto_3e

    :cond_67
    :goto_3c
    sget-object v2, Lt8/z;->a:Lt8/z;

    goto :goto_3e

    :goto_3d
    iget-object v1, v1, Lh0/j;->D:Li9/c;

    if-eqz v1, :cond_68

    iput-object v0, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    const/4 v3, 0x4

    iput v3, v4, Landroidx/lifecycle/m0;->m:I

    invoke-interface {v1, v4}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_68

    :goto_3e
    return-object v2

    :cond_68
    :goto_3f
    throw v0

    :pswitch_18
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v1, :cond_6a

    if-ne v1, v9, :cond_69

    iget-object v1, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v1, Lw9/b;

    iget-object v2, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v2, Lw9/t;

    :try_start_8
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object/from16 v5, p1

    goto :goto_41

    :catchall_4
    move-exception v0

    move-object v1, v0

    goto :goto_44

    :cond_69
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lw9/e;

    :try_start_9
    new-instance v1, Lw9/b;

    invoke-direct {v1, v2}, Lw9/b;-><init>(Lw9/e;)V

    :cond_6b
    :goto_40
    iput-object v2, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    iput-object v1, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-virtual {v1, v4}, Lw9/b;->b(La9/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_6c

    goto :goto_43

    :cond_6c
    :goto_41
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-virtual {v1}, Lw9/b;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lt8/z;

    sget-object v5, Lf2/q1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v5, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    sget-object v7, Ld1/p;->j:Ld1/b;

    iget-object v7, v7, Ld1/c;->h:Lk/n0;

    if-eqz v7, :cond_6d

    invoke-virtual {v7}, Lk/n0;->h()Z

    move-result v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-ne v7, v9, :cond_6d

    move v7, v9

    goto :goto_42

    :cond_6d
    move v7, v3

    :goto_42
    :try_start_b
    monitor-exit v5

    if-eqz v7, :cond_6b

    invoke-static {}, Ld1/p;->a()V

    goto :goto_40

    :catchall_5
    move-exception v0

    monitor-exit v5

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :cond_6e
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Lw9/t;->c(Ljava/util/concurrent/CancellationException;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_43
    return-object v0

    :goto_44
    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception v0

    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_6f

    move-object v8, v1

    check-cast v8, Ljava/util/concurrent/CancellationException;

    goto :goto_45

    :cond_6f
    const/4 v8, 0x0

    :goto_45
    if-nez v8, :cond_70

    const-string v3, "Channel was consumed, consumer had failed"

    new-instance v8, Ljava/util/concurrent/CancellationException;

    invoke-direct {v8, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_70
    invoke-interface {v2, v8}, Lw9/t;->c(Ljava/util/concurrent/CancellationException;)V

    throw v0

    :pswitch_19
    iget-object v0, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v0, Lg5/o;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v5, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v5, :cond_72

    if-ne v5, v9, :cond_71

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_48

    :cond_71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_72
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v5, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v5, Lc5/o;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "spec"

    invoke-static {v0, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v5, Lc5/o;->m:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v3

    :cond_73
    :goto_46
    if-ge v8, v7, :cond_74

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v8, v8, 0x1

    move-object v11, v10

    check-cast v11, Ld5/e;

    invoke-interface {v11, v0}, Ld5/e;->b(Lg5/o;)Z

    move-result v11

    if-eqz v11, :cond_73

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_74
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v6, v1}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v7, v3

    :goto_47
    if-ge v7, v1, :cond_75

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ld5/e;

    iget-object v10, v0, Lg5/o;->j:Lx4/d;

    invoke-interface {v8, v10}, Ld5/e;->a(Lx4/d;)Lx9/c;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    :cond_75
    invoke-static {v5}, Lu8/m;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    new-array v3, v3, [Lx9/g;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lx9/g;

    new-instance v3, Lc5/n;

    invoke-direct {v3, v1}, Lc5/n;-><init>([Lx9/g;)V

    invoke-static {v3}, Lx9/c0;->h(Lx9/g;)Lx9/g;

    move-result-object v1

    new-instance v3, Lb0/s1;

    iget-object v5, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v5, Lc5/i;

    invoke-direct {v3, v9, v5, v0}, Lb0/s1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-interface {v1, v3, v4}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_76

    goto :goto_49

    :cond_76
    :goto_48
    sget-object v2, Lt8/z;->a:Lt8/z;

    :goto_49
    return-object v2

    :pswitch_1a
    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v0, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v0, :cond_78

    if-ne v0, v9, :cond_77

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_4e

    :cond_77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_78
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v0, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lw9/r;

    iget-object v0, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v0, Lx4/d;

    invoke-virtual {v0}, Lx4/d;->a()Landroid/net/NetworkRequest;

    move-result-object v0

    if-nez v0, :cond_79

    check-cast v2, Lw9/q;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Lw9/q;->o:Lw9/e;

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v3}, Lw9/e;->k(Ljava/lang/Throwable;Z)Z

    sget-object v1, Lt8/z;->a:Lt8/z;

    goto/16 :goto_4f

    :cond_79
    const/4 v6, 0x0

    new-instance v7, Landroidx/lifecycle/i0;

    iget-object v8, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v8, Lc5/g;

    invoke-direct {v7, v8, v2, v6, v5}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 v14, 0x3

    invoke-static {v2, v6, v6, v7, v14}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object v5

    new-instance v6, Lc5/f;

    invoke-direct {v6, v3, v5, v2}, Lc5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1e

    if-lt v5, v7, :cond_7b

    sget-object v3, Lc5/k;->a:Lc5/k;

    iget-object v5, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v5, Lc5/g;

    iget-object v5, v5, Lc5/g;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lc5/k;->b:Ljava/lang/Object;

    monitor-enter v7

    :try_start_d
    sget-object v8, Lc5/k;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    invoke-interface {v8, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v10, :cond_7a

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v6

    sget-object v8, Lc5/p;->a:Ljava/lang/String;

    const-string v10, "NetworkRequestConstraintController register shared callback"

    invoke-virtual {v6, v8, v10}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_4a

    :catchall_7
    move-exception v0

    goto :goto_4b

    :cond_7a
    :goto_4a
    monitor-exit v7

    new-instance v6, Lc5/d;

    invoke-direct {v6, v0, v5, v3, v9}, Lc5/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_4d

    :goto_4b
    monitor-exit v7

    throw v0

    :cond_7b
    sget v5, Lc5/e;->c:I

    iget-object v5, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v5, Lc5/g;

    iget-object v5, v5, Lc5/g;->a:Landroid/net/ConnectivityManager;

    new-instance v7, Lc5/e;

    invoke-direct {v7, v6}, Lc5/e;-><init>(Lc5/f;)V

    new-instance v8, Lj9/u;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    :try_start_e
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v10

    sget-object v11, Lc5/p;->a:Ljava/lang/String;

    const-string v12, "NetworkRequestConstraintController register callback"

    invoke-virtual {v10, v11, v12}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0, v7}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    iput-boolean v9, v8, Lj9/u;->l:Z
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_4c

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "TooManyRequestsException"

    invoke-static {v10, v11}, Lr9/r;->K(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7e

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v10

    sget-object v11, Lc5/p;->a:Ljava/lang/String;

    const-string v12, "NetworkRequestConstraintController couldn\'t register callback"

    iget v10, v10, Lx4/t;->a:I

    const/4 v14, 0x3

    if-gt v10, v14, :cond_7c

    invoke-static {v11, v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7c
    new-instance v0, Lc5/b;

    const/4 v10, 0x7

    invoke-direct {v0, v10}, Lc5/b;-><init>(I)V

    invoke-virtual {v6, v0}, Lc5/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4c
    new-instance v6, Lc5/d;

    invoke-direct {v6, v8, v5, v7, v3}, Lc5/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    :goto_4d
    new-instance v0, Lc2/l0;

    invoke-direct {v0, v6}, Lc2/l0;-><init>(Li9/a;)V

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-static {v2, v0, v4}, Lr5/u0;->f(Lw9/r;Li9/a;La9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_7d

    goto :goto_4f

    :cond_7d
    :goto_4e
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_4f
    return-object v1

    :cond_7e
    throw v0

    :pswitch_1b
    sget-object v0, Lt8/z;->a:Lt8/z;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v2, :cond_80

    if-ne v2, v9, :cond_7f

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_51

    :cond_7f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_80
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v2, Lr0/l1;

    iget-object v3, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v3, Landroidx/lifecycle/q;

    sget-object v5, Landroidx/lifecycle/p;->l:Landroidx/lifecycle/p;

    new-instance v5, Lb4/b;

    iget-object v7, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v7, Lx9/g;

    const/4 v6, 0x0

    invoke-direct {v5, v7, v2, v6, v9}, Lb4/b;-><init>(Lx9/g;Lr0/l1;Ly8/c;I)V

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    sget-object v2, Landroidx/lifecycle/p;->l:Landroidx/lifecycle/p;

    move-object v2, v3

    check-cast v2, Landroidx/lifecycle/x;

    iget-object v2, v2, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/p;

    sget-object v7, Landroidx/lifecycle/p;->l:Landroidx/lifecycle/p;

    if-ne v2, v7, :cond_82

    :cond_81
    move-object v2, v0

    goto :goto_50

    :cond_82
    new-instance v2, Landroidx/lifecycle/m0;

    invoke-direct {v2, v3, v5, v6}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/q;Lb4/b;Ly8/c;)V

    invoke-static {v2, v4}, Lu9/v;->g(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_81

    :goto_50
    if-ne v2, v1, :cond_83

    move-object v0, v1

    :cond_83
    :goto_51
    return-object v0

    :pswitch_1c
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v4, Landroidx/lifecycle/m0;->m:I

    if-eqz v1, :cond_85

    if-ne v1, v9, :cond_84

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_52

    :cond_84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_85
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v4, Landroidx/lifecycle/m0;->n:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    sget-object v2, Lu9/e0;->a:Lba/e;

    sget-object v2, Lz9/n;->a:Lv9/d;

    iget-object v2, v2, Lv9/d;->q:Lv9/d;

    new-instance v3, Landroidx/lifecycle/l0;

    iget-object v5, v4, Landroidx/lifecycle/m0;->o:Ljava/lang/Object;

    check-cast v5, Landroidx/lifecycle/q;

    sget-object v7, Landroidx/lifecycle/p;->l:Landroidx/lifecycle/p;

    iget-object v7, v4, Landroidx/lifecycle/m0;->p:Ljava/lang/Object;

    check-cast v7, Lb4/b;

    const/4 v6, 0x0

    invoke-direct {v3, v5, v1, v7, v6}, Landroidx/lifecycle/l0;-><init>(Landroidx/lifecycle/q;Lu9/t;Lb4/b;Ly8/c;)V

    iput v9, v4, Landroidx/lifecycle/m0;->m:I

    invoke-static {v2, v3, v4}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_86

    goto :goto_53

    :cond_86
    :goto_52
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_53
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
