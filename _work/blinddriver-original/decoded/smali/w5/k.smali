.class public final Lw5/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls5/q;
.implements Ljava/io/Serializable;


# static fields
.field public static final p:Lw5/f;


# instance fields
.field public final l:Ljava/lang/String;

.field public volatile m:[B

.field public volatile n:[B

.field public volatile o:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lw5/f;->c:Lw5/f;

    sput-object v0, Lw5/k;->p:Lw5/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null String illegal for SerializedString"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lw5/k;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(I[B)I
    .locals 3

    iget-object v0, p0, Lw5/k;->m:[B

    if-nez v0, :cond_0

    sget-object v0, Lw5/k;->p:Lw5/f;

    iget-object v1, p0, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lw5/f;->e(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lw5/k;->m:[B

    :cond_0
    array-length p0, v0

    add-int v1, p1, p0

    array-length v2, p2

    if-le v1, v2, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p0
.end method

.method public final b()[C
    .locals 2

    iget-object v0, p0, Lw5/k;->o:[C

    if-nez v0, :cond_0

    sget-object v0, Lw5/k;->p:Lw5/f;

    iget-object v1, p0, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lw5/f;->d(Ljava/lang/String;)[C

    move-result-object v0

    iput-object v0, p0, Lw5/k;->o:[C

    :cond_0
    return-object v0
.end method

.method public final c()[B
    .locals 2

    iget-object v0, p0, Lw5/k;->m:[B

    if-nez v0, :cond_0

    sget-object v0, Lw5/k;->p:Lw5/f;

    iget-object v1, p0, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lw5/f;->e(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lw5/k;->m:[B

    :cond_0
    return-object v0
.end method

.method public final d()[B
    .locals 2

    iget-object v0, p0, Lw5/k;->n:[B

    if-nez v0, :cond_0

    sget-object v0, Lw5/k;->p:Lw5/f;

    iget-object v1, p0, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lw5/f;->c(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lw5/k;->n:[B

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lw5/k;

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lw5/k;

    iget-object p0, p0, Lw5/k;->l:Ljava/lang/String;

    iget-object p1, p1, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lw5/k;->l:Ljava/lang/String;

    return-object p0
.end method
