.class public final Lp8/b;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lp8/d;Ljava/util/Map;ZLi9/e;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lp8/b;->l:I

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1
    iput-object p1, p0, Lp8/b;->n:Ljava/lang/Object;

    iput-object p2, p0, Lp8/b;->o:Ljava/lang/Object;

    iput-boolean p3, p0, Lp8/b;->m:Z

    iput-object p4, p0, Lp8/b;->p:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lx4/s;ZLjava/lang/String;Ly4/c0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lp8/b;->l:I

    .line 2
    iput-object p1, p0, Lp8/b;->n:Ljava/lang/Object;

    iput-boolean p2, p0, Lp8/b;->m:Z

    iput-object p3, p0, Lp8/b;->o:Ljava/lang/Object;

    iput-object p4, p0, Lp8/b;->p:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lp8/b;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    instance-of v0, p1, Ly4/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp8/b;->n:Ljava/lang/Object;

    check-cast v0, Lx4/s;

    check-cast p1, Ly4/t;

    iget p1, p1, Ly4/t;->l:I

    iget-object v0, v0, Lx4/s;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, -0x100

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    :cond_0
    iget-boolean p1, p0, Lp8/b;->m:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lp8/b;->o:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lp8/b;->p:Ljava/lang/Object;

    check-cast p0, Ly4/c0;

    iget-object v0, p0, Ly4/c0;->e:Lx4/a;

    iget-object v0, v0, Lx4/a;->m:Lx4/j;

    iget-object p0, p0, Ly4/c0;->a:Lg5/o;

    invoke-virtual {p0}, Lg5/o;->hashCode()I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lr5/h1;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    :cond_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    const-string p1, "it"

    invoke-static {v2, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lp8/b;->n:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lp8/d;

    iget-object p1, p0, Lp8/b;->o:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Ljava/util/Map;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-object p1, p0, Lp8/b;->p:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Li9/e;

    new-instance v0, Lp8/c;

    iget-boolean v4, p0, Lp8/b;->m:Z

    invoke-direct/range {v0 .. v5}, Lp8/c;-><init>(Lp8/d;Ljava/lang/String;Ljava/util/Map;ZLi9/e;)V

    invoke-interface {v5, v2, v0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
