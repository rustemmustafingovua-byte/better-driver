.class public final Lb4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/f0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lb4/e;->a:I

    iput-object p1, p0, Lb4/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lb4/e;->c:Ljava/lang/Object;

    iput-object p3, p0, Lb4/e;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Lb4/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lb4/e;->b:Ljava/lang/Object;

    check-cast v0, Lc1/d;

    iget-object v1, v0, Lc1/d;->m:Lk/m0;

    iget-object v2, p0, Lb4/e;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lk/m0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lb4/e;->d:Ljava/lang/Object;

    check-cast p0, Lc1/i;

    if-ne v1, p0, :cond_1

    iget-object v0, v0, Lc1/d;->l:Ljava/util/Map;

    invoke-virtual {p0}, Lc1/i;->c()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lb4/e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/v;

    invoke-interface {v0}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/q;

    move-result-object v0

    iget-object v1, p0, Lb4/e;->c:Ljava/lang/Object;

    check-cast v1, Lb4/d;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->b(Landroidx/lifecycle/u;)V

    iget-object p0, p0, Lb4/e;->d:Ljava/lang/Object;

    check-cast p0, Lj9/y;

    iget-object p0, p0, Lj9/y;->m:Ljava/lang/Object;

    check-cast p0, Lc/d;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lc/d;->a()V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
