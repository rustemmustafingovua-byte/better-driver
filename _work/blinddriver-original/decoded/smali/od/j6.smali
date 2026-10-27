.class public final synthetic Lod/j6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:D

.field public final synthetic m:D

.field public final synthetic n:Li9/c;

.field public final synthetic o:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(DDLi9/c;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lod/j6;->l:D

    iput-wide p3, p0, Lod/j6;->m:D

    iput-object p5, p0, Lod/j6;->n:Li9/c;

    iput-object p6, p0, Lod/j6;->o:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Ljava/lang/String;

    const-string v0, "t"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x2c

    const/16 v4, 0x2e

    if-ge v2, v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_0

    if-eq v5, v4, :cond_0

    if-ne v5, v3, :cond_1

    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    invoke-static {v0, p1}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lod/j6;->o:Lr0/u0;

    invoke-interface {v0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v3, v4}, Lr9/r;->P(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lod/j6;->l:D

    cmpg-double v2, v2, v0

    if-gtz v2, :cond_3

    iget-wide v2, p0, Lod/j6;->m:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3

    iget-object p0, p0, Lod/j6;->n:Li9/c;

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
