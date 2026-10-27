.class public final Lb0/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lb0/b1;->l:I

    iput-object p2, p0, Lb0/b1;->m:Ljava/lang/Object;

    iput-object p3, p0, Lb0/b1;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lk1/l;Lb0/r1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lb0/b1;->l:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/b1;->n:Ljava/lang/Object;

    iput-object p2, p0, Lb0/b1;->m:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lb0/b1;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lb0/b1;->m:Ljava/lang/Object;

    check-cast p1, Lk4/h;

    iget-object v1, p1, Lk4/h;->b:Ljava/lang/Object;

    iget-object p0, p0, Lb0/b1;->n:Ljava/lang/Object;

    check-cast p0, Lu9/g;

    monitor-enter v1

    :try_start_0
    iget-object p1, p1, Lk4/h;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0

    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lb0/b1;->m:Ljava/lang/Object;

    check-cast v0, Ln/p1;

    iget-object p0, p0, Lb0/b1;->n:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln/p1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lb0/b1;->m:Ljava/lang/Object;

    check-cast v0, Led/g;

    iget-object p0, p0, Lb0/b1;->n:Ljava/lang/Object;

    check-cast p0, Lr0/u0;

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-virtual {v0}, Led/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<this>"

    invoke-static {p1, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lu8/v;->J(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-virtual {v0}, Led/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ll7/a;->t(Ljava/util/Set;Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v1

    :goto_0
    invoke-interface {p0, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lb0/b1;->m:Ljava/lang/Object;

    check-cast v0, Lod/u;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lb0/b1;->n:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lod/u;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    move-object v3, p1

    check-cast v3, Ld1/m;

    sget-object p1, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    sget-wide v1, Ld1/p;->e:J

    const/4 v0, 0x1

    int-to-long v4, v0

    add-long/2addr v4, v1

    sput-wide v4, Ld1/p;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    iget-object p1, p0, Lb0/b1;->m:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Li9/c;

    iget-object p0, p0, Lb0/b1;->n:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Li9/c;

    new-instance v0, Ld1/c;

    invoke-direct/range {v0 .. v5}, Ld1/c;-><init>(JLd1/m;Li9/c;Li9/c;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit p1

    throw p0

    :pswitch_4
    check-cast p1, Lw1/b;

    iget-object p1, p1, Lw1/b;->a:Landroid/view/KeyEvent;

    iget-object v0, p0, Lb0/b1;->n:Ljava/lang/Object;

    check-cast v0, Lk1/l;

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0x201

    invoke-virtual {v1, v3}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v1

    const v3, 0x2000001

    if-eq v1, v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lw1/c;->c(Landroid/view/KeyEvent;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v1

    const/16 v3, 0x101

    if-ne v1, v3, :cond_4

    goto :goto_1

    :cond_4
    const/16 v1, 0x13

    invoke-static {v1, p1}, Lb0/n1;->m(ILandroid/view/KeyEvent;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    const/4 p0, 0x5

    check-cast v0, Lk1/o;

    invoke-virtual {v0, p0, v3}, Lk1/o;->g(IZ)Z

    move-result v2

    goto :goto_1

    :cond_5
    const/16 v1, 0x14

    invoke-static {v1, p1}, Lb0/n1;->m(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p0, 0x6

    check-cast v0, Lk1/o;

    invoke-virtual {v0, p0, v3}, Lk1/o;->g(IZ)Z

    move-result v2

    goto :goto_1

    :cond_6
    const/16 v1, 0x15

    invoke-static {v1, p1}, Lb0/n1;->m(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 p0, 0x3

    check-cast v0, Lk1/o;

    invoke-virtual {v0, p0, v3}, Lk1/o;->g(IZ)Z

    move-result v2

    goto :goto_1

    :cond_7
    const/16 v1, 0x16

    invoke-static {v1, p1}, Lb0/n1;->m(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 p0, 0x4

    check-cast v0, Lk1/o;

    invoke-virtual {v0, p0, v3}, Lk1/o;->g(IZ)Z

    move-result v2

    goto :goto_1

    :cond_8
    const/16 v0, 0x17

    invoke-static {v0, p1}, Lb0/n1;->m(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p0, p0, Lb0/b1;->m:Ljava/lang/Object;

    check-cast p0, Lb0/r1;

    iget-object p0, p0, Lb0/r1;->c:Lf2/k2;

    if-eqz p0, :cond_9

    check-cast p0, Lf2/n1;

    invoke-virtual {p0}, Lf2/n1;->b()V

    :cond_9
    move v2, v3

    :cond_a
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lw1/b;

    iget-object p1, p1, Lw1/b;->a:Landroid/view/KeyEvent;

    iget-object v0, p0, Lb0/b1;->m:Ljava/lang/Object;

    check-cast v0, Lb0/r1;

    invoke-virtual {v0}, Lb0/r1;->a()Lb0/e1;

    move-result-object v0

    sget-object v1, Lb0/e1;->m:Lb0/e1;

    if-ne v0, v1, :cond_b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    invoke-static {p1}, Lw1/c;->c(Landroid/view/KeyEvent;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    iget-object p0, p0, Lb0/b1;->n:Ljava/lang/Object;

    check-cast p0, Lm0/v1;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lm0/v1;->g(Ll1/b;)V

    goto :goto_2

    :cond_b
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
