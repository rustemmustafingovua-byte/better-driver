.class public final Landroidx/lifecycle/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/c1;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Landroidx/lifecycle/b1;

.field public final c:Landroid/os/Bundle;

.field public final d:Landroidx/lifecycle/q;

.field public final e:Ln4/e;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ln4/g;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Ln4/g;->getSavedStateRegistry()Ln4/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/w0;->e:Ln4/e;

    invoke-interface {p2}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/q;

    move-result-object p2

    iput-object p2, p0, Landroidx/lifecycle/w0;->d:Landroidx/lifecycle/q;

    iput-object p3, p0, Landroidx/lifecycle/w0;->c:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/lifecycle/w0;->a:Landroid/app/Application;

    if-eqz p1, :cond_1

    sget-object p2, Landroidx/lifecycle/b1;->c:Landroidx/lifecycle/b1;

    if-nez p2, :cond_0

    new-instance p2, Landroidx/lifecycle/b1;

    invoke-direct {p2, p1}, Landroidx/lifecycle/b1;-><init>(Landroid/app/Application;)V

    sput-object p2, Landroidx/lifecycle/b1;->c:Landroidx/lifecycle/b1;

    :cond_0
    sget-object p1, Landroidx/lifecycle/b1;->c:Landroidx/lifecycle/b1;

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/lifecycle/b1;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/lifecycle/b1;-><init>(Landroid/app/Application;)V

    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/w0;->b:Landroidx/lifecycle/b1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/lifecycle/z0;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/w0;->d(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/z0;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Lj9/f;Ld4/c;)Landroidx/lifecycle/z0;
    .locals 0

    invoke-static {p1}, Ly4/s;->p(Lj9/f;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/w0;->c(Ljava/lang/Class;Ld4/c;)Landroidx/lifecycle/z0;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/Class;Ld4/c;)Landroidx/lifecycle/z0;
    .locals 3

    iget-object v0, p2, Ld4/b;->a:Ljava/util/LinkedHashMap;

    sget-object v1, Landroidx/lifecycle/e1;->b:Ld7/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    sget-object v2, Landroidx/lifecycle/t0;->a:Ld7/g;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v2, Landroidx/lifecycle/t0;->b:Ld7/g;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v1, Landroidx/lifecycle/b1;->d:Ld7/g;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-class v1, Landroidx/lifecycle/a;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v2, Landroidx/lifecycle/x0;->a:Ljava/util/List;

    invoke-static {p1, v2}, Landroidx/lifecycle/x0;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/lifecycle/x0;->b:Ljava/util/List;

    invoke-static {p1, v2}, Landroidx/lifecycle/x0;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    iget-object p0, p0, Landroidx/lifecycle/w0;->b:Landroidx/lifecycle/b1;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/b1;->c(Ljava/lang/Class;Ld4/c;)Landroidx/lifecycle/z0;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroidx/lifecycle/t0;->c(Ld4/c;)Landroidx/lifecycle/q0;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, p0}, Landroidx/lifecycle/x0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/z0;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p2}, Landroidx/lifecycle/t0;->c(Ld4/c;)Landroidx/lifecycle/q0;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, p0}, Landroidx/lifecycle/x0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/z0;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p2, p0, Landroidx/lifecycle/w0;->d:Landroidx/lifecycle/q;

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1, v1}, Landroidx/lifecycle/w0;->d(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/z0;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/z0;
    .locals 7

    iget-object v0, p0, Landroidx/lifecycle/w0;->d:Landroidx/lifecycle/q;

    if-eqz v0, :cond_7

    const-class v1, Landroidx/lifecycle/a;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    iget-object v2, p0, Landroidx/lifecycle/w0;->a:Landroid/app/Application;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    sget-object v3, Landroidx/lifecycle/x0;->a:Ljava/util/List;

    invoke-static {p1, v3}, Landroidx/lifecycle/x0;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    goto :goto_0

    :cond_0
    sget-object v3, Landroidx/lifecycle/x0;->b:Ljava/util/List;

    invoke-static {p1, v3}, Landroidx/lifecycle/x0;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_3

    if-eqz v2, :cond_1

    iget-object p0, p0, Landroidx/lifecycle/w0;->b:Landroidx/lifecycle/b1;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/b1;->a(Ljava/lang/Class;)Landroidx/lifecycle/z0;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Landroidx/lifecycle/d1;->a:Landroidx/lifecycle/d1;

    if-nez p0, :cond_2

    new-instance p0, Landroidx/lifecycle/d1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Landroidx/lifecycle/d1;->a:Landroidx/lifecycle/d1;

    :cond_2
    sget-object p0, Landroidx/lifecycle/d1;->a:Landroidx/lifecycle/d1;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-static {p1}, Lg6/c1;->l(Ljava/lang/Class;)Landroidx/lifecycle/z0;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v4, p0, Landroidx/lifecycle/w0;->e:Ln4/e;

    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/lifecycle/w0;->c:Landroid/os/Bundle;

    invoke-virtual {v4, p2}, Ln4/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5, p0}, Landroidx/lifecycle/t0;->b(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/q0;

    move-result-object p0

    new-instance v5, Landroidx/lifecycle/r0;

    invoke-direct {v5, p2, p0}, Landroidx/lifecycle/r0;-><init>(Ljava/lang/String;Landroidx/lifecycle/q0;)V

    invoke-virtual {v5, v0, v4}, Landroidx/lifecycle/r0;->k(Landroidx/lifecycle/q;Ln4/e;)V

    move-object p2, v0

    check-cast p2, Landroidx/lifecycle/x;

    iget-object p2, p2, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/p;

    sget-object v6, Landroidx/lifecycle/p;->m:Landroidx/lifecycle/p;

    if-eq p2, v6, :cond_5

    sget-object v6, Landroidx/lifecycle/p;->o:Landroidx/lifecycle/p;

    invoke-virtual {p2, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-ltz p2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p2, Landroidx/lifecycle/h;

    invoke-direct {p2, v0, v4}, Landroidx/lifecycle/h;-><init>(Landroidx/lifecycle/q;Ln4/e;)V

    invoke-virtual {v0, p2}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/u;)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {v4}, Ln4/e;->d()V

    :goto_2
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, p0}, Landroidx/lifecycle/x0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/z0;

    move-result-object p0

    goto :goto_3

    :cond_6
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, p0}, Landroidx/lifecycle/x0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/z0;

    move-result-object p0

    :goto_3
    const-string p1, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {p0, p1, v5}, Landroidx/lifecycle/z0;->a(Ljava/lang/String;Ljava/lang/AutoCloseable;)V

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
