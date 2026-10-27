.class public Lj9/l;
.super Lj9/d;
.source "SourceFile"

# interfaces
.implements Lj9/k;
.implements Lp9/a;
.implements Lt8/e;


# instance fields
.field public final r:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 1
    sget-object v2, Lj9/c;->l:Lj9/c;

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lj9/l;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    const/4 p7, 0x1

    and-int/2addr p6, p7

    if-ne p6, p7, :cond_0

    :goto_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p7

    goto :goto_1

    :cond_0
    const/4 p7, 0x0

    goto :goto_0

    .line 2
    :goto_1
    invoke-direct/range {v0 .. v5}, Lj9/d;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    iput p1, v0, Lj9/l;->r:I

    return-void
.end method


# virtual methods
.method public final d()Lp9/a;
    .locals 1

    sget-object v0, Lj9/z;->a:Lj9/a0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lj9/l;

    if-eqz v0, :cond_1

    check-cast p1, Lj9/l;

    iget-object v0, p0, Lj9/d;->o:Ljava/lang/String;

    iget-object v1, p1, Lj9/d;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lj9/d;->p:Ljava/lang/String;

    iget-object v1, p1, Lj9/d;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lj9/d;->m:Ljava/lang/Object;

    iget-object v1, p1, Lj9/d;->m:Ljava/lang/Object;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lj9/d;->f()Lj9/e;

    move-result-object p0

    invoke-virtual {p1}, Lj9/d;->f()Lj9/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    instance-of v0, p1, Lj9/l;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lj9/d;->l:Lp9/a;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lj9/l;->d()Lp9/a;

    iput-object p0, p0, Lj9/d;->l:Lp9/a;

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final getArity()I
    .locals 0

    iget p0, p0, Lj9/l;->r:I

    return p0
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Lj9/d;->f()Lj9/e;

    invoke-virtual {p0}, Lj9/d;->f()Lj9/e;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lj9/d;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lj9/d;->p:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lj9/d;->l:Lp9/a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj9/l;->d()Lp9/a;

    iput-object p0, p0, Lj9/d;->l:Lp9/a;

    move-object v0, p0

    :cond_0
    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "<init>"

    iget-object p0, p0, Lj9/d;->o:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "constructor (Kotlin reflection is not available)"

    return-object p0

    :cond_2
    const-string v0, "function "

    const-string v1, " (Kotlin reflection is not available)"

    invoke-static {v0, p0, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
