.class public final Lr/r1;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:I

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:F

.field public final synthetic o:Ln/j;

.field public final synthetic p:Lj9/w;


# direct methods
.method public constructor <init>(FLn/j;Lj9/w;Ly8/c;)V
    .locals 0

    iput p1, p0, Lr/r1;->n:F

    iput-object p2, p0, Lr/r1;->o:Ln/j;

    iput-object p3, p0, Lr/r1;->p:Lj9/w;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 3

    new-instance v0, Lr/r1;

    iget-object v1, p0, Lr/r1;->o:Ln/j;

    iget-object v2, p0, Lr/r1;->p:Lj9/w;

    iget p0, p0, Lr/r1;->n:F

    invoke-direct {v0, p0, v1, v2, p2}, Lr/r1;-><init>(FLn/j;Lj9/w;Ly8/c;)V

    iput-object p1, v0, Lr/r1;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lr/s1;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lr/r1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/r1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/r1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lr/r1;->l:I

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

    iget-object p1, p0, Lr/r1;->m:Ljava/lang/Object;

    check-cast p1, Lr/s1;

    new-instance v1, Lg0/k;

    const/16 v3, 0x16

    iget-object v4, p0, Lr/r1;->p:Lj9/w;

    invoke-direct {v1, v3, v4, p1}, Lg0/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput v2, p0, Lr/r1;->l:I

    iget p1, p0, Lr/r1;->n:F

    iget-object v2, p0, Lr/r1;->o:Ln/j;

    const/4 v3, 0x4

    invoke-static {p1, v2, v1, p0, v3}, Ln/d;->d(FLn/j;Li9/e;La9/i;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
