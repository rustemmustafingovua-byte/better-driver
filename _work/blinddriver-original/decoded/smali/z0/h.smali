.class public final Lz0/h;
.super Lw0/b;
.source "SourceFile"

# interfaces
.implements Lr0/j1;


# static fields
.field public static final o:Lz0/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lz0/h;

    sget-object v1, Lw0/j;->e:Lw0/j;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw0/b;-><init>(Lw0/j;I)V

    sput-object v0, Lz0/h;->o:Lz0/h;

    return-void
.end method


# virtual methods
.method public final a()Lw0/d;
    .locals 1

    new-instance v0, Lz0/g;

    invoke-direct {v0, p0}, Lw0/d;-><init>(Lw0/b;)V

    iput-object p0, v0, Lz0/g;->r:Lz0/h;

    return-object v0
.end method

.method public final builder()Lu0/c;
    .locals 1

    new-instance v0, Lz0/g;

    invoke-direct {v0, p0}, Lw0/d;-><init>(Lw0/b;)V

    iput-object p0, v0, Lz0/g;->r:Lz0/h;

    return-object v0
.end method

.method public final c(Lr0/m1;Lr0/u2;)Lz0/h;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lw0/b;->l:Lw0/j;

    invoke-virtual {v2, v0, v1, p1, p2}, Lw0/j;->u(IILjava/lang/Object;Ljava/lang/Object;)Lf7/c0;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p2, Lz0/h;

    iget-object v0, p1, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v0, Lw0/j;

    iget p0, p0, Lw0/b;->m:I

    iget p1, p1, Lf7/c0;->b:I

    add-int/2addr p0, p1

    invoke-direct {p2, v0, p0}, Lw0/b;-><init>(Lw0/j;I)V

    return-object p2
.end method

.method public final bridge containsKey(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lr0/m1;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lr0/m1;

    invoke-super {p0, p1}, Lw0/b;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge containsValue(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lr0/u2;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lr0/u2;

    invoke-super {p0, p1}, Lu8/f;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Lr0/m1;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p1, Lr0/m1;

    invoke-super {p0, p1}, Lw0/b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/u2;

    return-object p0
.end method

.method public final bridge getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Lr0/m1;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    check-cast p1, Lr0/m1;

    check-cast p2, Lr0/u2;

    invoke-super {p0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/u2;

    return-object p0
.end method
