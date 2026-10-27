.class public final Lq6/a;
.super Lq6/c;
.source "SourceFile"


# instance fields
.field public final D:Lb6/e;

.field public final E:Lj6/h;

.field public F:Lb6/u;

.field public G:Ls6/n;


# direct methods
.method public constructor <init>(Lq6/c;Lb6/e;Lj6/h;Lb6/u;)V
    .locals 0

    invoke-direct {p0, p1}, Lq6/c;-><init>(Lq6/c;)V

    iput-object p3, p0, Lq6/a;->E:Lj6/h;

    iput-object p2, p0, Lq6/a;->D:Lb6/e;

    iput-object p4, p0, Lq6/a;->F:Lb6/u;

    instance-of p1, p4, Ls6/n;

    if-eqz p1, :cond_0

    check-cast p4, Ls6/n;

    iput-object p4, p0, Lq6/a;->G:Ls6/n;

    :cond_0
    return-void
.end method


# virtual methods
.method public final l(Lb6/p0;)V
    .locals 1

    sget-object v0, Lb6/x;->B:Lb6/x;

    invoke-virtual {p1, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result p1

    iget-object p0, p0, Lq6/a;->E:Lj6/h;

    invoke-virtual {p0, p1}, Lj6/h;->j(Z)V

    return-void
.end method

.method public final o(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 2

    iget-object v0, p0, Lq6/a;->E:Lj6/h;

    invoke-virtual {v0, p1}, Lj6/h;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lq6/a;->G:Ls6/n;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p1, p2, p3}, Ls6/n;->m(Ljava/util/Map;Ls5/g;Lb6/r0;)V

    return-void

    :cond_1
    iget-object p0, p0, Lq6/a;->F:Lb6/u;

    invoke-virtual {p0, p1, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :cond_2
    iget-object p0, p0, Lq6/a;->D:Lb6/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lj6/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Value returned by \'any-getter\' "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "() not java.util.Map but "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lb6/r0;->G(Ljava/lang/String;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method
