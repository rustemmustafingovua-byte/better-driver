.class public final Lc5/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/g;


# instance fields
.field public final synthetic l:I

.field public final m:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Li9/e;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lc5/n;->l:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    check-cast p1, La9/i;

    iput-object p1, p0, Lc5/n;->m:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>([Lx9/g;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lc5/n;->l:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc5/n;->m:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final a(Lx9/h;Ly8/c;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lc5/n;->l:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, Lx9/a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lx9/a;

    iget v1, v0, Lx9/a;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lx9/a;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lx9/a;

    invoke-direct {v0, p0, p2}, Lx9/a;-><init>(Lc5/n;Ly8/c;)V

    :goto_0
    iget-object p2, v0, Lx9/a;->m:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lx9/a;->o:I

    sget-object v3, Lt8/z;->a:Lt8/z;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lx9/a;->l:Ly9/t;

    :try_start_0
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    new-instance p2, Ly9/t;

    invoke-interface {v0}, Ly8/c;->getContext()Ly8/h;

    move-result-object v2

    invoke-direct {p2, p1, v2}, Ly9/t;-><init>(Lx9/h;Ly8/h;)V

    :try_start_1
    iput-object p2, v0, Lx9/a;->l:Ly9/t;

    iput v4, v0, Lx9/a;->o:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object p0, p0, Lc5/n;->m:Ljava/io/Serializable;

    check-cast p0, La9/i;

    invoke-interface {p0, p2, v0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p0, v1, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, v3

    :goto_1
    if-ne p0, v1, :cond_4

    goto :goto_3

    :cond_4
    move-object p0, p2

    :goto_2
    invoke-virtual {p0}, La9/c;->releaseIntercepted()V

    move-object v1, v3

    :goto_3
    return-object v1

    :catchall_1
    move-exception p0

    move-object p1, p0

    :goto_4
    move-object p0, p2

    goto :goto_5

    :catchall_2
    move-exception p1

    goto :goto_4

    :goto_5
    invoke-virtual {p0}, La9/c;->releaseIntercepted()V

    throw p1

    :pswitch_0
    iget-object p0, p0, Lc5/n;->m:Ljava/io/Serializable;

    check-cast p0, [Lx9/g;

    new-instance v0, Lc2/l0;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lc2/l0;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lc5/m;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, La9/i;-><init>(ILy8/c;)V

    invoke-static {v0, v1, p1, p2, p0}, Ly9/c;->a(Li9/a;Li9/f;Lx9/h;Ly8/c;[Lx9/g;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_5

    goto :goto_6

    :cond_5
    sget-object p0, Lt8/z;->a:Lt8/z;

    :goto_6
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
