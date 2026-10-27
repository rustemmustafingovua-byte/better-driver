.class public final synthetic Lod/c7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lqd/q;

.field public final synthetic n:Lqd/n;

.field public final synthetic o:Lqd/e;

.field public final synthetic p:Lf1/r;

.field public final synthetic q:Li9/a;


# direct methods
.method public synthetic constructor <init>(Lqd/q;Lqd/n;Lqd/e;Lf1/r;Li9/a;II)V
    .locals 0

    iput p7, p0, Lod/c7;->l:I

    iput-object p1, p0, Lod/c7;->m:Lqd/q;

    iput-object p2, p0, Lod/c7;->n:Lqd/n;

    iput-object p3, p0, Lod/c7;->o:Lqd/e;

    iput-object p4, p0, Lod/c7;->p:Lf1/r;

    iput-object p5, p0, Lod/c7;->q:Li9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lod/c7;->l:I

    packed-switch v0, :pswitch_data_0

    move-object v6, p1

    check-cast v6, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x6c01

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v7

    iget-object v1, p0, Lod/c7;->m:Lqd/q;

    iget-object v2, p0, Lod/c7;->n:Lqd/n;

    iget-object v3, p0, Lod/c7;->o:Lqd/e;

    iget-object v4, p0, Lod/c7;->p:Lf1/r;

    iget-object v5, p0, Lod/c7;->q:Li9/a;

    invoke-static/range {v1 .. v7}, Lod/m;->B(Lqd/q;Lqd/n;Lqd/e;Lf1/r;Li9/a;Lr0/q;I)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x6c01

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v6

    iget-object v0, p0, Lod/c7;->m:Lqd/q;

    iget-object v1, p0, Lod/c7;->n:Lqd/n;

    iget-object v2, p0, Lod/c7;->o:Lqd/e;

    iget-object v3, p0, Lod/c7;->p:Lf1/r;

    iget-object v4, p0, Lod/c7;->q:Li9/a;

    invoke-static/range {v0 .. v6}, Lod/m;->B(Lqd/q;Lqd/n;Lqd/e;Lf1/r;Li9/a;Lr0/q;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
