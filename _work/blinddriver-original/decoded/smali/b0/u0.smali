.class public final Lb0/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/f0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lb0/u0;->a:I

    iput-object p2, p0, Lb0/u0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lb0/u0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lb0/u0;->b:Ljava/lang/Object;

    check-cast p0, Lx/a0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx/a0;->f:Z

    return-void

    :pswitch_0
    iget-object p0, p0, Lb0/u0;->b:Ljava/lang/Object;

    check-cast p0, Lx/f0;

    iget-object v0, p0, Lx/f0;->c:Lk4/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lk4/h;->a:Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lx/f0;->c:Lk4/h;

    return-void

    :pswitch_1
    iget-object p0, p0, Lb0/u0;->b:Ljava/lang/Object;

    check-cast p0, Lx/t;

    const/4 v0, 0x0

    iput-object v0, p0, Lx/t;->d:Lz0/d;

    return-void

    :pswitch_2
    iget-object p0, p0, Lb0/u0;->b:Ljava/lang/Object;

    check-cast p0, Lm0/b1;

    invoke-virtual {p0}, Lm0/b1;->i()V

    iget-object p0, p0, Lm0/b1;->i:Lr0/e1;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lb0/u0;->b:Ljava/lang/Object;

    check-cast p0, Li0/c;

    iget-object p0, p0, Li0/c;->c:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li0/b;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Li0/b;->close()V

    :cond_1
    return-void

    :pswitch_4
    iget-object p0, p0, Lb0/u0;->b:Ljava/lang/Object;

    check-cast p0, Lg0/g;

    iget-object v0, p0, Lg0/g;->e:Ld1/b0;

    iget-object v1, v0, Ld1/b0;->h:Lb/e0;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lb/e0;->c()V

    :cond_2
    invoke-virtual {v0}, Ld1/b0;->a()V

    iget-object v0, p0, Lg0/g;->h:Landroid/view/ActionMode;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lg0/g;->h:Landroid/view/ActionMode;

    return-void

    :pswitch_5
    iget-object p0, p0, Lb0/u0;->b:Ljava/lang/Object;

    check-cast p0, Lf3/x;

    iget-object v0, p0, Lf2/a;->n:Lf2/g3;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lf2/g3;->a()V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lf2/a;->n:Lf2/g3;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-static {p0, v0}, Landroidx/lifecycle/t0;->i(Landroid/view/View;Landroidx/lifecycle/v;)V

    iget-object v0, p0, Lf3/x;->z:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lb0/u0;->b:Ljava/lang/Object;

    check-cast p0, Lf3/v;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object p0, p0, Lf3/v;->s:Lf3/t;

    iget-object v0, p0, Lf2/a;->n:Lf2/g3;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lf2/g3;->a()V

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lf2/a;->n:Lf2/g3;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_7
    iget-object p0, p0, Lb0/u0;->b:Ljava/lang/Object;

    check-cast p0, Lf2/o1;

    iget-object p0, p0, Lf2/o1;->m:Lf2/p1;

    invoke-virtual {p0}, Lf2/p1;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_8
    iget-object p0, p0, Lb0/u0;->b:Ljava/lang/Object;

    check-cast p0, Lc/a;

    iget-object p0, p0, Lc/a;->a:Lf/g;

    if-eqz p0, :cond_6

    iget-object v0, p0, Lf/g;->a:Lf/h;

    iget-object p0, p0, Lf/g;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lf/h;->d(Ljava/lang/String;)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Launcher has not been initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_9
    iget-object p0, p0, Lb0/u0;->b:Ljava/lang/Object;

    check-cast p0, Lm0/v1;

    invoke-virtual {p0}, Lm0/v1;->o()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
