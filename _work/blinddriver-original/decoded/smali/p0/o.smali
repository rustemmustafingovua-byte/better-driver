.class public final synthetic Lp0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:J

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(JLp2/m0;Li9/e;II)V
    .locals 0

    .line 1
    iput p6, p0, Lp0/o;->l:I

    iput-wide p1, p0, Lp0/o;->m:J

    iput-object p3, p0, Lp0/o;->n:Ljava/lang/Object;

    iput-object p4, p0, Lp0/o;->o:Ljava/lang/Object;

    iput p5, p0, Lp0/o;->p:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lq1/b;Lf1/r;JI)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lp0/o;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp0/o;->n:Ljava/lang/Object;

    iput-object p2, p0, Lp0/o;->o:Ljava/lang/Object;

    iput-wide p3, p0, Lp0/o;->m:J

    iput p5, p0, Lp0/o;->p:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lp0/o;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lp0/o;->n:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lq1/b;

    iget-object v0, p0, Lp0/o;->o:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lf1/r;

    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lp0/o;->p:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v6

    iget-wide v3, p0, Lp0/o;->m:J

    invoke-static/range {v1 .. v6}, Lo0/k1;->a(Lq1/b;Lf1/r;JLr0/q;I)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lp0/o;->n:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lp2/m0;

    iget-object v0, p0, Lp0/o;->o:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Li9/e;

    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lp0/o;->p:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v6

    iget-wide v1, p0, Lp0/o;->m:J

    invoke-static/range {v1 .. v6}, Lp0/y;->b(JLp2/m0;Li9/e;Lr0/q;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lp0/o;->n:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lp2/m0;

    iget-object v0, p0, Lp0/o;->o:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Li9/e;

    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lp0/o;->p:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v6

    iget-wide v1, p0, Lp0/o;->m:J

    invoke-static/range {v1 .. v6}, Lp0/h;->a(JLp2/m0;Li9/e;Lr0/q;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
