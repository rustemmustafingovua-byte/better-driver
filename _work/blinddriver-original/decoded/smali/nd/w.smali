.class public final synthetic Lnd/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z

.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZIII)V
    .locals 0

    iput p5, p0, Lnd/w;->l:I

    iput-object p1, p0, Lnd/w;->p:Ljava/lang/Object;

    iput-boolean p2, p0, Lnd/w;->m:Z

    iput p3, p0, Lnd/w;->n:I

    iput p4, p0, Lnd/w;->o:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lnd/w;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lnd/w;->p:Ljava/lang/Object;

    check-cast v0, Lua/nav/routing/i;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Lnd/w;->n:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-boolean v1, p0, Lnd/w;->m:Z

    iget p0, p0, Lnd/w;->o:I

    invoke-static {v0, v1, p1, p2, p0}, Lod/v6;->t(Lua/nav/routing/i;ZLr0/q;II)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lnd/w;->p:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Lnd/w;->n:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-boolean v1, p0, Lnd/w;->m:Z

    iget p0, p0, Lnd/w;->o:I

    invoke-static {v0, v1, p1, p2, p0}, Lnd/h0;->h(Ljava/lang/String;ZLr0/q;II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
