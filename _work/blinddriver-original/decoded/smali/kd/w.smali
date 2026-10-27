.class public final Lkd/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lkd/x;


# direct methods
.method public synthetic constructor <init>(Lkd/x;I)V
    .locals 0

    iput p2, p0, Lkd/w;->a:I

    iput-object p1, p0, Lkd/w;->b:Lkd/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ly1/x;Ly8/c;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lkd/w;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkd/v;

    const/4 v1, 0x1

    iget-object p0, p0, Lkd/w;->b:Lkd/x;

    invoke-direct {v0, p0, v1}, Lkd/v;-><init>(Lkd/x;I)V

    invoke-static {p1, v0, p2}, Lr/i0;->f(Ly1/x;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    :goto_0
    return-object p0

    :pswitch_0
    new-instance v0, Lkd/v;

    const/4 v1, 0x0

    iget-object p0, p0, Lkd/w;->b:Lkd/x;

    invoke-direct {v0, p0, v1}, Lkd/v;-><init>(Lkd/x;I)V

    invoke-static {p1, v0, p2}, Lr/i0;->f(Ly1/x;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
