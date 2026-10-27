.class public final Lo0/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:J

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lt8/e;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/Object;Lt8/e;I)V
    .locals 0

    iput p5, p0, Lo0/z;->l:I

    iput-wide p1, p0, Lo0/z;->m:J

    iput-object p3, p0, Lo0/z;->n:Ljava/lang/Object;

    iput-object p4, p0, Lo0/z;->o:Lt8/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lo0/z;->l:I

    packed-switch v0, :pswitch_data_0

    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    and-int/2addr p1, v1

    invoke-virtual {v5, p1, p2}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo0/z;->n:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lp2/m0;

    iget-object p1, p0, Lo0/z;->o:Lt8/e;

    move-object v4, p1

    check-cast v4, Li9/e;

    const/4 v6, 0x0

    iget-wide v1, p0, Lo0/z;->m:J

    invoke-static/range {v1 .. v6}, Lp0/y;->b(JLp2/m0;Li9/e;Lr0/q;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lr0/q;->W()V

    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    move-object v4, p1

    check-cast v4, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    and-int/2addr p1, v1

    invoke-virtual {v4, p1, p2}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v4, p1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo0/h5;

    iget-object v2, p1, Lo0/h5;->m:Lp2/m0;

    new-instance p1, Lo0/y;

    iget-object p2, p0, Lo0/z;->n:Ljava/lang/Object;

    check-cast p2, Lu/s0;

    iget-object v0, p0, Lo0/z;->o:Lt8/e;

    check-cast v0, Li9/f;

    invoke-direct {p1, p2, v0}, Lo0/y;-><init>(Lu/s0;Li9/f;)V

    const p2, 0x18e49c83

    invoke-static {p2, p1, v4}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v3

    const/16 v5, 0x180

    iget-wide v0, p0, Lo0/z;->m:J

    invoke-static/range {v0 .. v5}, Lp0/h;->a(JLp2/m0;Li9/e;Lr0/q;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Lr0/q;->W()V

    :goto_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
