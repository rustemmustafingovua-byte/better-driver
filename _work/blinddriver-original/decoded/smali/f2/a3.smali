.class public final Lf2/a3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/t;


# instance fields
.field public final synthetic l:Lz9/d;

.field public final synthetic m:Lf2/x0;

.field public final synthetic n:Lr0/u1;

.field public final synthetic o:Lj9/y;

.field public final synthetic p:Landroid/view/View;


# direct methods
.method public constructor <init>(Lz9/d;Lf2/x0;Lr0/u1;Lj9/y;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/a3;->l:Lz9/d;

    iput-object p2, p0, Lf2/a3;->m:Lf2/x0;

    iput-object p3, p0, Lf2/a3;->n:Lr0/u1;

    iput-object p4, p0, Lf2/a3;->o:Lj9/y;

    iput-object p5, p0, Lf2/a3;->p:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final c(Landroidx/lifecycle/v;Landroidx/lifecycle/o;)V
    .locals 11

    sget-object v0, Lf2/x2;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_0
    iget-object p0, p0, Lf2/a3;->n:Lr0/u1;

    invoke-virtual {p0}, Lr0/u1;->x()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lf2/a3;->n:Lr0/u1;

    iget-object p1, p0, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput-boolean v1, p0, Lr0/u1;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1

    throw p0

    :pswitch_2
    iget-object p1, p0, Lf2/a3;->m:Lf2/x0;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p1, Lf2/x0;->n:Ljava/lang/Object;

    check-cast p1, Lk4/h;

    iget-object v2, p1, Lk4/h;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, p1, Lk4/h;->b:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-boolean v4, p1, Lk4/h;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_0

    :goto_0
    monitor-exit v2

    goto :goto_3

    :cond_0
    :try_start_4
    iget-object v3, p1, Lk4/h;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p1, Lk4/h;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p1, Lk4/h;->c:Ljava/lang/Object;

    iput-object v3, p1, Lk4/h;->d:Ljava/lang/Object;

    iput-boolean v1, p1, Lk4/h;->a:Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v1, p2

    :goto_1
    if-ge v1, p1, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly8/c;

    sget-object v5, Lt8/z;->a:Lt8/z;

    invoke-interface {v4, v5}, Ly8/c;->resumeWith(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p0, v0

    monitor-exit v3

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    monitor-exit v2

    throw p0

    :cond_2
    :goto_3
    iget-object p0, p0, Lf2/a3;->n:Lr0/u1;

    iget-object p1, p0, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_5
    iget-boolean v1, p0, Lr0/u1;->t:Z

    if-eqz v1, :cond_3

    iput-boolean p2, p0, Lr0/u1;->t:Z

    invoke-virtual {p0}, Lr0/u1;->y()Lu9/f;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_3
    :goto_4
    monitor-exit p1

    if-eqz v0, :cond_4

    sget-object p0, Lt8/z;->a:Lt8/z;

    check-cast v0, Lu9/g;

    invoke-virtual {v0, p0}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    :cond_4
    :pswitch_3
    return-void

    :goto_5
    monitor-exit p1

    throw p0

    :pswitch_4
    iget-object p2, p0, Lf2/a3;->l:Lz9/d;

    sget-object v2, Lu9/u;->o:Lu9/u;

    new-instance v3, Lf2/z2;

    iget-object v4, p0, Lf2/a3;->o:Lj9/y;

    iget-object v5, p0, Lf2/a3;->n:Lr0/u1;

    iget-object v8, p0, Lf2/a3;->p:Landroid/view/View;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v10}, Lf2/z2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {p2, v0, v2, v3, v1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
