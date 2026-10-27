.class public final Lr5/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final p:Lr5/a0;


# instance fields
.field public final l:Lr5/z;

.field public final m:Lr5/z;

.field public final n:Ljava/lang/Class;

.field public final o:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lr5/a0;

    sget-object v1, Lr5/z;->p:Lr5/z;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v2}, Lr5/a0;-><init>(Lr5/z;Lr5/z;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lr5/a0;->p:Lr5/a0;

    return-void
.end method

.method public constructor <init>(Lr5/z;Lr5/z;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lr5/z;->p:Lr5/z;

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lr5/a0;->l:Lr5/z;

    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    iput-object p2, p0, Lr5/a0;->m:Lr5/z;

    const/4 p1, 0x0

    const-class p2, Ljava/lang/Void;

    if-ne p3, p2, :cond_2

    move-object p3, p1

    :cond_2
    iput-object p3, p0, Lr5/a0;->n:Ljava/lang/Class;

    if-ne p4, p2, :cond_3

    move-object p4, p1

    :cond_3
    iput-object p4, p0, Lr5/a0;->o:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Lr5/a0;)Lr5/a0;
    .locals 10

    if-eqz p1, :cond_8

    sget-object v0, Lr5/a0;->p:Lr5/a0;

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p1, Lr5/a0;->l:Lr5/z;

    iget-object v1, p1, Lr5/a0;->m:Lr5/z;

    iget-object v2, p1, Lr5/a0;->n:Ljava/lang/Class;

    iget-object p1, p1, Lr5/a0;->o:Ljava/lang/Class;

    sget-object v3, Lr5/z;->p:Lr5/z;

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lr5/a0;->l:Lr5/z;

    if-eq v0, v6, :cond_1

    if-eq v0, v3, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    move v7, v4

    :goto_0
    iget-object v8, p0, Lr5/a0;->m:Lr5/z;

    if-eq v1, v8, :cond_2

    if-eq v1, v3, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    iget-object v9, p0, Lr5/a0;->n:Ljava/lang/Class;

    if-ne v2, v9, :cond_3

    if-eq p1, v9, :cond_4

    :cond_3
    move v4, v5

    :cond_4
    if-eqz v7, :cond_6

    if-eqz v3, :cond_5

    new-instance p0, Lr5/a0;

    invoke-direct {p0, v0, v1, v2, p1}, Lr5/a0;-><init>(Lr5/z;Lr5/z;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0

    :cond_5
    new-instance p0, Lr5/a0;

    invoke-direct {p0, v0, v8, v2, p1}, Lr5/a0;-><init>(Lr5/z;Lr5/z;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0

    :cond_6
    if-eqz v3, :cond_7

    new-instance p0, Lr5/a0;

    invoke-direct {p0, v6, v1, v2, p1}, Lr5/a0;-><init>(Lr5/z;Lr5/z;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0

    :cond_7
    if-eqz v4, :cond_8

    new-instance p0, Lr5/a0;

    invoke-direct {p0, v6, v8, v2, p1}, Lr5/a0;-><init>(Lr5/z;Lr5/z;Ljava/lang/Class;Ljava/lang/Class;)V

    :cond_8
    :goto_2
    return-object p0
.end method

.method public final b(Lr5/z;)Lr5/a0;
    .locals 3

    iget-object v0, p0, Lr5/a0;->l:Lr5/z;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lr5/a0;

    iget-object v1, p0, Lr5/a0;->n:Ljava/lang/Class;

    iget-object v2, p0, Lr5/a0;->o:Ljava/lang/Class;

    iget-object p0, p0, Lr5/a0;->m:Lr5/z;

    invoke-direct {v0, p1, p0, v1, v2}, Lr5/a0;-><init>(Lr5/z;Lr5/z;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lr5/a0;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lr5/a0;

    iget-object v2, p1, Lr5/a0;->l:Lr5/z;

    iget-object v3, p0, Lr5/a0;->l:Lr5/z;

    if-ne v2, v3, :cond_3

    iget-object v2, p1, Lr5/a0;->m:Lr5/z;

    iget-object v3, p0, Lr5/a0;->m:Lr5/z;

    if-ne v2, v3, :cond_3

    iget-object v2, p1, Lr5/a0;->n:Ljava/lang/Class;

    iget-object v3, p0, Lr5/a0;->n:Ljava/lang/Class;

    if-ne v2, v3, :cond_3

    iget-object p1, p1, Lr5/a0;->o:Ljava/lang/Class;

    iget-object p0, p0, Lr5/a0;->o:Ljava/lang/Class;

    if-ne p1, p0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lr5/a0;->l:Lr5/z;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lr5/a0;->m:Lr5/z;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "JsonInclude.Value(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr5/a0;->l:Lr5/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr5/a0;->m:Lr5/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".class"

    iget-object v2, p0, Lr5/a0;->n:Ljava/lang/Class;

    if-eqz v2, :cond_0

    const-string v3, ",valueFilter="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p0, p0, Lr5/a0;->o:Ljava/lang/Class;

    if-eqz p0, :cond_1

    const-string v2, ",contentFilter="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
