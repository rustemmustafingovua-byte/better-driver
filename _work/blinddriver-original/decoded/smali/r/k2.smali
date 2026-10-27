.class public final Lr/k2;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:Lr/n2;

.field public m:Lj9/x;

.field public n:J

.field public o:I

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Lr/n2;

.field public final synthetic r:Lj9/x;

.field public final synthetic s:J


# direct methods
.method public constructor <init>(Lr/n2;Lj9/x;JLy8/c;)V
    .locals 0

    iput-object p1, p0, Lr/k2;->q:Lr/n2;

    iput-object p2, p0, Lr/k2;->r:Lj9/x;

    iput-wide p3, p0, Lr/k2;->s:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 6

    new-instance v0, Lr/k2;

    iget-object v2, p0, Lr/k2;->r:Lj9/x;

    iget-wide v3, p0, Lr/k2;->s:J

    iget-object v1, p0, Lr/k2;->q:Lr/n2;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lr/k2;-><init>(Lr/n2;Lj9/x;JLy8/c;)V

    iput-object p1, v0, Lr/k2;->p:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lr/l2;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lr/k2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/k2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/k2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lr/k2;->o:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-wide v0, p0, Lr/k2;->n:J

    iget-object v3, p0, Lr/k2;->m:Lj9/x;

    iget-object v4, p0, Lr/k2;->l:Lr/n2;

    iget-object p0, p0, Lr/k2;->p:Ljava/lang/Object;

    check-cast p0, Lr/n2;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lr/k2;->p:Ljava/lang/Object;

    check-cast p1, Lr/l2;

    new-instance v1, Lr/j2;

    iget-object v4, p0, Lr/k2;->q:Lr/n2;

    invoke-direct {v1, v4, p1}, Lr/j2;-><init>(Lr/n2;Lr/l2;)V

    iget-object p1, v4, Lr/n2;->c:Lr/k;

    iget-object v3, p0, Lr/k2;->r:Lj9/x;

    iget-wide v5, v3, Lj9/x;->l:J

    iget-object v7, v4, Lr/n2;->d:Lr/m1;

    sget-object v8, Lr/m1;->m:Lr/m1;

    iget-wide v9, p0, Lr/k2;->s:J

    if-ne v7, v8, :cond_2

    invoke-static {v9, v10}, Lb3/q;->b(J)F

    move-result v7

    goto :goto_0

    :cond_2
    invoke-static {v9, v10}, Lb3/q;->c(J)F

    move-result v7

    :goto_0
    invoke-virtual {v4, v7}, Lr/n2;->d(F)F

    move-result v7

    iput-object v4, p0, Lr/k2;->p:Ljava/lang/Object;

    iput-object v4, p0, Lr/k2;->l:Lr/n2;

    iput-object v3, p0, Lr/k2;->m:Lj9/x;

    iput-wide v5, p0, Lr/k2;->n:J

    iput v2, p0, Lr/k2;->o:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, p1, Lr/k;->b:Lr/v1;

    new-instance v9, Lr/j;

    const/4 v10, 0x0

    invoke-direct {v9, v7, p1, v1, v10}, Lr/j;-><init>(FLr/k;Lr/j2;Ly8/c;)V

    invoke-static {v8, v9, p0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object p0, v4

    move-wide v0, v5

    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lr/n2;->d(F)F

    move-result p0

    iget-object p1, v4, Lr/n2;->d:Lr/m1;

    sget-object v4, Lr/m1;->m:Lr/m1;

    const/4 v5, 0x0

    if-ne p1, v4, :cond_4

    const/4 p1, 0x2

    invoke-static {v0, v1, p0, v5, p1}, Lb3/q;->a(JFFI)J

    move-result-wide p0

    goto :goto_2

    :cond_4
    invoke-static {v0, v1, v5, p0, v2}, Lb3/q;->a(JFFI)J

    move-result-wide p0

    :goto_2
    iput-wide p0, v3, Lj9/x;->l:J

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
