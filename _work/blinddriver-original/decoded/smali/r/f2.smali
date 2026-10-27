.class public final Lr/f2;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:I

.field public final synthetic m:Lr/g2;

.field public final synthetic n:F

.field public final synthetic o:F


# direct methods
.method public constructor <init>(Lr/g2;FFLy8/c;)V
    .locals 0

    iput-object p1, p0, Lr/f2;->m:Lr/g2;

    iput p2, p0, Lr/f2;->n:F

    iput p3, p0, Lr/f2;->o:F

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    new-instance p1, Lr/f2;

    iget v0, p0, Lr/f2;->n:F

    iget v1, p0, Lr/f2;->o:F

    iget-object p0, p0, Lr/f2;->m:Lr/g2;

    invoke-direct {p1, p0, v0, v1, p2}, Lr/f2;-><init>(Lr/g2;FFLy8/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lr/f2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/f2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/f2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lr/f2;->l:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lr/f2;->m:Lr/g2;

    iget-object p1, p1, Lr/g2;->Y:Lr/n2;

    iget v1, p0, Lr/f2;->n:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v3, v1

    iget v1, p0, Lr/f2;->o:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v5, v1

    const/16 v1, 0x20

    shl-long/2addr v3, v1

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    iput v2, p0, Lr/f2;->l:I

    invoke-static {p1, v3, v4, p0}, Lr/z1;->a(Lr/n2;JLa9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
