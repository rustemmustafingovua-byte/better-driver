.class public final Lmb/d1;
.super Lmb/h1;
.source "SourceFile"


# instance fields
.field public final f:Lmb/y4;

.field public final g:Ljava/lang/String;

.field public final h:Lmb/y4;


# direct methods
.method public constructor <init>(Lhb/c;Lmb/y4;Ljava/lang/String;Lmb/y4;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/y4;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/d1;->f:Lmb/y4;

    iput-object p3, p0, Lmb/d1;->g:Ljava/lang/String;

    iput-object p4, p0, Lmb/d1;->h:Lmb/y4;

    return-void
.end method


# virtual methods
.method public final E(Lmb/p7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/p7;->M(Lmb/d1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final F()Lf8/j5;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    :goto_0
    iget-object v2, v1, Lmb/d1;->h:Lmb/y4;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lmb/d1;->f:Lmb/y4;

    instance-of v2, v1, Lmb/d1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lmb/d1;

    iget-object v3, v2, Lmb/d1;->g:Ljava/lang/String;

    iget-object v4, p0, Lmb/d1;->g:Ljava/lang/String;

    if-ne v3, v4, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lf8/j5;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lf8/j5;-><init>(Ljava/util/ListIterator;)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmb/d1;->f:Lmb/y4;

    invoke-virtual {v1}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmb/d1;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmb/d1;->h:Lmb/y4;

    invoke-virtual {p0}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
