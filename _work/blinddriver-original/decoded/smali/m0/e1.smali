.class public final synthetic Lm0/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lb3/c;

.field public final synthetic n:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lb3/c;Lr0/u0;I)V
    .locals 0

    iput p3, p0, Lm0/e1;->l:I

    iput-object p1, p0, Lm0/e1;->m:Lb3/c;

    iput-object p2, p0, Lm0/e1;->n:Lr0/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lm0/e1;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lb3/h;

    iget-wide v0, p1, Lb3/h;->a:J

    invoke-static {v0, v1}, Lb3/h;->b(J)F

    move-result v0

    iget-object v1, p0, Lm0/e1;->m:Lb3/c;

    invoke-interface {v1, v0}, Lb3/c;->h0(F)I

    move-result v0

    iget-wide v2, p1, Lb3/h;->a:J

    invoke-static {v2, v3}, Lb3/h;->a(J)F

    move-result p1

    invoke-interface {v1, p1}, Lb3/c;->h0(F)I

    move-result p1

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    new-instance p1, Lb3/l;

    invoke-direct {p1, v0, v1}, Lb3/l;-><init>(J)V

    iget-object p0, p0, Lm0/e1;->n:Lr0/u0;

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Li9/a;

    new-instance v0, Lm0/f1;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lm0/f1;-><init>(Li9/a;I)V

    new-instance p1, Lm0/e1;

    const/4 v1, 0x3

    iget-object v2, p0, Lm0/e1;->m:Lb3/c;

    iget-object p0, p0, Lm0/e1;->n:Lr0/u0;

    invoke-direct {p1, v2, p0, v1}, Lm0/e1;-><init>(Lb3/c;Lr0/u0;I)V

    invoke-static {v0, p1}, Lp/i1;->a(Li9/c;Li9/c;)Lf1/r;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lb3/h;

    iget-wide v0, p1, Lb3/h;->a:J

    invoke-static {v0, v1}, Lb3/h;->b(J)F

    move-result v0

    iget-object v1, p0, Lm0/e1;->m:Lb3/c;

    invoke-interface {v1, v0}, Lb3/c;->h0(F)I

    move-result v0

    iget-wide v2, p1, Lb3/h;->a:J

    invoke-static {v2, v3}, Lb3/h;->a(J)F

    move-result p1

    invoke-interface {v1, p1}, Lb3/c;->h0(F)I

    move-result p1

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    new-instance p1, Lb3/l;

    invoke-direct {p1, v0, v1}, Lb3/l;-><init>(J)V

    iget-object p0, p0, Lm0/e1;->n:Lr0/u0;

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    check-cast p1, Li9/a;

    new-instance v0, Lm0/f1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lm0/f1;-><init>(Li9/a;I)V

    new-instance p1, Lm0/e1;

    const/4 v1, 0x1

    iget-object v2, p0, Lm0/e1;->m:Lb3/c;

    iget-object p0, p0, Lm0/e1;->n:Lr0/u0;

    invoke-direct {p1, v2, p0, v1}, Lm0/e1;-><init>(Lb3/c;Lr0/u0;I)V

    invoke-static {v0, p1}, Lp/i1;->a(Li9/c;Li9/c;)Lf1/r;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
