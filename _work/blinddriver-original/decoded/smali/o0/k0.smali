.class public final synthetic Lo0/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z

.field public final synthetic n:Li9/c;

.field public final synthetic o:Lf1/r;

.field public final synthetic p:Z

.field public final synthetic q:I

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ZLi9/c;Lf1/r;ZLjava/lang/Object;II)V
    .locals 0

    iput p7, p0, Lo0/k0;->l:I

    iput-boolean p1, p0, Lo0/k0;->m:Z

    iput-object p2, p0, Lo0/k0;->n:Li9/c;

    iput-object p3, p0, Lo0/k0;->o:Lf1/r;

    iput-boolean p4, p0, Lo0/k0;->p:Z

    iput-object p5, p0, Lo0/k0;->r:Ljava/lang/Object;

    iput p6, p0, Lo0/k0;->q:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lo0/k0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lo0/k0;->r:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lo0/u4;

    move-object v6, p1

    check-cast v6, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lo0/k0;->q:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v7

    iget-boolean v1, p0, Lo0/k0;->m:Z

    iget-object v2, p0, Lo0/k0;->n:Li9/c;

    iget-object v3, p0, Lo0/k0;->o:Lf1/r;

    iget-boolean v4, p0, Lo0/k0;->p:Z

    invoke-static/range {v1 .. v7}, Lo0/w4;->a(ZLi9/c;Lf1/r;ZLo0/u4;Lr0/q;I)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lo0/k0;->r:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lo0/f0;

    move-object v6, p1

    check-cast v6, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lo0/k0;->q:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v7

    iget-boolean v1, p0, Lo0/k0;->m:Z

    iget-object v2, p0, Lo0/k0;->n:Li9/c;

    iget-object v3, p0, Lo0/k0;->o:Lf1/r;

    iget-boolean v4, p0, Lo0/k0;->p:Z

    invoke-static/range {v1 .. v7}, Lo0/l0;->a(ZLi9/c;Lf1/r;ZLo0/f0;Lr0/q;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
