.class public Lg5/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf8/p3;
.implements Lj6/k0;
.implements Lmb/h7;
.implements Lmb/q7;
.implements Lr2/b;


# instance fields
.field public l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Lt0/b;

    const/16 v0, 0x10

    new-array v0, v0, [Le2/g0;

    invoke-direct {p1, v0}, Lt0/b;-><init>([Ljava/lang/Object;)V

    .line 5
    iput-object p1, p0, Lg5/s;->l:Ljava/lang/Object;

    return-void

    .line 6
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance p1, Lwa/e;

    const/4 v0, 0x1

    .line 8
    invoke-direct {p1, v0}, Lwa/e;-><init>(I)V

    .line 9
    iput-object p1, p0, Lg5/s;->l:Ljava/lang/Object;

    .line 10
    new-instance p1, Lk/s;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lk/s;-><init>(I)V

    iput-object p1, p0, Lg5/s;->m:Ljava/lang/Object;

    return-void

    .line 11
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lg5/s;->m:Ljava/lang/Object;

    const/16 p1, 0x40

    const/16 v0, 0x3e8

    .line 13
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 14
    new-instance v0, Lu6/m;

    const/16 v1, 0xfa0

    invoke-direct {v0, p1, v1}, Lu6/m;-><init>(II)V

    iput-object v0, p0, Lg5/s;->l:Ljava/lang/Object;

    return-void

    .line 15
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object p1, Lh0/k;->l:Lh0/k;

    iput-object p1, p0, Lg5/s;->m:Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_2
        0xa -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg5/s;->l:Ljava/lang/Object;

    iput-object p2, p0, Lg5/s;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/s;->l:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 18
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    iput-object v0, p0, Lg5/s;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lf8/r3;

    invoke-direct {v0, p1, p2, p3}, Lf8/r3;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 21
    iget-object p1, v0, Lf8/r3;->c:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lg5/s;->l:Ljava/lang/Object;

    .line 22
    iput-object v0, p0, Lg5/s;->m:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lmb/a7;Ljava/lang/Object;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lg5/s;->m:Ljava/lang/Object;

    iput-object p2, p0, Lg5/s;->l:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static t(Le2/g0;)V
    .locals 10

    iget v0, p0, Le2/g0;->b0:I

    if-lez v0, :cond_b

    iget-object v0, p0, Le2/g0;->S:Le2/l0;

    iget-object v0, v0, Le2/l0;->d:Le2/c0;

    sget-object v1, Le2/c0;->p:Le2/c0;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    invoke-virtual {p0}, Le2/g0;->q()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Le2/g0;->r()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Le2/g0;->c0:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Le2/g0;->I()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v0, p0, Le2/g0;->R:Le2/c1;

    iget-object v0, v0, Le2/c1;->f:Lf1/q;

    iget v1, v0, Lf1/q;->o:I

    const/16 v3, 0x100

    and-int/2addr v1, v3

    if-eqz v1, :cond_a

    :goto_0
    if-eqz v0, :cond_a

    iget v1, v0, Lf1/q;->n:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    move-object v4, v0

    move-object v5, v1

    :goto_1
    if-eqz v4, :cond_9

    instance-of v6, v4, Le2/o;

    if-eqz v6, :cond_2

    check-cast v4, Le2/o;

    invoke-static {v4, v3}, Le2/l;->t(Le2/j;I)Le2/h1;

    move-result-object v6

    invoke-interface {v4, v6}, Le2/o;->q0(Le2/h1;)V

    goto :goto_4

    :cond_2
    iget v6, v4, Lf1/q;->n:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_8

    instance-of v6, v4, Le2/k;

    if-eqz v6, :cond_8

    move-object v6, v4

    check-cast v6, Le2/k;

    iget-object v6, v6, Le2/k;->A:Lf1/q;

    move v7, v2

    :goto_2
    const/4 v8, 0x1

    if-eqz v6, :cond_7

    iget v9, v6, Lf1/q;->n:I

    and-int/2addr v9, v3

    if-eqz v9, :cond_6

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v8, :cond_3

    move-object v4, v6

    goto :goto_3

    :cond_3
    if-nez v5, :cond_4

    new-instance v5, Lt0/b;

    const/16 v8, 0x10

    new-array v8, v8, [Lf1/q;

    invoke-direct {v5, v8}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v5, v4}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v4, v1

    :cond_5
    invoke-virtual {v5, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_6
    :goto_3
    iget-object v6, v6, Lf1/q;->q:Lf1/q;

    goto :goto_2

    :cond_7
    if-ne v7, v8, :cond_8

    goto :goto_1

    :cond_8
    :goto_4
    invoke-static {v5}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v4

    goto :goto_1

    :cond_9
    iget v1, v0, Lf1/q;->o:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_a

    iget-object v0, v0, Lf1/q;->q:Lf1/q;

    goto :goto_0

    :cond_a
    :goto_5
    iput-boolean v2, p0, Le2/g0;->a0:Z

    invoke-virtual {p0}, Le2/g0;->z()Lt0/b;

    move-result-object p0

    iget-object v0, p0, Lt0/b;->l:[Ljava/lang/Object;

    iget p0, p0, Lt0/b;->n:I

    :goto_6
    if-ge v2, p0, :cond_b

    aget-object v1, v0, v2

    check-cast v1, Le2/g0;

    invoke-static {v1}, Lg5/s;->t(Le2/g0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_b
    return-void
.end method


# virtual methods
.method public A(Landroidx/fragment/app/l0;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/w0;

    iget-object v0, v0, Landroidx/fragment/app/w0;->o:Landroidx/fragment/app/l0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->getParentFragmentManager()Landroidx/fragment/app/w0;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/fragment/app/w0;->k:Lg5/s;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lg5/s;->A(Landroidx/fragment/app/l0;Z)V

    :cond_0
    iget-object p0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p2, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public B(Landroidx/fragment/app/l0;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/w0;

    iget-object v0, v0, Landroidx/fragment/app/w0;->o:Landroidx/fragment/app/l0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->getParentFragmentManager()Landroidx/fragment/app/w0;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/fragment/app/w0;->k:Lg5/s;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lg5/s;->B(Landroidx/fragment/app/l0;Z)V

    :cond_0
    iget-object p0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p2, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public C(Landroidx/fragment/app/l0;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/w0;

    iget-object v0, v0, Landroidx/fragment/app/w0;->o:Landroidx/fragment/app/l0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->getParentFragmentManager()Landroidx/fragment/app/w0;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/fragment/app/w0;->k:Lg5/s;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lg5/s;->C(Landroidx/fragment/app/l0;Z)V

    :cond_0
    iget-object p0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p2, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public D(Landroidx/fragment/app/l0;Landroid/os/Bundle;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/w0;

    iget-object v0, v0, Landroidx/fragment/app/w0;->o:Landroidx/fragment/app/l0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->getParentFragmentManager()Landroidx/fragment/app/w0;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/fragment/app/w0;->k:Lg5/s;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lg5/s;->D(Landroidx/fragment/app/l0;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object p0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p3, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public E(Lmb/i3;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v0, Lmb/a7;

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object p0, p1, Lmb/i3;->g:[Lmb/z5;

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    invoke-virtual {v0, p1, v4}, Lmb/a7;->O0(Lmb/i3;Lmb/z5;)Lmb/g3;

    move-result-object v5

    iget-object v6, v4, Lmb/z5;->c:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "Redefinition of local variable \""

    const-string p1, "\" "

    invoke-static {p0, v6, p1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v4, Lmb/m3;->a:Lhb/c;

    invoke-virtual {v0, p1, p0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    iput-object v1, p1, Lmb/e5;->d:Ljava/util/Map;

    return-object v1
.end method

.method public F(Lmb/a6;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v0, Lmb/a7;

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    iput-object p0, p1, Lmb/e5;->d:Ljava/util/Map;

    iget-object p1, p1, Lmb/u1;->g:Lmb/f1;

    invoke-virtual {v0, p1, p0}, Lmb/a7;->r(Lmb/f1;Ljava/util/Map;)Ljava/util/Map;

    return-object p0
.end method

.method public G(Landroidx/fragment/app/l0;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/w0;

    iget-object v0, v0, Landroidx/fragment/app/w0;->o:Landroidx/fragment/app/l0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->getParentFragmentManager()Landroidx/fragment/app/w0;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/fragment/app/w0;->k:Lg5/s;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lg5/s;->G(Landroidx/fragment/app/l0;Z)V

    :cond_0
    iget-object p0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p2, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public H(Landroidx/fragment/app/l0;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/w0;

    iget-object v0, v0, Landroidx/fragment/app/w0;->o:Landroidx/fragment/app/l0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->getParentFragmentManager()Landroidx/fragment/app/w0;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/fragment/app/w0;->k:Lg5/s;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lg5/s;->H(Landroidx/fragment/app/l0;Z)V

    :cond_0
    iget-object p0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p2, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public I(Landroidx/fragment/app/l0;Landroid/view/View;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/w0;

    iget-object v0, v0, Landroidx/fragment/app/w0;->o:Landroidx/fragment/app/l0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->getParentFragmentManager()Landroidx/fragment/app/w0;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/fragment/app/w0;->k:Lg5/s;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lg5/s;->I(Landroidx/fragment/app/l0;Landroid/view/View;Z)V

    :cond_0
    iget-object p0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p3, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public J(Landroidx/fragment/app/l0;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/w0;

    iget-object v0, v0, Landroidx/fragment/app/w0;->o:Landroidx/fragment/app/l0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->getParentFragmentManager()Landroidx/fragment/app/w0;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/fragment/app/w0;->k:Lg5/s;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lg5/s;->J(Landroidx/fragment/app/l0;Z)V

    :cond_0
    iget-object p0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p2, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public K()D
    .locals 4

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :try_start_0
    iget-object v2, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v2, Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v3

    :goto_0
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_1

    move-object v3, p0

    check-cast v3, Ljava/lang/Number;

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-wide v0
.end method

.method public L(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    invoke-static {v0, v1}, Lk4/n;->b(ILjava/lang/String;)Lk4/n;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lk4/n;->h(ILjava/lang/String;)V

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {p0, v1}, Landroidx/work/impl/WorkDatabase;->m(Lq4/d;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Lk4/n;->c()V

    return-object p1

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Lk4/n;->c()V

    throw p1
.end method

.method public M()I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    move-object v2, p0

    check-cast v2, Ljava/lang/Number;

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_2
    return v0
.end method

.method public M0(Lmb/l5;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v0, Lmb/a7;

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    iput-object p0, p1, Lmb/e5;->d:Ljava/util/Map;

    iget-object p1, p1, Lmb/l5;->f:Lmb/f1;

    invoke-virtual {v0, p1, p0}, Lmb/a7;->r(Lmb/f1;Ljava/util/Map;)Ljava/util/Map;

    return-object p0
.end method

.method public N()V
    .locals 7

    iget-object v0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v0, Lh0/k;

    sget-object v1, Lh0/k;->l:Lh0/k;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ToolbarRequester is not initialized."

    invoke-static {v0}, Lt/b;->c(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Lh0/j;

    if-eqz p0, :cond_3

    iget-boolean v0, p0, Lf1/q;->y:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lh0/j;->F:Lu9/j1;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lu9/c1;->b()Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Li0/g;->b:Lr0/a0;

    invoke-static {p0, v0}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li0/f;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v2

    sget-object v3, Lu9/u;->o:Lu9/u;

    new-instance v4, Landroidx/lifecycle/m0;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-direct {v4, p0, v0, v6, v5}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v2, v6, v3, v4, v1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object v0

    iput-object v0, p0, Lh0/j;->F:Lu9/j1;

    :cond_3
    :goto_1
    return-void
.end method

.method public O(Lmb/n2;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v0, Lmb/a7;

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v2, p1, Lmb/n2;->h:Lmb/p2;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lmb/a7;->N0(Lmb/p2;Z)Lmb/g3;

    move-result-object v3

    iget-object v2, v2, Lmb/p2;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p1, Lmb/e5;->d:Ljava/util/Map;

    iget-object p1, p1, Lmb/u1;->g:Lmb/f1;

    invoke-virtual {v0, p1, v1}, Lmb/a7;->r(Lmb/f1;Ljava/util/Map;)Ljava/util/Map;

    return-object p0
.end method

.method public P(Lmb/e1;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v0, Lmb/a7;

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {v0, p1, p0}, Lmb/a7;->s(Lmb/e1;Ljava/util/Map;)V

    return-object p0
.end method

.method public Q(Lmb/t2;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v0, Lmb/a7;

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    iput-object p0, p1, Lmb/e5;->d:Ljava/util/Map;

    iget-object v1, p1, Lmb/t2;->f:Lmb/f1;

    invoke-virtual {v0, v1, p0}, Lmb/a7;->r(Lmb/f1;Ljava/util/Map;)Ljava/util/Map;

    iget-object p1, p1, Lmb/t2;->g:Lmb/f1;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1, p0}, Lmb/a7;->r(Lmb/f1;Ljava/util/Map;)Ljava/util/Map;

    :cond_0
    return-object p0
.end method

.method public R(Lb6/l;)Lb6/u;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v0, Lu6/m;

    new-instance v1, Lu6/b0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lu6/b0;-><init>(Lb6/l;Z)V

    iget-object p1, v0, Lu6/m;->l:Ljava/io/Serializable;

    check-cast p1, Lv6/p;

    invoke-virtual {p1, v1}, Lv6/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb6/u;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public S(Ljava/lang/Class;)Lb6/u;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v0, Lu6/m;

    new-instance v1, Lu6/b0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lu6/b0;-><init>(Ljava/lang/Class;Z)V

    iget-object p1, v0, Lu6/m;->l:Ljava/io/Serializable;

    check-cast p1, Lv6/p;

    invoke-virtual {p1, v1}, Lv6/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb6/u;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public T(Lmb/v1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    iput-object p0, p1, Lmb/e5;->d:Ljava/util/Map;

    return-object p0
.end method

.method public U(Lmb/i1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    iput-object p0, p1, Lmb/e5;->d:Ljava/util/Map;

    return-object p0
.end method

.method public V(Lmb/q5;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p1, Lmb/q5;->c:Lmb/y4;

    iget-object v1, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v1, Lmb/a7;

    iget-object v2, v1, Lmb/a7;->a:Ljava/util/EnumSet;

    sget-object v3, Lmb/c0;->m:Lmb/c0;

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v2, v0, Lmb/p0;

    if-nez v2, :cond_1

    instance-of v2, v0, Lmb/j2;

    if-nez v2, :cond_1

    instance-of v2, v0, Lmb/h5;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lhb/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " rvalue not allowed as a resource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lmb/m3;->a:Lhb/c;

    invoke-direct {p0, p1, v0}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    invoke-virtual {v1, v0}, Lmb/a7;->V(Lmb/y4;)Lmb/b0;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lmb/a7;->g(ZLmb/b0;)Lmb/g3;

    move-result-object p1

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Lmb/r5;

    iget-object v0, p1, Lmb/g3;->b:Lmb/b0;

    invoke-virtual {p1}, Lmb/g3;->a()S

    move-result v2

    invoke-virtual {v1, p0, v0, v2}, Lmb/a7;->b2(Lmb/k3;Lmb/b0;S)V

    return-object p1
.end method

.method public X(Lmb/a1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    iput-object p0, p1, Lmb/e5;->d:Ljava/util/Map;

    return-object p0
.end method

.method public Z(Lmb/r5;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v0, Lmb/a7;

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    iput-object p0, p1, Lmb/e5;->d:Ljava/util/Map;

    iget-object v1, p1, Lmb/r5;->f:Lmb/f1;

    invoke-virtual {v0, v1, p0}, Lmb/a7;->r(Lmb/f1;Ljava/util/Map;)Ljava/util/Map;

    iget-object v1, p1, Lmb/r5;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb/l1;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v4, v2, Lmb/l1;->c:Lmb/m1;

    invoke-virtual {v0, v4}, Lmb/a7;->M0(Lmb/m1;)Lmb/g3;

    move-result-object v4

    iget-object v5, v2, Lmb/l1;->c:Lmb/m1;

    iget-object v5, v5, Lmb/m1;->e:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v2, Lmb/l1;->d:Lmb/f1;

    invoke-virtual {v0, v2, v3}, Lmb/a7;->r(Lmb/f1;Ljava/util/Map;)Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lmb/r5;->h:Lmb/e1;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1, p0}, Lmb/a7;->s(Lmb/e1;Ljava/util/Map;)V

    :cond_1
    return-object p0
.end method

.method public a(Ljava/lang/reflect/Type;)Lb6/l;
    .locals 2

    iget-object v0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v0, Lt6/p;

    iget-object p0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast p0, Lt6/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p0}, Lt6/p;->b(Lg5/m;Ljava/lang/reflect/Type;Lt6/o;)Lb6/l;

    move-result-object p0

    return-object p0
.end method

.method public a0(Lmb/c2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    iput-object p0, p1, Lmb/e5;->d:Ljava/util/Map;

    return-object p0
.end method

.method public b(Lf8/l3;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v0, Lf8/r3;

    iget-object v0, v0, Lf8/r3;->h:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lg5/s;->p(Lf8/l3;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Lmb/g5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    iput-object p0, p1, Lmb/t1;->e:Ljava/util/Map;

    return-object p0
.end method

.method public d(Lmb/k2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    iput-object p0, p1, Lmb/e5;->d:Ljava/util/Map;

    return-object p0
.end method

.method public e()Lf8/a;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "newBuilderForField() called on a non-Message type."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public f(I)I
    .locals 3

    iget-object v0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    :cond_0
    iget-object v1, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v1, Lr2/c;

    invoke-virtual {v1, p1}, Lr2/c;->i(I)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public g(Lmb/o0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    iput-object p0, p1, Lmb/t1;->e:Ljava/util/Map;

    return-object p0
.end method

.method public g0(Lmb/w4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    iput-object p0, p1, Lmb/e5;->d:Ljava/util/Map;

    return-object p0
.end method

.method public h(Lmb/u2;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v0, Lmb/a7;

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    iget-object p1, p1, Lmb/u2;->e:Lmb/e1;

    invoke-virtual {v0, p1, p0}, Lmb/a7;->s(Lmb/e1;Ljava/util/Map;)V

    return-object p0
.end method

.method public i(Lmb/x1;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v0, Lmb/a7;

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    iput-object p0, p1, Lmb/e5;->d:Ljava/util/Map;

    iget-object p1, p1, Lmb/u1;->g:Lmb/f1;

    invoke-virtual {v0, p1, p0}, Lmb/a7;->r(Lmb/f1;Ljava/util/Map;)Ljava/util/Map;

    return-object p0
.end method

.method public j(I)I
    .locals 2

    :cond_0
    iget-object v0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v0, Lr2/c;

    invoke-virtual {v0, p1}, Lr2/c;->j(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_1
    return v0
.end method

.method public k(Lf8/l3;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "hasField() called on a repeated field."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public l(Lf8/y3;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "hasField() called on a repeated field."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public m(I)I
    .locals 1

    :cond_0
    iget-object v0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v0, Lr2/c;

    invoke-virtual {v0, p1}, Lr2/c;->j(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    return p1
.end method

.method public n(I)I
    .locals 2

    :cond_0
    iget-object v0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v0, Lr2/c;

    invoke-virtual {v0, p1}, Lr2/c;->i(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    return p1
.end method

.method public o(Lf8/y3;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast p0, Lf8/r3;

    iget-object p0, p0, Lf8/r3;->a:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public p(Lf8/l3;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast p0, Lf8/r3;

    iget-object p0, p0, Lf8/r3;->e:Ljava/lang/reflect/Method;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public q(Lf8/l3;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast p0, Lf8/r3;

    iget-object p0, p0, Lf8/r3;->b:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public r(Lmb/a3;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v0, Lmb/a7;

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    iput-object p0, p1, Lmb/e5;->d:Ljava/util/Map;

    iget-object p1, p1, Lmb/a3;->g:Lmb/e5;

    invoke-virtual {v0, p1, p0}, Lmb/a7;->r(Lmb/f1;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public s(Lmb/o2;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v0, Lmb/a7;

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    iget-object v1, p1, Lmb/o2;->h:Lmb/f1;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1, p0}, Lmb/a7;->r(Lmb/f1;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    iput-object v1, p1, Lmb/e5;->d:Ljava/util/Map;

    iget-object p1, p1, Lmb/u1;->g:Lmb/f1;

    invoke-virtual {v0, p1, v1}, Lmb/a7;->r(Lmb/f1;Ljava/util/Map;)Ljava/util/Map;

    return-object p0
.end method

.method public u(Lmb/k5;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v0, Lmb/a7;

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    iput-object p0, p1, Lmb/e5;->d:Ljava/util/Map;

    iget-object p1, p1, Lmb/k5;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v1, p0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb/j5;

    iget-object v2, v2, Lmb/j5;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmb/f1;

    invoke-virtual {v0, v3, v1}, Lmb/a7;->r(Lmb/f1;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public v(Lmb/h2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    iput-object p0, p1, Lmb/e5;->d:Ljava/util/Map;

    return-object p0
.end method

.method public v0(Lmb/n5;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    iput-object p0, p1, Lmb/e5;->d:Ljava/util/Map;

    return-object p0
.end method

.method public w(Lmb/o5;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v0, Lmb/a7;

    iget-object v1, p1, Lmb/o5;->d:Lmb/s5;

    invoke-virtual {v0, v1}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lmb/a7;->g(ZLmb/b0;)Lmb/g3;

    move-result-object v2

    iget-object p1, p1, Lmb/o5;->e:Lmb/z5;

    iget-object p1, p1, Lmb/z5;->e:Lmb/x0;

    invoke-virtual {v0, p1, v1}, Lmb/a7;->A(Lmb/x0;Lmb/b0;)V

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Lmb/r5;

    iget-object p1, v2, Lmb/g3;->b:Lmb/b0;

    invoke-virtual {v2}, Lmb/g3;->a()S

    move-result v1

    invoke-virtual {v0, p0, p1, v1}, Lmb/a7;->b2(Lmb/k3;Lmb/b0;S)V

    return-object v2
.end method

.method public x(Landroidx/fragment/app/l0;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/w0;

    iget-object v0, v0, Landroidx/fragment/app/w0;->o:Landroidx/fragment/app/l0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->getParentFragmentManager()Landroidx/fragment/app/w0;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/fragment/app/w0;->k:Lg5/s;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lg5/s;->x(Landroidx/fragment/app/l0;Z)V

    :cond_0
    iget-object p0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p2, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public y(Landroidx/fragment/app/l0;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/w0;

    iget-object v0, v0, Landroidx/fragment/app/w0;->o:Landroidx/fragment/app/l0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->getParentFragmentManager()Landroidx/fragment/app/w0;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/fragment/app/w0;->k:Lg5/s;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lg5/s;->y(Landroidx/fragment/app/l0;Z)V

    :cond_0
    iget-object p0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p2, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public y0(Lmb/f3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    iput-object p0, p1, Lmb/e5;->d:Ljava/util/Map;

    return-object p0
.end method

.method public z(Landroidx/fragment/app/l0;Z)V
    .locals 2

    const-string v0, "f"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/w0;

    iget-object v0, v0, Landroidx/fragment/app/w0;->o:Landroidx/fragment/app/l0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->getParentFragmentManager()Landroidx/fragment/app/w0;

    move-result-object v0

    const-string v1, "parent.getParentFragmentManager()"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/fragment/app/w0;->k:Lg5/s;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lg5/s;->z(Landroidx/fragment/app/l0;Z)V

    :cond_0
    iget-object p0, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    if-eqz p2, :cond_1

    throw p0

    :cond_1
    throw p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method
