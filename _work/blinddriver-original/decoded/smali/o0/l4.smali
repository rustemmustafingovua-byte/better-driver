.class public final Lo0/l4;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public synthetic l:J

.field public final synthetic m:Lo0/o4;


# direct methods
.method public constructor <init>(Lo0/o4;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lo0/l4;->m:Lo0/o4;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lr/p1;

    check-cast p2, Ll1/b;

    iget-wide p1, p2, Ll1/b;->a:J

    check-cast p3, Ly8/c;

    new-instance v0, Lo0/l4;

    iget-object p0, p0, Lo0/l4;->m:Lo0/o4;

    invoke-direct {v0, p0, p3}, Lo0/l4;-><init>(Lo0/o4;Ly8/c;)V

    iput-wide p1, v0, Lo0/l4;->l:J

    sget-object p0, Lt8/z;->a:Lt8/z;

    invoke-virtual {v0, p0}, Lo0/l4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-wide v0, p0, Lo0/l4;->l:J

    iget-object p0, p0, Lo0/l4;->m:Lo0/o4;

    iget-object p1, p0, Lo0/o4;->m:Lr/m1;

    sget-object v2, Lr/m1;->l:Lr/m1;

    if-ne p1, v2, :cond_0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lo0/o4;->j:Z

    const/16 v2, 0x20

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo0/o4;->h:Lr0/b1;

    invoke-virtual {p1}, Lr0/b1;->g()I

    move-result p1

    int-to-float p1, p1

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_1
    shr-long/2addr v0, v2

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    :goto_0
    iget-object v0, p0, Lo0/o4;->p:Lr0/a1;

    invoke-virtual {v0}, Lr0/a1;->g()F

    move-result v0

    sub-float/2addr p1, v0

    iget-object p0, p0, Lo0/o4;->q:Lr0/a1;

    invoke-virtual {p0, p1}, Lr0/a1;->h(F)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
