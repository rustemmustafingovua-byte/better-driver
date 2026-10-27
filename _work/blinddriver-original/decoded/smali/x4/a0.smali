.class public final Lx4/a0;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Landroidx/work/Worker;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/Worker;I)V
    .locals 0

    iput p2, p0, Lx4/a0;->l:I

    iput-object p1, p0, Lx4/a0;->m:Landroidx/work/Worker;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lx4/a0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lx4/a0;->m:Landroidx/work/Worker;

    invoke-virtual {p0}, Landroidx/work/Worker;->c()Lx4/q;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lx4/a0;->m:Landroidx/work/Worker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Expedited WorkRequests require a Worker to provide an implementation for `getForegroundInfo()`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
