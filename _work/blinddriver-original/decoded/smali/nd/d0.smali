.class public final synthetic Lnd/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lr0/u0;

.field public final synthetic n:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lr0/u0;Lr0/u0;I)V
    .locals 0

    iput p3, p0, Lnd/d0;->l:I

    iput-object p1, p0, Lnd/d0;->m:Lr0/u0;

    iput-object p2, p0, Lnd/d0;->n:Lr0/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lnd/d0;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toUpperCase(...)"

    invoke-static {p1, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-static {v0, p1}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnd/d0;->m:Lr0/u0;

    invoke-interface {v0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iget-object p0, p0, Lnd/d0;->n:Lr0/u0;

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lnd/d0;->m:Lr0/u0;

    invoke-interface {v0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iget-object p0, p0, Lnd/d0;->n:Lr0/u0;

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x7d0

    invoke-static {v0, p1}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnd/d0;->m:Lr0/u0;

    invoke-interface {v0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iget-object p0, p0, Lnd/d0;->n:Lr0/u0;

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    check-cast p1, Lc2/u;

    const-string v0, "it"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Lc2/u;->R(J)J

    move-result-wide v0

    new-instance v2, Ll1/b;

    invoke-direct {v2, v0, v1}, Ll1/b;-><init>(J)V

    iget-object v0, p0, Lnd/d0;->m:Lr0/u0;

    invoke-interface {v0, v2}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    invoke-interface {p1}, Lc2/u;->o()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lnd/d0;->n:Lr0/u0;

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
