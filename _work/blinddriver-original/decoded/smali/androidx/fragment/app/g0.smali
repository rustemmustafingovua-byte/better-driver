.class public final Landroidx/fragment/app/g0;
.super Landroidx/fragment/app/j0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/fragment/app/y;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Lg/a;

.field public final synthetic d:Lf/b;

.field public final synthetic e:Landroidx/fragment/app/l0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/l0;Landroidx/fragment/app/y;Ljava/util/concurrent/atomic/AtomicReference;Lg/a;Lf/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/l0;

    iput-object p2, p0, Landroidx/fragment/app/g0;->a:Landroidx/fragment/app/y;

    iput-object p3, p0, Landroidx/fragment/app/g0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Landroidx/fragment/app/g0;->c:Lg/a;

    iput-object p5, p0, Landroidx/fragment/app/g0;->d:Lf/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    iget-object v0, p0, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/l0;

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->generateActivityResultKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/g0;->a:Landroidx/fragment/app/y;

    iget v3, v2, Landroidx/fragment/app/y;->a:I

    packed-switch v3, :pswitch_data_0

    iget-object v2, v2, Landroidx/fragment/app/y;->b:Ljava/lang/Object;

    check-cast v2, Lf/h;

    iget-object v3, v2, Lf/h;->c:Ljava/util/LinkedHashMap;

    const-string v4, "key"

    invoke-static {v1, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "contract"

    iget-object v5, p0, Landroidx/fragment/app/g0;->c:Lg/a;

    invoke-static {v5, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "callback"

    iget-object v6, p0, Landroidx/fragment/app/g0;->d:Lf/b;

    invoke-static {v6, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/q;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroidx/lifecycle/x;

    iget-object v8, v7, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/p;

    sget-object v9, Landroidx/lifecycle/p;->o:Landroidx/lifecycle/p;

    invoke-virtual {v8, v9}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-gez v8, :cond_1

    invoke-virtual {v2, v1}, Lf/h;->c(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/f;

    if-nez v0, :cond_0

    new-instance v0, Lf/f;

    invoke-direct {v0, v4}, Lf/f;-><init>(Landroidx/lifecycle/q;)V

    :cond_0
    new-instance v4, Lf/d;

    invoke-direct {v4, v2, v1, v6, v5}, Lf/d;-><init>(Lf/h;Ljava/lang/String;Lf/b;Lg/a;)V

    iget-object v2, v0, Lf/f;->a:Landroidx/lifecycle/q;

    invoke-virtual {v2, v4}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/u;)V

    iget-object v2, v0, Lf/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/fragment/app/c0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Landroidx/fragment/app/g0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "LifecycleOwner "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is attempting to register while current state is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/p;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". LifecycleOwners must call register before they are STARTED."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object p0, v2, Landroidx/fragment/app/y;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/l0;

    invoke-virtual {p0}, Landroidx/fragment/app/l0;->requireActivity()Landroidx/fragment/app/m0;

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
