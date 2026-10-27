.class public final synthetic Lo0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lz0/d;


# direct methods
.method public synthetic constructor <init>(Lz0/d;II)V
    .locals 0

    iput p3, p0, Lo0/d;->l:I

    packed-switch p3, :pswitch_data_0

    sget p2, Lo0/j;->a:F

    sget p2, Lo0/j;->a:F

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/d;->m:Lz0/d;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lo0/d;->l:I

    sget-object v1, Lt8/z;->a:Lt8/z;

    iget-object p0, p0, Lo0/d;->m:Lz0/d;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x7

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    invoke-static {p0, p1, p2}, Lx/l;->c(Lz0/d;Lr0/q;I)V

    return-object v1

    :pswitch_0
    sget v0, Lo0/j;->a:F

    sget v0, Lo0/j;->a:F

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p2, 0x1b7

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    invoke-static {p0, p1, p2}, Lo0/j;->b(Lz0/d;Lr0/q;I)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
