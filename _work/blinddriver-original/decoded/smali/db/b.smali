.class public final Ldb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final p:[I


# instance fields
.field public l:Z

.field public m:I

.field public n:[Ldb/c;

.field public o:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ldb/b;->p:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method


# virtual methods
.method public final a(I)Ldb/c;
    .locals 1

    iget-object v0, p0, Ldb/b;->o:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Ldb/b;->n:[Ldb/c;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final b(I)J
    .locals 1

    iget-object v0, p0, Ldb/b;->o:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Ldb/b;->n:[Ldb/c;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ldb/c;->b()J

    move-result-wide p0

    return-wide p0
.end method

.method public final c(Leb/d;)J
    .locals 0

    iget-boolean p0, p0, Ldb/b;->l:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Leb/d;->e()J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p1}, Leb/d;->k()J

    move-result-wide p0

    return-wide p0
.end method

.method public final d(Leb/d;)I
    .locals 0

    iget-boolean p0, p0, Ldb/b;->l:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Leb/d;->readUnsignedShort()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Leb/d;->m()I

    move-result p0

    return p0
.end method
