.class public final Ly1/z;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ly1/a0;


# direct methods
.method public synthetic constructor <init>(Ly1/a0;I)V
    .locals 0

    iput p2, p0, Ly1/z;->l:I

    iput-object p1, p0, Ly1/z;->m:Ly1/a0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ly1/z;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/MotionEvent;

    iget-object p0, p0, Ly1/z;->m:Ly1/a0;

    iget-object p0, p0, Ly1/a0;->a:Le3/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Le3/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :cond_0
    const-string p0, "onTouchEvent"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    check-cast p1, Landroid/view/MotionEvent;

    iget-object p0, p0, Ly1/z;->m:Ly1/a0;

    iget-object p0, p0, Ly1/a0;->a:Le3/e;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Le3/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :cond_1
    const-string p0, "onTouchEvent"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
