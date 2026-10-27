.class public final Lx9/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/h;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lx9/h;

.field public final synthetic n:Lj9/y;


# direct methods
.method public constructor <init>(Lx9/f;Lj9/y;Lx9/h;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lx9/e;->l:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lx9/e;->n:Lj9/y;

    iput-object p3, p0, Lx9/e;->m:Lx9/h;

    return-void
.end method

.method public constructor <init>(Lx9/h;Lj9/y;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lx9/e;->l:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx9/e;->m:Lx9/h;

    iput-object p2, p0, Lx9/e;->n:Lj9/y;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lx9/e;->l:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, Lx9/k;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lx9/k;

    iget v1, v0, Lx9/k;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lx9/k;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lx9/k;

    invoke-direct {v0, p0, p2}, Lx9/k;-><init>(Lx9/e;Ly8/c;)V

    :goto_0
    iget-object p2, v0, Lx9/k;->m:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lx9/k;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lx9/k;->l:Lx9/e;

    :try_start_0
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    :try_start_1
    iget-object p2, p0, Lx9/e;->m:Lx9/h;

    iput-object p0, v0, Lx9/k;->l:Lx9/e;

    iput v3, v0, Lx9/k;->o:I

    invoke-interface {p2, p1, v0}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_2
    return-object v1

    :goto_3
    iget-object p0, p0, Lx9/e;->n:Lj9/y;

    iput-object p1, p0, Lj9/y;->m:Ljava/lang/Object;

    throw p1

    :pswitch_0
    instance-of v0, p2, Lx9/d;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Lx9/d;

    iget v1, v0, Lx9/d;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_4

    sub-int/2addr v1, v2

    iput v1, v0, Lx9/d;->n:I

    goto :goto_4

    :cond_4
    new-instance v0, Lx9/d;

    invoke-direct {v0, p0, p2}, Lx9/d;-><init>(Lx9/e;Ly8/c;)V

    :goto_4
    iget-object p2, v0, Lx9/d;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lx9/d;->n:I

    sget-object v3, Lt8/z;->a:Lt8/z;

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    if-ne v2, v4, :cond_6

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    :cond_5
    move-object v1, v3

    goto :goto_5

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    iget-object p2, p0, Lx9/e;->n:Lj9/y;

    iget-object v2, p2, Lj9/y;->m:Ljava/lang/Object;

    sget-object v5, Ly9/c;->b:Lmb/s2;

    if-eq v2, v5, :cond_8

    invoke-static {v2, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_8
    iput-object p1, p2, Lj9/y;->m:Ljava/lang/Object;

    iput v4, v0, Lx9/d;->n:I

    iget-object p0, p0, Lx9/e;->m:Lx9/h;

    invoke-interface {p0, p1, v0}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_5
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
