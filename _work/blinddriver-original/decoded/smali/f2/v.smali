.class public final Lf2/v;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lf2/y;


# direct methods
.method public synthetic constructor <init>(Lf2/y;I)V
    .locals 0

    iput p2, p0, Lf2/v;->l:I

    iput-object p1, p0, Lf2/v;->m:Lf2/y;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lf2/v;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lf2/v;->m:Lf2/y;

    invoke-static {p0}, Lf2/y;->i(Lf2/y;)Lf2/n;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lf2/v;->m:Lf2/y;

    iget-object v0, p0, Lf2/y;->F0:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lf2/y;->G0:J

    iget-object v0, p0, Lf2/y;->L0:Ldd/j0;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
