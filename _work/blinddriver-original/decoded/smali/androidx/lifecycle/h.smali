.class public final Landroidx/lifecycle/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/t;


# instance fields
.field public final synthetic l:I

.field public final m:Ljava/lang/Object;

.field public final n:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/f;Landroidx/lifecycle/t;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/h;->l:I

    const-string v0, "defaultLifecycleObserver"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/h;->m:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Landroidx/lifecycle/h;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/q;Ln4/e;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/lifecycle/h;->l:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Landroidx/lifecycle/h;->m:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/h;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/u;)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Landroidx/lifecycle/h;->l:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Landroidx/lifecycle/h;->m:Ljava/lang/Object;

    .line 6
    sget-object v0, Landroidx/lifecycle/d;->c:Landroidx/lifecycle/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 7
    iget-object v1, v0, Landroidx/lifecycle/d;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/b;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/d;->a(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/b;

    move-result-object v1

    .line 9
    :goto_0
    iput-object v1, p0, Landroidx/lifecycle/h;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lb/a0;Lb/h0;Landroidx/lifecycle/q;)V
    .locals 0

    const/4 p2, 0x3

    iput p2, p0, Landroidx/lifecycle/h;->l:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Landroidx/lifecycle/h;->m:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/lifecycle/h;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Landroidx/lifecycle/v;Landroidx/lifecycle/o;)V
    .locals 3

    iget v0, p0, Landroidx/lifecycle/h;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Landroidx/lifecycle/h;->m:Ljava/lang/Object;

    check-cast p1, Lb/a0;

    sget-object v0, Lb/g0;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lh4/d;->e()V

    iget-object p1, p0, Landroidx/lifecycle/h;->n:Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/q;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/q;->b(Landroidx/lifecycle/u;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lb/a0;->g(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lb/a0;->g(Z)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/lifecycle/h;->n:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/b;

    iget-object v0, v0, Landroidx/lifecycle/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object p0, p0, Landroidx/lifecycle/h;->m:Ljava/lang/Object;

    invoke-static {v1, p1, p2, p0}, Landroidx/lifecycle/b;->a(Ljava/util/List;Landroidx/lifecycle/v;Landroidx/lifecycle/o;Ljava/lang/Object;)V

    sget-object v1, Landroidx/lifecycle/o;->ON_ANY:Landroidx/lifecycle/o;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, p0}, Landroidx/lifecycle/b;->a(Ljava/util/List;Landroidx/lifecycle/v;Landroidx/lifecycle/o;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    sget-object p1, Landroidx/lifecycle/o;->ON_START:Landroidx/lifecycle/o;

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Landroidx/lifecycle/h;->m:Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/q;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/q;->b(Landroidx/lifecycle/u;)V

    iget-object p0, p0, Landroidx/lifecycle/h;->n:Ljava/lang/Object;

    check-cast p0, Ln4/e;

    invoke-virtual {p0}, Ln4/e;->d()V

    :cond_3
    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/lifecycle/h;->m:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/f;

    sget-object v1, Landroidx/lifecycle/g;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ON_ANY must not been send by anybody"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :pswitch_5
    invoke-interface {v0, p1}, Landroidx/lifecycle/f;->d(Landroidx/lifecycle/v;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :pswitch_7
    invoke-interface {v0, p1}, Landroidx/lifecycle/f;->b(Landroidx/lifecycle/v;)V

    goto :goto_1

    :pswitch_8
    invoke-interface {v0, p1}, Landroidx/lifecycle/f;->e(Landroidx/lifecycle/v;)V

    goto :goto_1

    :pswitch_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iget-object p0, p0, Landroidx/lifecycle/h;->n:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/t;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1, p2}, Landroidx/lifecycle/t;->c(Landroidx/lifecycle/v;Landroidx/lifecycle/o;)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
