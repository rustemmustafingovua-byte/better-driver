.class public abstract Lmb/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb/v5;


# instance fields
.field public final a:Lhb/c;

.field public final b:[Lmb/x3;

.field public final c:[Lmb/w5;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;

.field public f:Lmb/a5;

.field public g:Lmb/x6;

.field public h:I


# direct methods
.method public constructor <init>(Lhb/c;[Lmb/x3;[Lmb/w5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmb/m0;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmb/m0;->e:Ljava/util/ArrayList;

    iput-object p1, p0, Lmb/m0;->a:Lhb/c;

    iput-object p2, p0, Lmb/m0;->b:[Lmb/x3;

    iput-object p3, p0, Lmb/m0;->c:[Lmb/w5;

    return-void
.end method


# virtual methods
.method public final a(Lmb/a5;)V
    .locals 7

    iget-object v0, p0, Lmb/m0;->f:Lmb/a5;

    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lhb/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Enclosing scope is already set for type declaration \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmb/m0;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmb/m0;->a:Lhb/c;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lmb/m0;->f:Lmb/a5;

    iget-object v0, p0, Lmb/m0;->b:[Lmb/x3;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    instance-of v5, v4, Lmb/r0;

    if-eqz v5, :cond_2

    check-cast v4, Lmb/r0;

    invoke-interface {v4, p1}, Lmb/r0;->a(Lmb/a5;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lmb/m0;->c:[Lmb/w5;

    if-eqz p0, :cond_5

    array-length v0, p0

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_5

    aget-object v3, p0, v1

    iget-object v3, v3, Lmb/w5;->b:[Lmb/v4;

    if-eqz v3, :cond_4

    array-length v4, v3

    move v5, v2

    :goto_3
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    invoke-virtual {v6, p1}, Lmb/v4;->a(Lmb/a5;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final b()Lmb/a5;
    .locals 0

    iget-object p0, p0, Lmb/m0;->f:Lmb/a5;

    return-object p0
.end method

.method public c(Lmb/v5;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmb/m0;->a(Lmb/a5;)V

    return-void
.end method

.method public getAnnotations()[Lmb/r0;
    .locals 0

    iget-object p0, p0, Lmb/m0;->b:[Lmb/x3;

    invoke-static {p0}, La/a;->a([Lmb/x3;)[Lmb/r0;

    move-result-object p0

    return-object p0
.end method

.method public final getLocation()Lhb/c;
    .locals 0

    iget-object p0, p0, Lmb/m0;->a:Lhb/c;

    return-object p0
.end method

.method public final k(Lmb/u3;)V
    .locals 1

    iget-object v0, p0, Lmb/m0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lmb/u3;->c(Lmb/v5;)V

    return-void
.end method

.method public r(Lmb/q1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmb/m0;->a(Lmb/a5;)V

    return-void
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public final w(Lmb/t3;)V
    .locals 1

    iget-object v0, p0, Lmb/m0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p0}, Lmb/u5;->c(Lmb/v5;)V

    return-void
.end method
