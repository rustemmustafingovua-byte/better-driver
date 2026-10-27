.class public final Lo0/e3;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:I

.field public final synthetic m:Ln/c;

.field public final synthetic n:I

.field public final synthetic o:Lo0/f3;


# direct methods
.method public constructor <init>(Ln/c;ILo0/f3;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lo0/e3;->m:Ln/c;

    iput p2, p0, Lo0/e3;->n:I

    iput-object p3, p0, Lo0/e3;->o:Lo0/f3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    new-instance p1, Lo0/e3;

    iget v0, p0, Lo0/e3;->n:I

    iget-object v1, p0, Lo0/e3;->o:Lo0/f3;

    iget-object p0, p0, Lo0/e3;->m:Ln/c;

    invoke-direct {p1, p0, v0, v1, p2}, Lo0/e3;-><init>(Ln/c;ILo0/f3;Ly8/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lo0/e3;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lo0/e3;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lo0/e3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lo0/e3;->l:I

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

    move p1, v2

    new-instance v2, Ljava/lang/Integer;

    iget v1, p0, Lo0/e3;->n:I

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lo0/e3;->o:Lo0/f3;

    iget-object v3, v1, Lo0/f3;->b:Ln/r0;

    iput p1, p0, Lo0/e3;->l:I

    iget-object v1, p0, Lo0/e3;->m:Ln/c;

    const/4 v4, 0x0

    const/16 v6, 0xc

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Ln/c;->c(Ln/c;Ljava/lang/Object;Ln/j;Li9/c;Ly8/c;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
