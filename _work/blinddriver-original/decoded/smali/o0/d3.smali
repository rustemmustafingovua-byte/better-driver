.class public final synthetic Lo0/d3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lc2/t0;

.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lc2/f1;Lc2/q0;Lc2/t0;IILu/m;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lo0/d3;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/d3;->p:Ljava/lang/Object;

    iput-object p2, p0, Lo0/d3;->q:Ljava/lang/Object;

    iput-object p3, p0, Lo0/d3;->m:Lc2/t0;

    iput p4, p0, Lo0/d3;->n:I

    iput p5, p0, Lo0/d3;->o:I

    iput-object p6, p0, Lo0/d3;->r:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;Lc2/t0;Lo0/f3;ILjava/util/ArrayList;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lo0/d3;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/d3;->p:Ljava/lang/Object;

    iput-object p2, p0, Lo0/d3;->m:Lc2/t0;

    iput-object p3, p0, Lo0/d3;->r:Ljava/lang/Object;

    iput p4, p0, Lo0/d3;->n:I

    iput-object p5, p0, Lo0/d3;->q:Ljava/lang/Object;

    iput p6, p0, Lo0/d3;->o:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lo0/d3;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lo0/d3;->p:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lc2/f1;

    iget-object v0, p0, Lo0/d3;->q:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lc2/q0;

    iget-object v0, p0, Lo0/d3;->r:Ljava/lang/Object;

    check-cast v0, Lu/m;

    move-object v1, p1

    check-cast v1, Lc2/e1;

    iget-object p1, p0, Lo0/d3;->m:Lc2/t0;

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v4

    iget-object v7, v0, Lu/m;->a:Lf1/j;

    iget v5, p0, Lo0/d3;->n:I

    iget v6, p0, Lo0/d3;->o:I

    invoke-static/range {v1 .. v7}, Lu/l;->b(Lc2/e1;Lc2/f1;Lc2/q0;Lb3/m;IILf1/j;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lo0/d3;->p:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo0/d3;->r:Ljava/lang/Object;

    check-cast v1, Lo0/f3;

    iget-object v2, p0, Lo0/d3;->q:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    check-cast p1, Lc2/e1;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget v6, p0, Lo0/d3;->o:I

    if-ge v5, v3, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc2/f1;

    iget v8, v7, Lc2/f1;->m:I

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    invoke-static {p1, v7, v4, v6}, Lc2/e1;->j(Lc2/e1;Lc2/f1;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    sget v0, Lo0/h3;->c:F

    iget-object v3, p0, Lo0/d3;->m:Lc2/t0;

    invoke-interface {v3, v0}, Lb3/c;->h0(F)I

    move-result v0

    sget v5, Lo0/m3;->a:F

    invoke-interface {v3, v5}, Lb3/c;->h0(F)I

    move-result v3

    add-int/2addr v3, v0

    iget-object v0, v1, Lo0/f3;->c:Ln/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ln/c;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    iget p0, p0, Lo0/d3;->n:I

    :goto_1
    add-int/2addr v3, p0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_2
    if-ge v4, p0, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc2/f1;

    iget v1, v0, Lc2/f1;->m:I

    sub-int v1, v6, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {p1, v0, v3, v1}, Lc2/e1;->j(Lc2/e1;Lc2/f1;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
