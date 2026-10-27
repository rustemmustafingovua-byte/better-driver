.class public final Lod/c5;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:I

.field public final synthetic m:Ljava/io/File;

.field public final synthetic n:J

.field public final synthetic o:I

.field public final synthetic p:Ljava/io/File;

.field public final synthetic q:Lr0/u0;

.field public final synthetic r:Lr0/u0;


# direct methods
.method public constructor <init>(Ljava/io/File;JILjava/io/File;Lr0/u0;Lr0/u0;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lod/c5;->m:Ljava/io/File;

    iput-wide p2, p0, Lod/c5;->n:J

    iput p4, p0, Lod/c5;->o:I

    iput-object p5, p0, Lod/c5;->p:Ljava/io/File;

    iput-object p6, p0, Lod/c5;->q:Lr0/u0;

    iput-object p7, p0, Lod/c5;->r:Lr0/u0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 9

    new-instance v0, Lod/c5;

    iget-object v6, p0, Lod/c5;->q:Lr0/u0;

    iget-object v7, p0, Lod/c5;->r:Lr0/u0;

    iget-object v1, p0, Lod/c5;->m:Ljava/io/File;

    iget-wide v2, p0, Lod/c5;->n:J

    iget v4, p0, Lod/c5;->o:I

    iget-object v5, p0, Lod/c5;->p:Ljava/io/File;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lod/c5;-><init>(Ljava/io/File;JILjava/io/File;Lr0/u0;Lr0/u0;Ly8/c;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lod/c5;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/c5;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/c5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lod/c5;->l:I

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

    sget-object p1, Lu9/e0;->a:Lba/e;

    sget-object p1, Lba/d;->n:Lba/d;

    new-instance v3, Lod/b5;

    iget-object v8, p0, Lod/c5;->p:Ljava/io/File;

    const/4 v9, 0x0

    iget-object v4, p0, Lod/c5;->m:Ljava/io/File;

    iget-wide v5, p0, Lod/c5;->n:J

    iget v7, p0, Lod/c5;->o:I

    invoke-direct/range {v3 .. v9}, Lod/b5;-><init>(Ljava/io/File;JILjava/io/File;Ly8/c;)V

    iput v2, p0, Lod/c5;->l:I

    invoke-static {p1, v3, p0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lt8/j;

    iget-object v0, p1, Lt8/j;->l:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object p1, p1, Lt8/j;->m:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    sget-object p1, Led/i;->a:Lr9/i;

    iget-object p1, p0, Lod/c5;->m:Ljava/io/File;

    invoke-static {p1}, Led/i;->b(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    iget-object v3, p0, Lod/c5;->q:Lr0/u0;

    invoke-interface {v3, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lod/m;->K(J)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0412\u0438\u0434\u0430\u043b\u0435\u043d\u043e \u0444\u0430\u0439\u043b\u0456\u0432: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", \u0437\u0432\u0456\u043b\u044c\u043d\u0435\u043d\u043e "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lod/c5;->r:Lr0/u0;

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
