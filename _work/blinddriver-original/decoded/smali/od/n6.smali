.class public final synthetic Lod/n6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:J


# direct methods
.method public synthetic constructor <init>(IIJ)V
    .locals 0

    iput p2, p0, Lod/n6;->l:I

    iput-wide p3, p0, Lod/n6;->m:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lod/n6;->l:I

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    const/4 p2, 0x1

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-wide v0, p0, Lod/n6;->m:J

    invoke-static {v0, v1, p1, p2}, Lod/m;->f(JLr0/q;I)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    const/4 p2, 0x7

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-wide v0, p0, Lod/n6;->m:J

    invoke-static {v0, v1, p1, p2}, Lod/v6;->q(JLr0/q;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
