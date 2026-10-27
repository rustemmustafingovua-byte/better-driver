.class public final synthetic Lod/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ltc/a;

.field public final synthetic n:Li9/a;

.field public final synthetic o:Lf1/r;


# direct methods
.method public synthetic constructor <init>(Ltc/a;Li9/a;Lf1/r;II)V
    .locals 0

    iput p5, p0, Lod/a;->l:I

    iput-object p1, p0, Lod/a;->m:Ltc/a;

    iput-object p2, p0, Lod/a;->n:Li9/a;

    iput-object p3, p0, Lod/a;->o:Lf1/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lod/a;->l:I

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    const/4 p2, 0x1

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object v0, p0, Lod/a;->m:Ltc/a;

    iget-object v1, p0, Lod/a;->n:Li9/a;

    iget-object p0, p0, Lod/a;->o:Lf1/r;

    invoke-static {v0, v1, p0, p1, p2}, Lod/f;->c(Ltc/a;Li9/a;Lf1/r;Lr0/q;I)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    const/4 p2, 0x1

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object v0, p0, Lod/a;->m:Ltc/a;

    iget-object v1, p0, Lod/a;->n:Li9/a;

    iget-object p0, p0, Lod/a;->o:Lf1/r;

    invoke-static {v0, v1, p0, p1, p2}, Lod/f;->d(Ltc/a;Li9/a;Lf1/r;Lr0/q;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
