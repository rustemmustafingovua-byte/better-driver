.class public abstract Le7/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lk0/l;

.field public final d:Le7/b;

.field public final e:Lf7/b;

.field public final f:I

.field public final g:Lf7/a;

.field public final h:Lf7/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lk0/l;Le7/b;Le7/e;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lg7/s;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lg7/s;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {p4, v0}, Lg7/s;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "The provided context did not have an application context."

    invoke-static {v0, v1}, Lg7/s;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le7/f;->a:Landroid/content/Context;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    invoke-static {p1}, Lc5/j;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Le7/f;->b:Ljava/lang/String;

    iput-object p2, p0, Le7/f;->c:Lk0/l;

    iput-object p3, p0, Le7/f;->d:Le7/b;

    new-instance v1, Lf7/b;

    invoke-direct {v1, p2, p3, p1}, Lf7/b;-><init>(Lk0/l;Le7/b;Ljava/lang/String;)V

    iput-object v1, p0, Le7/f;->e:Lf7/b;

    new-instance p1, Lf7/r;

    invoke-static {v0}, Lf7/d;->f(Landroid/content/Context;)Lf7/d;

    move-result-object p1

    iput-object p1, p0, Le7/f;->h:Lf7/d;

    iget-object p2, p1, Lf7/d;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    iput p2, p0, Le7/f;->f:I

    iget-object p2, p4, Le7/e;->a:Lf7/a;

    iput-object p2, p0, Le7/f;->g:Lf7/a;

    iget-object p1, p1, Lf7/d;->m:Ln7/f;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public final a()Lg5/m;
    .locals 4

    new-instance v0, Lg5/m;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg5/m;-><init>(IZ)V

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iget-object v2, v0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v2, Lk/f;

    if-nez v2, :cond_0

    new-instance v2, Lk/f;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lk/f;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lg5/m;->m:Ljava/lang/Object;

    :cond_0
    iget-object v2, v0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v2, Lk/f;

    invoke-virtual {v2, v1}, Lk/f;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Le7/f;->a:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lg5/m;->o:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lg5/m;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public final b(Lg5/l;)Lu7/i;
    .locals 5

    iget-object v0, p1, Lg5/l;->m:Ljava/lang/Object;

    check-cast v0, Ld1/c0;

    iget-object v0, v0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v0, Lf7/h;

    iget-object v0, v0, Lf7/h;->a:Lf7/g;

    const-string v1, "Listener has already been released."

    invoke-static {v0, v1}, Lg7/s;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lg5/l;->n:Ljava/lang/Object;

    check-cast v0, Lg5/e;

    iget-object v0, v0, Lg5/e;->m:Ljava/lang/Object;

    check-cast v0, Lf7/g;

    invoke-static {v0, v1}, Lg7/s;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lg5/l;->m:Ljava/lang/Object;

    check-cast v0, Ld1/c0;

    iget-object p1, p1, Lg5/l;->n:Ljava/lang/Object;

    check-cast p1, Lg5/e;

    iget-object v1, p0, Le7/f;->h:Lf7/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lu7/d;

    invoke-direct {v2}, Lu7/d;-><init>()V

    iget v3, v0, Ld1/c0;->b:I

    invoke-virtual {v1, v2, v3, p0}, Lf7/d;->e(Lu7/d;ILe7/f;)V

    new-instance v3, Lf7/a0;

    new-instance v4, Lf7/x;

    invoke-direct {v4, v0, p1}, Lf7/x;-><init>(Ld1/c0;Lg5/e;)V

    invoke-direct {v3, v4, v2}, Lf7/a0;-><init>(Lf7/x;Lu7/d;)V

    iget-object p1, v1, Lf7/d;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lf7/w;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-direct {v0, v3, p1, p0}, Lf7/w;-><init>(Lf7/t;ILe7/f;)V

    iget-object p0, v1, Lf7/d;->m:Ln7/f;

    const/16 p1, 0x8

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, v2, Lu7/d;->a:Lu7/i;

    return-object p0
.end method

.method public final c(Lf7/g;)Lu7/i;
    .locals 4

    iget-object v0, p0, Le7/f;->h:Lf7/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lu7/d;

    invoke-direct {v1}, Lu7/d;-><init>()V

    const/16 v2, 0x974

    invoke-virtual {v0, v1, v2, p0}, Lf7/d;->e(Lu7/d;ILe7/f;)V

    new-instance v2, Lf7/a0;

    invoke-direct {v2, p1, v1}, Lf7/a0;-><init>(Lf7/g;Lu7/d;)V

    iget-object p1, v0, Lf7/d;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v3, Lf7/w;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-direct {v3, v2, p1, p0}, Lf7/w;-><init>(Lf7/t;ILe7/f;)V

    iget-object p0, v0, Lf7/d;->m:Ln7/f;

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, v1, Lu7/d;->a:Lu7/i;

    return-object p0
.end method

.method public final d(ILf2/t1;)Lu7/i;
    .locals 4

    new-instance v0, Lu7/d;

    invoke-direct {v0}, Lu7/d;-><init>()V

    iget-object v1, p0, Le7/f;->h:Lf7/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p2, Lf2/t1;->b:I

    invoke-virtual {v1, v0, v2, p0}, Lf7/d;->e(Lu7/d;ILe7/f;)V

    new-instance v2, Lf7/b0;

    iget-object v3, p0, Le7/f;->g:Lf7/a;

    invoke-direct {v2, p1, p2, v0, v3}, Lf7/b0;-><init>(ILf2/t1;Lu7/d;Lf7/a;)V

    iget-object p1, v1, Lf7/d;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p2, Lf7/w;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-direct {p2, v2, p1, p0}, Lf7/w;-><init>(Lf7/t;ILe7/f;)V

    iget-object p0, v1, Lf7/d;->m:Ln7/f;

    const/4 p1, 0x4

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, v0, Lu7/d;->a:Lu7/i;

    return-object p0
.end method
