.class public final Le3/m;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf2/y;Lf2/y0;Li9/e;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Le3/m;->l:I

    .line 1
    iput-object p1, p0, Le3/m;->m:Ljava/lang/Object;

    iput-object p2, p0, Le3/m;->n:Ljava/lang/Object;

    iput-object p3, p0, Le3/m;->o:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Li9/c;Lf1/r;Li9/c;I)V
    .locals 0

    const/4 p4, 0x0

    iput p4, p0, Le3/m;->l:I

    .line 2
    iput-object p1, p0, Le3/m;->m:Ljava/lang/Object;

    iput-object p2, p0, Le3/m;->o:Ljava/lang/Object;

    iput-object p3, p0, Le3/m;->n:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Li9/e;II)V
    .locals 0

    .line 3
    iput p5, p0, Le3/m;->l:I

    iput-object p1, p0, Le3/m;->m:Ljava/lang/Object;

    iput-object p2, p0, Le3/m;->n:Ljava/lang/Object;

    iput-object p3, p0, Le3/m;->o:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Le3/m;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p2, p0, Le3/m;->m:Ljava/lang/Object;

    check-cast p2, Li9/a;

    iget-object v0, p0, Le3/m;->n:Ljava/lang/Object;

    check-cast v0, Lf3/u;

    iget-object p0, p0, Le3/m;->o:Ljava/lang/Object;

    check-cast p0, Lz0/d;

    const/16 v1, 0x181

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {p2, v0, p0, p1, v1}, Lg5/f;->a(Li9/a;Lf3/u;Lz0/d;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p2, p0, Le3/m;->m:Ljava/lang/Object;

    check-cast p2, Le2/q1;

    iget-object v0, p0, Le3/m;->n:Ljava/lang/Object;

    check-cast v0, Lf2/y0;

    iget-object p0, p0, Le3/m;->o:Ljava/lang/Object;

    check-cast p0, Li9/e;

    const/4 v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {p2, v0, p0, p1, v1}, Lf2/l1;->a(Le2/q1;Lf2/y0;Li9/e;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/2addr p2, v3

    invoke-virtual {p1, p2, v0}, Lr0/q;->T(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Le3/m;->m:Ljava/lang/Object;

    check-cast p2, Lf2/y;

    iget-object v0, p0, Le3/m;->n:Ljava/lang/Object;

    check-cast v0, Lf2/y0;

    iget-object p0, p0, Le3/m;->o:Ljava/lang/Object;

    check-cast p0, Li9/e;

    invoke-static {p2, v0, p0, p1, v2}, Lf2/l1;->a(Le2/q1;Lf2/y0;Li9/e;Lr0/q;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p2, p0, Le3/m;->m:Ljava/lang/Object;

    check-cast p2, Li9/c;

    iget-object v0, p0, Le3/m;->o:Ljava/lang/Object;

    check-cast v0, Lf1/r;

    iget-object p0, p0, Le3/m;->n:Ljava/lang/Object;

    check-cast p0, Li9/c;

    const/16 v1, 0x31

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {p2, v0, p0, p1, v1}, Le3/l;->b(Li9/c;Lf1/r;Li9/c;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
