.class public final Ly9/n;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:I

.field public final synthetic m:[Lx9/g;

.field public final synthetic n:I

.field public final synthetic o:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic p:Lw9/e;


# direct methods
.method public constructor <init>([Lx9/g;ILjava/util/concurrent/atomic/AtomicInteger;Lw9/e;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Ly9/n;->m:[Lx9/g;

    iput p2, p0, Ly9/n;->n:I

    iput-object p3, p0, Ly9/n;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Ly9/n;->p:Lw9/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 6

    new-instance v0, Ly9/n;

    iget-object v3, p0, Ly9/n;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Ly9/n;->p:Lw9/e;

    iget-object v1, p0, Ly9/n;->m:[Lx9/g;

    iget v2, p0, Ly9/n;->n:I

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ly9/n;-><init>([Lx9/g;ILjava/util/concurrent/atomic/AtomicInteger;Lw9/e;Ly8/c;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Ly9/n;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Ly9/n;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Ly9/n;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Ly9/n;->l:I

    const/4 v2, 0x0

    iget-object v3, p0, Ly9/n;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Ly9/n;->p:Lw9/e;

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v5, :cond_0

    :try_start_0
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Ly9/n;->m:[Lx9/g;

    iget v1, p0, Ly9/n;->n:I

    aget-object p1, p1, v1

    new-instance v6, Ly9/m;

    invoke-direct {v6, v4, v1}, Ly9/m;-><init>(Lw9/e;I)V

    iput v5, p0, Ly9/n;->l:I

    invoke-interface {p1, v6, p0}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v4, v2}, Lw9/e;->j(Ljava/lang/Throwable;)Z

    :cond_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :goto_1
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v4, v2}, Lw9/e;->j(Ljava/lang/Throwable;)Z

    :cond_4
    throw p0
.end method
