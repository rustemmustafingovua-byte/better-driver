.class public final Lc2/m1;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lf1/r;

.field public final synthetic n:Lt8/e;

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(Lf1/r;Li9/e;II)V
    .locals 0

    .line 1
    iput p4, p0, Lc2/m1;->l:I

    iput-object p1, p0, Lc2/m1;->m:Lf1/r;

    iput-object p2, p0, Lc2/m1;->n:Lt8/e;

    iput p3, p0, Lc2/m1;->o:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Li9/c;Lf1/r;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lc2/m1;->l:I

    .line 2
    iput-object p1, p0, Lc2/m1;->n:Lt8/e;

    iput-object p2, p0, Lc2/m1;->m:Lf1/r;

    iput p3, p0, Lc2/m1;->o:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lc2/m1;->l:I

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    packed-switch v0, :pswitch_data_0

    iget-object p2, p0, Lc2/m1;->n:Lt8/e;

    check-cast p2, Li9/c;

    iget v0, p0, Lc2/m1;->o:I

    or-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lr0/r;->H(I)I

    move-result v0

    iget-object p0, p0, Lc2/m1;->m:Lf1/r;

    invoke-static {v0, p0, p2, p1}, Le3/l;->a(ILf1/r;Li9/c;Lr0/q;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object p2, p0, Lc2/m1;->n:Lt8/e;

    check-cast p2, Li9/e;

    iget v0, p0, Lc2/m1;->o:I

    or-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lr0/r;->H(I)I

    move-result v0

    iget-object p0, p0, Lc2/m1;->m:Lf1/r;

    invoke-static {p0, p2, p1, v0}, Lg5/f;->d(Lf1/r;Li9/e;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    iget-object p2, p0, Lc2/m1;->n:Lt8/e;

    check-cast p2, Li9/e;

    iget v0, p0, Lc2/m1;->o:I

    or-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lr0/r;->H(I)I

    move-result v0

    iget-object p0, p0, Lc2/m1;->m:Lf1/r;

    invoke-static {p0, p2, p1, v0}, Lc2/x;->b(Lf1/r;Li9/e;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
