.class public final Landroidx/lifecycle/x;
.super Landroidx/lifecycle/q;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public b:Li/a;

.field public c:Landroidx/lifecycle/p;

.field public final d:Ljava/lang/ref/WeakReference;

.field public e:I

.field public f:Z

.field public g:Z

.field public final h:Ljava/util/ArrayList;

.field public final i:Lx9/l0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/v;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-boolean p2, p0, Landroidx/lifecycle/x;->a:Z

    new-instance p2, Li/a;

    invoke-direct {p2}, Li/a;-><init>()V

    iput-object p2, p0, Landroidx/lifecycle/x;->b:Li/a;

    sget-object p2, Landroidx/lifecycle/p;->m:Landroidx/lifecycle/p;

    iput-object p2, p0, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/p;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/x;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/x;->d:Ljava/lang/ref/WeakReference;

    invoke-static {p2}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/x;->i:Lx9/l0;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/u;)V
    .locals 9

    const-string v0, "observer"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addObserver"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/x;->d(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/p;

    sget-object v1, Landroidx/lifecycle/p;->l:Landroidx/lifecycle/p;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/lifecycle/p;->m:Landroidx/lifecycle/p;

    :goto_0
    new-instance v0, Landroidx/lifecycle/w;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Landroidx/lifecycle/z;->a:Ljava/util/HashMap;

    instance-of v2, p1, Landroidx/lifecycle/t;

    instance-of v3, p1, Landroidx/lifecycle/f;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    new-instance v2, Landroidx/lifecycle/h;

    move-object v3, p1

    check-cast v3, Landroidx/lifecycle/f;

    move-object v8, p1

    check-cast v8, Landroidx/lifecycle/t;

    invoke-direct {v2, v3, v8}, Landroidx/lifecycle/h;-><init>(Landroidx/lifecycle/f;Landroidx/lifecycle/t;)V

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    new-instance v2, Landroidx/lifecycle/h;

    move-object v3, p1

    check-cast v3, Landroidx/lifecycle/f;

    invoke-direct {v2, v3, v5}, Landroidx/lifecycle/h;-><init>(Landroidx/lifecycle/f;Landroidx/lifecycle/t;)V

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Landroidx/lifecycle/t;

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Landroidx/lifecycle/z;->b(Ljava/lang/Class;)I

    move-result v3

    if-ne v3, v4, :cond_6

    sget-object v3, Landroidx/lifecycle/z;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v7, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v8, v3, [Landroidx/lifecycle/j;

    if-gtz v3, :cond_4

    new-instance v2, Landroidx/lifecycle/e;

    invoke-direct {v2, v6, v8}, Landroidx/lifecycle/e;-><init>(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-static {p0, p1}, Landroidx/lifecycle/z;->a(Ljava/lang/reflect/Constructor;Landroidx/lifecycle/u;)V

    throw v5

    :cond_5
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-static {p0, p1}, Landroidx/lifecycle/z;->a(Ljava/lang/reflect/Constructor;Landroidx/lifecycle/u;)V

    throw v5

    :cond_6
    new-instance v2, Landroidx/lifecycle/h;

    invoke-direct {v2, p1}, Landroidx/lifecycle/h;-><init>(Landroidx/lifecycle/u;)V

    :goto_1
    iput-object v2, v0, Landroidx/lifecycle/w;->b:Landroidx/lifecycle/t;

    iput-object v1, v0, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/p;

    iget-object v1, p0, Landroidx/lifecycle/x;->b:Li/a;

    invoke-virtual {v1, p1}, Li/a;->a(Ljava/lang/Object;)Li/c;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v1, v2, Li/c;->m:Ljava/lang/Object;

    goto :goto_3

    :cond_7
    iget-object v2, v1, Li/a;->p:Ljava/util/HashMap;

    new-instance v3, Li/c;

    invoke-direct {v3, p1, v0}, Li/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v8, v1, Li/f;->o:I

    add-int/2addr v8, v7

    iput v8, v1, Li/f;->o:I

    iget-object v8, v1, Li/f;->m:Li/c;

    if-nez v8, :cond_8

    iput-object v3, v1, Li/f;->l:Li/c;

    iput-object v3, v1, Li/f;->m:Li/c;

    goto :goto_2

    :cond_8
    iput-object v3, v8, Li/c;->n:Li/c;

    iput-object v8, v3, Li/c;->o:Li/c;

    iput-object v3, v1, Li/f;->m:Li/c;

    :goto_2
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v5

    :goto_3
    check-cast v1, Landroidx/lifecycle/w;

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    iget-object v1, p0, Landroidx/lifecycle/x;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/v;

    if-nez v1, :cond_a

    :goto_4
    return-void

    :cond_a
    iget v2, p0, Landroidx/lifecycle/x;->e:I

    if-nez v2, :cond_b

    iget-boolean v2, p0, Landroidx/lifecycle/x;->f:Z

    if-eqz v2, :cond_c

    :cond_b
    move v6, v7

    :cond_c
    invoke-virtual {p0, p1}, Landroidx/lifecycle/x;->c(Landroidx/lifecycle/u;)Landroidx/lifecycle/p;

    move-result-object v2

    iget v3, p0, Landroidx/lifecycle/x;->e:I

    add-int/2addr v3, v7

    iput v3, p0, Landroidx/lifecycle/x;->e:I

    :goto_5
    iget-object v3, v0, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/p;

    invoke-virtual {v3, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_11

    iget-object v2, p0, Landroidx/lifecycle/x;->b:Li/a;

    iget-object v2, v2, Li/a;->p:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v0, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/p;

    iget-object v3, p0, Landroidx/lifecycle/x;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroidx/lifecycle/o;->Companion:Landroidx/lifecycle/m;

    iget-object v8, v0, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/p;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "state"

    invoke-static {v8, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v7, :cond_f

    if-eq v2, v4, :cond_e

    const/4 v8, 0x3

    if-eq v2, v8, :cond_d

    move-object v2, v5

    goto :goto_6

    :cond_d
    sget-object v2, Landroidx/lifecycle/o;->ON_RESUME:Landroidx/lifecycle/o;

    goto :goto_6

    :cond_e
    sget-object v2, Landroidx/lifecycle/o;->ON_START:Landroidx/lifecycle/o;

    goto :goto_6

    :cond_f
    sget-object v2, Landroidx/lifecycle/o;->ON_CREATE:Landroidx/lifecycle/o;

    :goto_6
    if-eqz v2, :cond_10

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;Landroidx/lifecycle/o;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/x;->c(Landroidx/lifecycle/u;)Landroidx/lifecycle/p;

    move-result-object v2

    goto :goto_5

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "no event up from "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/p;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    if-nez v6, :cond_12

    invoke-virtual {p0}, Landroidx/lifecycle/x;->g()V

    :cond_12
    iget p1, p0, Landroidx/lifecycle/x;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/lifecycle/x;->e:I

    return-void
.end method

.method public final b(Landroidx/lifecycle/u;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeObserver"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/x;->d(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/x;->b:Li/a;

    invoke-virtual {p0, p1}, Li/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Landroidx/lifecycle/u;)Landroidx/lifecycle/p;
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/x;->b:Li/a;

    iget-object v0, v0, Li/a;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li/c;

    iget-object p1, p1, Li/c;->o:Li/c;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Li/c;->m:Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/w;

    iget-object p1, p1, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/p;

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    iget-object v0, p0, Landroidx/lifecycle/x;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/lifecycle/p;

    :cond_2
    iget-object p0, p0, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/p;

    const-string v0, "state1"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, p0

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-gez p0, :cond_4

    return-object v2

    :cond_4
    return-object p1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    iget-boolean p0, p0, Landroidx/lifecycle/x;->a:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lh/b;->N()Lh/b;

    move-result-object p0

    iget-object p0, p0, Lh/b;->o:Lh/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    const-string p0, "Method "

    const-string v0, " must be called on the main thread"

    invoke-static {p0, p1, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public final e(Landroidx/lifecycle/o;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleLifecycleEvent"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/x;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/lifecycle/o;->a()Landroidx/lifecycle/p;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/x;->f(Landroidx/lifecycle/p;)V

    return-void
.end method

.method public final f(Landroidx/lifecycle/p;)V
    .locals 4

    iget-object v0, p0, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/p;

    if-ne v0, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/x;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/v;

    iget-object v1, p0, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/p;

    const-string v2, "current"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Landroidx/lifecycle/p;->m:Landroidx/lifecycle/p;

    if-ne v1, v2, :cond_2

    sget-object v2, Landroidx/lifecycle/p;->l:Landroidx/lifecycle/p;

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "State must be at least \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroidx/lifecycle/p;->n:Landroidx/lifecycle/p;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' to be moved to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' in component "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    sget-object v2, Landroidx/lifecycle/p;->l:Landroidx/lifecycle/p;

    if-ne v1, v2, :cond_4

    if-ne v1, p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "State is \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' and cannot be moved to `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "` in component "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    iput-object p1, p0, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/p;

    iget-boolean p1, p0, Landroidx/lifecycle/x;->f:Z

    const/4 v0, 0x1

    if-nez p1, :cond_7

    iget p1, p0, Landroidx/lifecycle/x;->e:I

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    iput-boolean v0, p0, Landroidx/lifecycle/x;->f:Z

    invoke-virtual {p0}, Landroidx/lifecycle/x;->g()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/x;->f:Z

    iget-object p1, p0, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/p;

    if-ne p1, v2, :cond_6

    new-instance p1, Li/a;

    invoke-direct {p1}, Li/a;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/x;->b:Li/a;

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    iput-boolean v0, p0, Landroidx/lifecycle/x;->g:Z

    return-void
.end method

.method public final g()V
    .locals 12

    iget-object v0, p0, Landroidx/lifecycle/x;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/v;

    if-eqz v0, :cond_e

    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/x;->b:Li/a;

    iget v2, v1, Li/f;->o:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Li/f;->l:Li/c;

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v1, v1, Li/c;->m:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/w;

    iget-object v1, v1, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/p;

    iget-object v2, p0, Landroidx/lifecycle/x;->b:Li/a;

    iget-object v2, v2, Li/f;->m:Li/c;

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v2, v2, Li/c;->m:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/w;

    iget-object v2, v2, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/p;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/p;

    if-ne v1, v2, :cond_2

    :goto_0
    iput-boolean v3, p0, Landroidx/lifecycle/x;->g:Z

    iget-object v0, p0, Landroidx/lifecycle/x;->i:Lx9/l0;

    iget-object p0, p0, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/p;

    invoke-virtual {v0, p0}, Lx9/l0;->j(Ljava/lang/Object;)V

    return-void

    :cond_2
    iput-boolean v3, p0, Landroidx/lifecycle/x;->g:Z

    iget-object v1, p0, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/p;

    iget-object v2, p0, Landroidx/lifecycle/x;->b:Li/a;

    iget-object v2, v2, Li/f;->l:Li/c;

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v2, v2, Li/c;->m:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/w;

    iget-object v2, v2, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/p;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, "state"

    const/4 v6, 0x1

    iget-object v7, p0, Landroidx/lifecycle/x;->h:Ljava/util/ArrayList;

    if-gez v1, :cond_8

    iget-object v1, p0, Landroidx/lifecycle/x;->b:Li/a;

    new-instance v8, Li/b;

    iget-object v9, v1, Li/f;->m:Li/c;

    iget-object v10, v1, Li/f;->l:Li/c;

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Li/b;-><init>(Li/c;Li/c;I)V

    iget-object v1, v1, Li/f;->n:Ljava/util/WeakHashMap;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v8}, Li/b;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Landroidx/lifecycle/x;->g:Z

    if-nez v1, :cond_8

    invoke-virtual {v8}, Li/b;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/lifecycle/u;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/w;

    :goto_1
    iget-object v10, v1, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/p;

    iget-object v11, p0, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/p;

    invoke-virtual {v10, v11}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v10

    if-lez v10, :cond_3

    iget-boolean v10, p0, Landroidx/lifecycle/x;->g:Z

    if-nez v10, :cond_3

    iget-object v10, p0, Landroidx/lifecycle/x;->b:Li/a;

    iget-object v10, v10, Li/a;->p:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Landroidx/lifecycle/o;->Companion:Landroidx/lifecycle/m;

    iget-object v11, v1, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/p;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-eq v10, v4, :cond_6

    if-eq v10, v3, :cond_5

    const/4 v11, 0x4

    if-eq v10, v11, :cond_4

    move-object v10, v2

    goto :goto_2

    :cond_4
    sget-object v10, Landroidx/lifecycle/o;->ON_PAUSE:Landroidx/lifecycle/o;

    goto :goto_2

    :cond_5
    sget-object v10, Landroidx/lifecycle/o;->ON_STOP:Landroidx/lifecycle/o;

    goto :goto_2

    :cond_6
    sget-object v10, Landroidx/lifecycle/o;->ON_DESTROY:Landroidx/lifecycle/o;

    :goto_2
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroidx/lifecycle/o;->a()Landroidx/lifecycle/p;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0, v10}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;Landroidx/lifecycle/o;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "no event down from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    iget-object v1, p0, Landroidx/lifecycle/x;->b:Li/a;

    iget-object v1, v1, Li/f;->m:Li/c;

    iget-boolean v8, p0, Landroidx/lifecycle/x;->g:Z

    if-nez v8, :cond_0

    if-eqz v1, :cond_0

    iget-object v8, p0, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/p;

    iget-object v1, v1, Li/c;->m:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/w;

    iget-object v1, v1, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/p;

    invoke-virtual {v8, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Landroidx/lifecycle/x;->b:Li/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Li/d;

    invoke-direct {v8, v1}, Li/d;-><init>(Li/f;)V

    iget-object v1, v1, Li/f;->n:Ljava/util/WeakHashMap;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {v8}, Li/d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/lifecycle/x;->g:Z

    if-nez v1, :cond_0

    invoke-virtual {v8}, Li/d;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/lifecycle/u;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/w;

    :goto_3
    iget-object v10, v1, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/p;

    iget-object v11, p0, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/p;

    invoke-virtual {v10, v11}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v10

    if-gez v10, :cond_9

    iget-boolean v10, p0, Landroidx/lifecycle/x;->g:Z

    if-nez v10, :cond_9

    iget-object v10, p0, Landroidx/lifecycle/x;->b:Li/a;

    iget-object v10, v10, Li/a;->p:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, v1, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/p;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v10, Landroidx/lifecycle/o;->Companion:Landroidx/lifecycle/m;

    iget-object v11, v1, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/p;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-eq v10, v6, :cond_c

    if-eq v10, v4, :cond_b

    if-eq v10, v3, :cond_a

    move-object v10, v2

    goto :goto_4

    :cond_a
    sget-object v10, Landroidx/lifecycle/o;->ON_RESUME:Landroidx/lifecycle/o;

    goto :goto_4

    :cond_b
    sget-object v10, Landroidx/lifecycle/o;->ON_START:Landroidx/lifecycle/o;

    goto :goto_4

    :cond_c
    sget-object v10, Landroidx/lifecycle/o;->ON_CREATE:Landroidx/lifecycle/o;

    :goto_4
    if-eqz v10, :cond_d

    invoke-virtual {v1, v0, v10}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;Landroidx/lifecycle/o;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "no event up from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/lifecycle/w;->a:Landroidx/lifecycle/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
