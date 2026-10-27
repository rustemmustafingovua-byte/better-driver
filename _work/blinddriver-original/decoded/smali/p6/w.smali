.class public final Lp6/w;
.super Lp6/z;
.source "SourceFile"


# instance fields
.field public final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp6/w;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public final c()Ls5/n;
    .locals 0

    sget-object p0, Ls5/n;->z:Ls5/n;

    return-object p0
.end method

.method public final d(Ls5/g;Lb6/r0;)V
    .locals 1

    iget-object p0, p0, Lp6/w;->l:Ljava/lang/Object;

    if-nez p0, :cond_0

    invoke-virtual {p2, p1}, Lb6/r0;->U(Ls5/g;)V

    return-void

    :cond_0
    instance-of v0, p0, Lb6/s;

    if-eqz v0, :cond_1

    check-cast p0, Lb6/s;

    invoke-interface {p0, p1, p2}, Lb6/s;->d(Ls5/g;Lb6/r0;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lb6/r0;->b0(Ljava/lang/Class;)Lb6/u;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lp6/w;

    if-eqz v2, :cond_4

    check-cast p1, Lp6/w;

    iget-object p1, p1, Lp6/w;->l:Ljava/lang/Object;

    iget-object p0, p0, Lp6/w;->l:Ljava/lang/Object;

    if-nez p0, :cond_3

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lp6/w;->l:Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final j()Z
    .locals 1

    iget-object p0, p0, Lp6/w;->l:Ljava/lang/Object;

    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final l()D
    .locals 2

    iget-object p0, p0, Lp6/w;->l:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final n()I
    .locals 1

    iget-object p0, p0, Lp6/w;->l:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final p()J
    .locals 2

    iget-object p0, p0, Lp6/w;->l:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final q()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lp6/w;->l:Ljava/lang/Object;

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final s()[B
    .locals 1

    iget-object p0, p0, Lp6/w;->l:Ljava/lang/Object;

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    check-cast p0, [B

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
