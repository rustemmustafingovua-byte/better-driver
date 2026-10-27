.class public final Li1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Li1/c;


# instance fields
.field public final a:Li1/f;

.field public final b:Lk/f;

.field public final c:Li1/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Li1/f;

    invoke-direct {v0}, Lf1/q;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Li1/f;->B:J

    iput-object v0, p0, Li1/b;->a:Li1/f;

    new-instance v0, Lk/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk/f;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Li1/b;->b:Lk/f;

    new-instance v0, Li1/a;

    invoke-direct {v0, p0}, Li1/a;-><init>(Li1/b;)V

    iput-object v0, p0, Li1/b;->c:Li1/a;

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4

    new-instance p1, Lb0/l1;

    const/16 v0, 0x10

    invoke-direct {p1, v0, p2}, Lb0/l1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p2

    iget-object v0, p0, Li1/b;->b:Lk/f;

    const/4 v1, 0x0

    iget-object p0, p0, Li1/b;->a:Li1/f;

    packed-switch p2, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-virtual {p0, p1}, Li1/f;->O0(Lb0/l1;)V

    return v1

    :pswitch_1
    invoke-virtual {p0, p1}, Li1/f;->N0(Lb0/l1;)V

    return v1

    :pswitch_2
    new-instance p2, Landroidx/fragment/app/t;

    const/16 v2, 0xe

    invoke-direct {p2, v2, p1}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p0}, Landroidx/fragment/app/t;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Le2/d2;->l:Le2/d2;

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p2}, Le2/l;->B(Le2/e2;Li9/c;)V

    :goto_0
    invoke-virtual {v0}, Lk/f;->clear()V

    return v1

    :pswitch_3
    invoke-virtual {p0, p1}, Li1/f;->M0(Lb0/l1;)Z

    move-result p0

    return p0

    :pswitch_4
    invoke-virtual {p0, p1}, Li1/f;->P0(Lb0/l1;)V

    return v1

    :pswitch_5
    new-instance p2, Lj9/u;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    new-instance v1, Li1/e;

    invoke-direct {v1, p1, p0, p2}, Li1/e;-><init>(Lb0/l1;Li1/f;Lj9/u;)V

    invoke-virtual {v1, p0}, Li1/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Le2/d2;->l:Le2/d2;

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0, v1}, Le2/l;->B(Le2/e2;Li9/c;)V

    :goto_1
    iget-boolean p0, p2, Lj9/u;->l:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lk/a;

    invoke-direct {p2, v0}, Lk/a;-><init>(Lk/f;)V

    :goto_2
    invoke-virtual {p2}, Lk/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lk/a;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li1/f;

    invoke-virtual {v0, p1}, Li1/f;->Q0(Lb0/l1;)V

    goto :goto_2

    :cond_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
