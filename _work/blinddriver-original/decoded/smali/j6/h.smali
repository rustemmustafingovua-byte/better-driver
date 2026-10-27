.class public abstract Lj6/h;
.super Lj6/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final transient l:Lj6/k0;

.field public final transient m:Lb0/l1;


# direct methods
.method public constructor <init>(Lj6/k0;Lb0/l1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj6/h;->l:Lj6/k0;

    iput-object p2, p0, Lj6/h;->m:Lb0/l1;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 0

    iget-object p0, p0, Lj6/h;->m:Lb0/l1;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lb0/l1;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method public final i([Ljava/lang/Class;)Z
    .locals 0

    iget-object p0, p0, Lj6/h;->m:Lb0/l1;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lb0/l1;->j([Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public final j(Z)V
    .locals 0

    invoke-virtual {p0}, Lj6/h;->m()Ljava/lang/reflect/Member;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lu6/h;->e(Ljava/lang/reflect/Member;Z)V

    :cond_0
    return-void
.end method

.method public abstract k()Ljava/lang/Class;
.end method

.method public l()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lj6/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract m()Ljava/lang/reflect/Member;
.end method

.method public abstract n(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final o(Ljava/lang/Class;)Z
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lj6/h;->m:Lb0/l1;

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public abstract p(Lb0/l1;)Lj6/a;
.end method
