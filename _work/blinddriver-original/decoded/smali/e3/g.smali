.class public final Le3/g;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:I

.field public final synthetic m:Z

.field public final synthetic n:Le3/k;

.field public final synthetic o:J


# direct methods
.method public constructor <init>(ZLe3/k;JLy8/c;)V
    .locals 0

    iput-boolean p1, p0, Le3/g;->m:Z

    iput-object p2, p0, Le3/g;->n:Le3/k;

    iput-wide p3, p0, Le3/g;->o:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 6

    new-instance v0, Le3/g;

    iget-object v2, p0, Le3/g;->n:Le3/k;

    iget-wide v3, p0, Le3/g;->o:J

    iget-boolean v1, p0, Le3/g;->m:Z

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le3/g;-><init>(ZLe3/k;JLy8/c;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Le3/g;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Le3/g;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Le3/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Le3/g;->l:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-boolean p1, p0, Le3/g;->m:Z

    iget-object v1, p0, Le3/g;->n:Le3/k;

    if-nez p1, :cond_4

    iget-object v4, v1, Le3/k;->l:Lx1/d;

    iput v3, p0, Le3/g;->l:I

    const-wide/16 v5, 0x0

    iget-wide v7, p0, Le3/g;->o:J

    move-object v9, p0

    invoke-virtual/range {v4 .. v9}, Lx1/d;->a(JJLa9/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Lb3/q;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_4
    move-object v6, p0

    iget-object v1, v1, Le3/k;->l:Lx1/d;

    iput v2, v6, Le3/g;->l:I

    iget-wide v2, v6, Le3/g;->o:J

    const-wide/16 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lx1/d;->a(JJLa9/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    :goto_1
    return-object v0

    :cond_5
    :goto_2
    check-cast p1, Lb3/q;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
