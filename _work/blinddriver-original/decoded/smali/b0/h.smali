.class public final synthetic Lb0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, Lb0/h;->l:I

    iput-object p3, p0, Lb0/h;->n:Ljava/lang/Object;

    iput-object p4, p0, Lb0/h;->o:Ljava/lang/Object;

    iput p1, p0, Lb0/h;->m:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lb0/h;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lb0/h;->n:Ljava/lang/Object;

    check-cast v0, Lz0/d;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    iget p2, p0, Lb0/h;->m:I

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    or-int/lit8 p2, p2, 0x1

    iget-object p0, p0, Lb0/h;->o:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, p2}, Lz0/d;->h(Ljava/lang/Object;Lr0/q;I)Ljava/lang/Object;

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lb0/h;->n:Ljava/lang/Object;

    check-cast v0, [Lj6/g0;

    iget-object v1, p0, Lb0/h;->o:Ljava/lang/Object;

    check-cast v1, Li9/e;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    iget p0, p0, Lb0/h;->m:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lr0/r;->H(I)I

    move-result p0

    invoke-static {v0, v1, p1, p0}, Lr0/r;->b([Lj6/g0;Li9/e;Lr0/q;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lb0/h;->n:Ljava/lang/Object;

    check-cast v0, Lj6/g0;

    iget-object v1, p0, Lb0/h;->o:Ljava/lang/Object;

    check-cast v1, Li9/e;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    iget p0, p0, Lb0/h;->m:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lr0/r;->H(I)I

    move-result p0

    invoke-static {v0, v1, p1, p0}, Lr0/r;->a(Lj6/g0;Li9/e;Lr0/q;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lb0/h;->n:Ljava/lang/Object;

    check-cast v0, Lf1/r;

    iget-object v1, p0, Lb0/h;->o:Ljava/lang/Object;

    check-cast v1, Li9/c;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lb0/h;->m:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lr0/r;->H(I)I

    move-result p0

    invoke-static {p0, v0, v1, p1}, Lp/o;->b(ILf1/r;Li9/c;Lr0/q;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lb0/h;->n:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lb0/h;->o:Ljava/lang/Object;

    check-cast v1, Lz0/d;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lb0/h;->m:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lr0/r;->H(I)I

    move-result p0

    invoke-static {v0, v1, p1, p0}, Lod/v6;->B(Ljava/lang/String;Lz0/d;Lr0/q;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lb0/h;->n:Ljava/lang/Object;

    check-cast v0, Lp2/m0;

    iget-object v1, p0, Lb0/h;->o:Ljava/lang/Object;

    check-cast v1, Lz0/d;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lb0/h;->m:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lr0/r;->H(I)I

    move-result p0

    invoke-static {v0, v1, p1, p0}, Lo0/d5;->a(Lp2/m0;Lz0/d;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lb0/h;->n:Ljava/lang/Object;

    check-cast v0, Ln/h1;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    iget p2, p0, Lb0/h;->m:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object p0, p0, Lb0/h;->o:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, p2}, Ln/h1;->a(Ljava/lang/Object;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lb0/h;->n:Ljava/lang/Object;

    check-cast v0, Lp2/g;

    iget-object v1, p0, Lb0/h;->o:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    iget p0, p0, Lb0/h;->m:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lr0/r;->H(I)I

    move-result p0

    invoke-static {v0, v1, p1, p0}, Lb0/k;->a(Lp2/g;Ljava/util/List;Lr0/q;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
